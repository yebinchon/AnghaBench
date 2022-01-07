; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_unix_cmsg.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_unix_cmsg.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.test_func = type { i32 (...)*, i32 }

@uc_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SOCK_STREAM\00", align 1
@test_stream_tbl = common dso_local global %struct.test_func* null, align 8
@TEST_STREAM_TBL_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"SOCK_DGRAM\00", align 1
@test_dgram_tbl = common dso_local global %struct.test_func* null, align 8
@TEST_DGRAM_TBL_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Running tests for %s sockets:\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"  %u: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"some system error or timeout occurred\00", align 1
@failed_flag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"-- all tests passed!\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"-- %u test%s failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"-- test passed!\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"-- test failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_tests(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test_func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %15 = load %struct.test_func*, %struct.test_func** @test_stream_tbl, align 8
  store %struct.test_func* %15, %struct.test_func** %6, align 8
  %16 = load i32, i32* @TEST_STREAM_TBL_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  br label %22

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %19 = load %struct.test_func*, %struct.test_func** @test_dgram_tbl, align 8
  store %struct.test_func* %19, %struct.test_func** %6, align 8
  %20 = load i32, i32* @TEST_DGRAM_TBL_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %8, align 4
  br label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %31 = call i32 (i8*, ...) @uc_output(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  store i32 0, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.test_func*, %struct.test_func** %6, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds %struct.test_func, %struct.test_func* %34, i64 %35
  store %struct.test_func* %36, %struct.test_func** %6, align 8
  br label %37

37:                                               ; preds = %57, %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.test_func*, %struct.test_func** %6, align 8
  %44 = getelementptr inbounds %struct.test_func, %struct.test_func* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, ...) @uc_output(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.test_func*, %struct.test_func** %6, align 8
  %48 = getelementptr inbounds %struct.test_func, %struct.test_func* %47, i32 0, i32 0
  %49 = load i32 (...)*, i32 (...)** %48, align 8
  %50 = call i32 (...) %49()
  switch i32 %50, label %56 [
    i32 -1, label %51
    i32 -2, label %54
  ]

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %56

54:                                               ; preds = %41
  %55 = call i32 @uc_logmsgx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %92

56:                                               ; preds = %41, %51
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.test_func*, %struct.test_func** %6, align 8
  %59 = getelementptr inbounds %struct.test_func, %struct.test_func* %58, i32 1
  store %struct.test_func* %59, %struct.test_func** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* @failed_flag, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @uc_output(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %82

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)
  %81 = call i32 (i8*, ...) @uc_output(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %76, i8* %80)
  br label %82

82:                                               ; preds = %75, %73
  br label %91

83:                                               ; preds = %66
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @uc_output(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %90

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @uc_output(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %82
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %54
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @uc_output(i8*, ...) #1

declare dso_local i32 @uc_logmsgx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
