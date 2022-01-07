; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_tvtohz.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/watchdogd/extr_watchdogd.c_tvtohz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"kern.hz\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"sysctlbyname kern.hz\00", align 1
@LONG_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tvtohz(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  store i64 4, i64* %7, align 8
  %10 = call i32 @sysctlbyname(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %6, i64* %7, i32* null, i32 0)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 1000000, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.timeval*, %struct.timeval** %2, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.timeval*, %struct.timeval** %2, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, 1000000
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %26, %15
  %32 = load i64, i64* %4, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i64 1, i64* %3, align 8
  br label %81

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @LONG_MAX, align 4
  %38 = sdiv i32 %37, 1000000
  %39 = sext i32 %38 to i64
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  %43 = mul nsw i64 %42, 1000000
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = add i64 %45, %48
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %49, %51
  %53 = add i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %80

54:                                               ; preds = %35
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* @LONG_MAX, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sdiv i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = icmp sle i64 %55, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %62, %64
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = add i64 %66, %69
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %70, %72
  %74 = add i64 %65, %73
  %75 = add i64 %74, 1
  store i64 %75, i64* %3, align 8
  br label %79

76:                                               ; preds = %54
  %77 = load i32, i32* @LONG_MAX, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %76, %61
  br label %80

80:                                               ; preds = %79, %41
  br label %81

81:                                               ; preds = %80, %34
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @INT_MAX, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @INT_MAX, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i64, i64* %3, align 8
  %89 = trunc i64 %88 to i32
  ret i32 %89
}

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
