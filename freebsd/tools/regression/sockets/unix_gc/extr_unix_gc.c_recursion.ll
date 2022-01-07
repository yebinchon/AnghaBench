; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_recursion.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_recursion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"recursion\00", align 1
@test = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EMFILE = common dso_local global i64 0, align 8
@ENFILE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"recursion: deferred before %d after %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @recursion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recursion() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** @test, align 8
  %7 = load i8*, i8** @test, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = call i32 @save_sysctls(i32* %3, i32* %4)
  %10 = call i32 (...) @getdeferred()
  store i32 %10, i32* %5, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %12 = call i32 @my_socketpair(i32* %11)
  br label %13

13:                                               ; preds = %30, %0
  %14 = load i32, i32* @PF_UNIX, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %17 = call i32 @socketpair(i32 %14, i32 %15, i32 0, i32* %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EMFILE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ENFILE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  br label %52

28:                                               ; preds = %23
  %29 = call i32 @err(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %13
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sendfd(i32 %32, i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sendfd(i32 %37, i32 %39)
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @close2(i32 %42, i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 %50, i32* %51, align 4
  br label %13

52:                                               ; preds = %27
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @close2(i32 %54, i32 %56)
  %58 = call i32 @sleep(i32 1)
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @test_sysctls(i32 %59, i32 %60)
  %62 = call i32 (...) @getdeferred()
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %52
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @save_sysctls(i32*, i32*) #1

declare dso_local i32 @getdeferred(...) #1

declare dso_local i32 @my_socketpair(i32*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sendfd(i32, i32) #1

declare dso_local i32 @close2(i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @test_sysctls(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
