; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kern_descrip_test.c_openfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kern/extr_kern_descrip_test.c_openfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGUSR1 = common dso_local global i32 0, align 4
@handler = common dso_local global i32 0, align 4
@AFILE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@RENDEZVOUS = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"a child exited unexpectedly\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"wait: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @openfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openfiles(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i32, i32* @SIGUSR1, align 4
  %6 = load i32, i32* @handler, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = load i32, i32* @AFILE, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = call i32 @open(i32 %8, i32 %9, i32 420)
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @ATF_REQUIRE(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @close(i32 %14)
  %16 = load i32, i32* @RENDEZVOUS, align 4
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = call i32 @open(i32 %16, i32 %17, i32 420)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @ATF_REQUIRE(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @close(i32 %22)
  store i32 0, i32* @done, align 4
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %38, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PARALLEL, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = call i64 (...) @fork()
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* %2, align 8
  %33 = load i32, i32* @PARALLEL, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %32, %34
  %36 = call i32 @openfiles2(i64 %35)
  br label %37

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %24

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i32, i32* @done, align 4
  %44 = load i32, i32* @PARALLEL, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i32 @usleep(i32 1000)
  %48 = load i32, i32* @WNOHANG, align 4
  %49 = call i32 @waitpid(i32 -1, i32* null, i32 %48)
  %50 = call i32 @ATF_REQUIRE_EQ_MSG(i32 0, i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %42

51:                                               ; preds = %42
  %52 = load i32, i32* @RENDEZVOUS, align 4
  %53 = call i32 @unlink(i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %65, %51
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @PARALLEL, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = call i64 @wait(i32* null)
  %60 = icmp sgt i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i32 @ATF_CHECK_MSG(i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %54

68:                                               ; preds = %54
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @openfiles2(i64) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i32, i32, i8*) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @ATF_CHECK_MSG(i32, i8*, i32) #1

declare dso_local i64 @wait(i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
