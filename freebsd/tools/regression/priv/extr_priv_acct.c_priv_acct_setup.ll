; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_acct.c_priv_acct_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_acct.c_priv_acct_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64 }

@SYSCTL_NAME = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"priv_acct_setup: sysctlbyname(%s)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"sysctlbyname(%s) indicates accounting configured\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"priv_acct_setup: fpath1\00", align 1
@fpath1 = common dso_local global i32* null, align 8
@fpath1_initialized = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"priv_acct_setup: fpath2\00", align 1
@fpath2 = common dso_local global i32* null, align 8
@fpath2_initialized = common dso_local global i32 0, align 4
@priv_acct_enable = common dso_local global i64 0, align 8
@priv_acct_noopdisable = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"priv_acct_setup: acct(NULL)\00", align 1
@priv_acct_disable = common dso_local global i64 0, align 8
@priv_acct_rotate = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"priv_acct_setup: acct(\22%s\22)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_acct_setup(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.test*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.test* %2, %struct.test** %7, align 8
  store i64 4, i64* %8, align 8
  %10 = load i32*, i32** @SYSCTL_NAME, align 8
  %11 = call i64 @sysctlbyname(i32* %10, i32* %9, i64* %8, i32* null, i32 0)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** @SYSCTL_NAME, align 8
  %15 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %14)
  store i32 -1, i32* %4, align 4
  br label %66

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @SYSCTL_NAME, align 8
  %21 = call i32 @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32* %20)
  store i32 -1, i32* %4, align 4
  br label %66

22:                                               ; preds = %16
  %23 = load i32*, i32** @fpath1, align 8
  %24 = call i32 @setup_file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %23, i32 0, i32 0, i32 438)
  store i32 1, i32* @fpath1_initialized, align 4
  %25 = load i32*, i32** @fpath2, align 8
  %26 = call i32 @setup_file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* %25, i32 0, i32 0, i32 438)
  store i32 1, i32* @fpath2_initialized, align 4
  %27 = load %struct.test*, %struct.test** %7, align 8
  %28 = getelementptr inbounds %struct.test, %struct.test* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @priv_acct_enable, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %22
  %33 = load %struct.test*, %struct.test** %7, align 8
  %34 = getelementptr inbounds %struct.test, %struct.test* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @priv_acct_noopdisable, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32, %22
  %39 = call i64 @acct(i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %66

43:                                               ; preds = %38
  br label %65

44:                                               ; preds = %32
  %45 = load %struct.test*, %struct.test** %7, align 8
  %46 = getelementptr inbounds %struct.test, %struct.test* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @priv_acct_disable, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.test*, %struct.test** %7, align 8
  %52 = getelementptr inbounds %struct.test, %struct.test* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @priv_acct_rotate, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50, %44
  %57 = load i32*, i32** @fpath1, align 8
  %58 = call i64 @acct(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32*, i32** @fpath1, align 8
  %62 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32* %61)
  store i32 -1, i32* %4, align 4
  br label %66

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %43
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %60, %41, %19, %13
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @sysctlbyname(i32*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @warnx(i8*, i32*) #1

declare dso_local i32 @setup_file(i8*, i32*, i32, i32, i32) #1

declare dso_local i64 @acct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
