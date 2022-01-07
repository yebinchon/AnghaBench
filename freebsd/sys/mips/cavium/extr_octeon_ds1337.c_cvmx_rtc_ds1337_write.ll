; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ds1337.c_cvmx_rtc_ds1337_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ds1337.c_cvmx_rtc_ds1337_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i64, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Error: RTC was passed wrong calendar values, write failed\0A\00", align 1
@CVMX_RTC_DS1337_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_rtc_ds1337_write(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.clocktime, align 4
  %5 = alloca %struct.timespec, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = call i32 @clock_ts_to_ct(%struct.timespec* %5, %struct.clocktime* %4)
  %15 = call i64 @validate_ct_struct(%struct.clocktime* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %97

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bin2bcd(i32 %21)
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bin2bcd(i32 %25)
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bin2bcd(i32 %29)
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @bin2bcd(i32 %34)
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bin2bcd(i32 %38)
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %39, i32* %40, align 16
  %41 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bin2bcd(i32 %42)
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 2000
  br i1 %47, label %48, label %52

48:                                               ; preds = %19
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 128
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %48, %19
  %53 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %4, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %54, 100
  %56 = call i32 @bin2bcd(i32 %55)
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 %56, i32* %57, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %89, %52
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %92

61:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %75, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 7
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* @CVMX_RTC_DS1337_ADDR, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cvmx_twsi_write8(i32 %66, i32 %67, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load i32, i32* @CVMX_RTC_DS1337_ADDR, align 4
  %80 = call i32 @cvmx_twsi_read8(i32 %79, i32 0)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 15
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = and i32 %84, 15
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %92

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %58

92:                                               ; preds = %87, %58
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 -1, i32 0
  store i32 %96, i32* %2, align 4
  br label %98

97:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %92
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i64 @validate_ct_struct(%struct.clocktime*) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @cvmx_twsi_write8(i32, i32, i32) #1

declare dso_local i32 @cvmx_twsi_read8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
