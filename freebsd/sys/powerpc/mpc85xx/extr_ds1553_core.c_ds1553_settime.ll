; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_ds1553_core.c_ds1553_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_ds1553_core.c_ds1553_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.clocktime = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.ds1553_softc = type { i32 (i32, i32)*, i32, i32 (i32, i32, i32)*, i64 }

@DS1553_OFF_CONTROL = common dso_local global i32 0, align 4
@DS1553_BIT_WRITE = common dso_local global i32 0, align 4
@DS1553_OFF_SECONDS = common dso_local global i32 0, align 4
@DS1553_MASK_SECONDS = common dso_local global i32 0, align 4
@DS1553_OFF_MINUTES = common dso_local global i32 0, align 4
@DS1553_MASK_MINUTES = common dso_local global i32 0, align 4
@DS1553_OFF_HOURS = common dso_local global i32 0, align 4
@DS1553_MASK_HOUR = common dso_local global i32 0, align 4
@DS1553_OFF_DAYOFWEEK = common dso_local global i32 0, align 4
@DS1553_MASK_DAYOFWEEK = common dso_local global i32 0, align 4
@DS1553_OFF_DATE = common dso_local global i32 0, align 4
@DS1553_MASK_DATE = common dso_local global i32 0, align 4
@DS1553_OFF_MONTH = common dso_local global i32 0, align 4
@DS1553_MASK_MONTH = common dso_local global i32 0, align 4
@DS1553_OFF_YEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ds1553_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.clocktime, align 8
  %6 = alloca %struct.ds1553_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ds1553_softc* @device_get_softc(i32 %8)
  store %struct.ds1553_softc* %9, %struct.ds1553_softc** %6, align 8
  %10 = call i32 @bzero(%struct.clocktime* %5, i32 56)
  %11 = load %struct.timespec*, %struct.timespec** %4, align 8
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 500000000
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.timespec*, %struct.timespec** %4, align 8
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.timespec*, %struct.timespec** %4, align 8
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.timespec*, %struct.timespec** %4, align 8
  %24 = call i32 @clock_ts_to_ct(%struct.timespec* %23, %struct.clocktime* %5)
  %25 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %26 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %32 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %31, i32 0, i32 1
  %33 = call i32 @mtx_lock_spin(i32* %32)
  %34 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %35 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %34, i32 0, i32 0
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @DS1553_OFF_CONTROL, align 4
  %39 = call i32 %36(i32 %37, i32 %38)
  %40 = load i32, i32* @DS1553_BIT_WRITE, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %43 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %42, i32 0, i32 2
  %44 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @DS1553_OFF_CONTROL, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %44(i32 %45, i32 %46, i32 %47)
  %49 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %50 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %49, i32 0, i32 2
  %51 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @DS1553_OFF_SECONDS, align 4
  %54 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @TOBCD(i64 %55)
  %57 = load i32, i32* @DS1553_MASK_SECONDS, align 4
  %58 = and i32 %56, %57
  %59 = call i32 %51(i32 %52, i32 %53, i32 %58)
  %60 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %61 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %60, i32 0, i32 2
  %62 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @DS1553_OFF_MINUTES, align 4
  %65 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @TOBCD(i64 %66)
  %68 = load i32, i32* @DS1553_MASK_MINUTES, align 4
  %69 = and i32 %67, %68
  %70 = call i32 %62(i32 %63, i32 %64, i32 %69)
  %71 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %72 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %71, i32 0, i32 2
  %73 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @DS1553_OFF_HOURS, align 4
  %76 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @TOBCD(i64 %77)
  %79 = load i32, i32* @DS1553_MASK_HOUR, align 4
  %80 = and i32 %78, %79
  %81 = call i32 %73(i32 %74, i32 %75, i32 %80)
  %82 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %83 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %82, i32 0, i32 2
  %84 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @DS1553_OFF_DAYOFWEEK, align 4
  %87 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  %90 = call i32 @TOBCD(i64 %89)
  %91 = load i32, i32* @DS1553_MASK_DAYOFWEEK, align 4
  %92 = and i32 %90, %91
  %93 = call i32 %84(i32 %85, i32 %86, i32 %92)
  %94 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %95 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %94, i32 0, i32 2
  %96 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @DS1553_OFF_DATE, align 4
  %99 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @TOBCD(i64 %100)
  %102 = load i32, i32* @DS1553_MASK_DATE, align 4
  %103 = and i32 %101, %102
  %104 = call i32 %96(i32 %97, i32 %98, i32 %103)
  %105 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %106 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %105, i32 0, i32 2
  %107 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %106, align 8
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @DS1553_OFF_MONTH, align 4
  %110 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @TOBCD(i64 %111)
  %113 = load i32, i32* @DS1553_MASK_MONTH, align 4
  %114 = and i32 %112, %113
  %115 = call i32 %107(i32 %108, i32 %109, i32 %114)
  %116 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %117 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %116, i32 0, i32 2
  %118 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @DS1553_OFF_YEAR, align 4
  %121 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %5, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @TOBCD(i64 %122)
  %124 = call i32 %118(i32 %119, i32 %120, i32 %123)
  %125 = load i32, i32* @DS1553_BIT_WRITE, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %130 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %129, i32 0, i32 2
  %131 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %130, align 8
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @DS1553_OFF_CONTROL, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 %131(i32 %132, i32 %133, i32 %134)
  %136 = load %struct.ds1553_softc*, %struct.ds1553_softc** %6, align 8
  %137 = getelementptr inbounds %struct.ds1553_softc, %struct.ds1553_softc* %136, i32 0, i32 1
  %138 = call i32 @mtx_unlock_spin(i32* %137)
  ret i32 0
}

declare dso_local %struct.ds1553_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.clocktime*, i32) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @TOBCD(i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
