; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/posixshm/extr_posixshm_test.c_scribble_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/posixshm/extr_posixshm_test.c_scribble_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@test_path = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"shm_unlink\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"shm_open failed; errno=%d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ftruncate failed; errno=%d\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"mmap failed; errno=%d\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"munmap failed; errno=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8)* @scribble_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scribble_object(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = call i32 (...) @getpagesize()
  store i32 %8, i32* %7, align 4
  %9 = icmp slt i32 0, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ATF_REQUIRE(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @O_CREAT, align 4
  %14 = load i32, i32* @O_EXCL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @O_RDWR, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @shm_open(i8* %12, i32 %17, i32 511)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EEXIST, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i8*, i8** @test_path, align 8
  %27 = call i64 @shm_unlink(i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i8*, i8** @test_path, align 8
  %33 = load i32, i32* @O_CREAT, align 4
  %34 = load i32, i32* @O_EXCL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @shm_open(i8* %32, i32 %37, i32 511)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %21, %2
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @errno, align 8
  %44 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @ftruncate(i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i64, i64* @errno, align 8
  %52 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PROT_READ, align 4
  %56 = load i32, i32* @PROT_WRITE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MAP_SHARED, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i8* @mmap(i32 0, i32 %54, i32 %57, i32 %58, i32 %59, i32 0)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** @MAP_FAILED, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i64, i64* @errno, align 8
  %66 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %64, %53
  %68 = load i8, i8* %4, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %68, i8* %70, align 1
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @munmap(i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* @errno, align 8
  %77 = call i32 @ATF_REQUIRE_MSG(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @shm_open(i8*, i32, i32) #1

declare dso_local i64 @shm_unlink(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*, ...) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE_MSG(i32, i8*, i64) #1

declare dso_local i64 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
