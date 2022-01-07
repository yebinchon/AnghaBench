; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/posixshm/extr_posixshm_test.c_verify_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/posixshm/extr_posixshm_test.c_verify_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"shm_open failed in verify_object; errno=%d, path=%s\00", align 1
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"mmap(1)\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"Renamed object has incorrect value; has%d (0x%x, '%c'), expected %d (0x%x, '%c')\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"munmap failed; errno=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8)* @verify_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_object(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = call i32 (...) @getpagesize()
  store i32 %8, i32* %6, align 4
  %9 = icmp slt i32 0, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ATF_REQUIRE(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @shm_open(i8* %12, i32 %13, i32 511)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @errno, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PROT_READ, align 4
  %24 = load i32, i32* @MAP_SHARED, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @mmap(i32 0, i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** @MAP_FAILED, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %4, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isprint(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  br label %60

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ %58, %54 ], [ 32, %59 ]
  %62 = load i8, i8* %4, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* %4, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %4, align 1
  %67 = call i64 @isprint(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i8, i8* %4, align 1
  %71 = sext i8 %70 to i32
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 32, %72 ]
  %75 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %48, i32 %61, i32 %63, i32 %65, i32 %74)
  br label %76

76:                                               ; preds = %73, %32
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @munmap(i8* %77, i32 %78)
  %80 = icmp eq i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @ATF_REQUIRE_MSG(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @close(i32 %84)
  ret void
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @shm_open(i8*, i32, i32) #1

declare dso_local i32 @atf_tc_fail(i8*, ...) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i32) #1

declare dso_local i64 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
