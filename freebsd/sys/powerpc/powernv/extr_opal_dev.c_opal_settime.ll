; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_dev.c_opal_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32, i32 }

@OPAL_RTC_WRITE = common dso_local global i32 0, align 4
@OPAL_BUSY_EVENT = common dso_local global i32 0, align 4
@OPAL_POLL_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"opalrtc\00", align 1
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @opal_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clocktime, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.timespec*, %struct.timespec** %5, align 8
  %11 = call i32 @clock_ts_to_ct(%struct.timespec* %10, %struct.clocktime* %7)
  %12 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @bin2bcd(i32 %13)
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @bin2bcd(i32 %19)
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 8
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @bin2bcd32(i32 %26)
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 16
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 1000
  %35 = call i64 @bin2bcd32(i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @bin2bcd(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 40
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @bin2bcd(i32 %48)
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 48
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %7, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @bin2bcd(i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 56
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @htobe64(i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @htobe32(i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %78, %2
  %66 = load i32, i32* @OPAL_RTC_WRITE, align 4
  %67 = call i32 @vtophys(i32* %8)
  %68 = call i32 @vtophys(i32* %9)
  %69 = call i32 (i32, i32, ...) @opal_call(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @OPAL_BUSY_EVENT, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @OPAL_POLL_EVENTS, align 4
  %75 = call i32 (i32, i32, ...) @opal_call(i32 %74, i32 0)
  store i32 %75, i32* %6, align 4
  %76 = call i32 @pause(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %77

77:                                               ; preds = %73, %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @OPAL_BUSY_EVENT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %65, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @OPAL_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @ENXIO, align 4
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %86
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i64 @bin2bcd(i32) #1

declare dso_local i64 @bin2bcd32(i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @opal_call(i32, i32, ...) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
