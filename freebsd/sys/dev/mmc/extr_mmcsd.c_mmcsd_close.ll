; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i32, i64 }
%struct.mmcsd_softc = type { i32 }
%struct.mmcsd_part = type { %struct.mmcsd_softc* }

@DISKFLAG_OPEN = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"failed to flush cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @mmcsd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_close(%struct.disk* %0) #0 {
  %2 = alloca %struct.disk*, align 8
  %3 = alloca %struct.mmcsd_softc*, align 8
  store %struct.disk* %0, %struct.disk** %2, align 8
  %4 = load %struct.disk*, %struct.disk** %2, align 8
  %5 = getelementptr inbounds %struct.disk, %struct.disk* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @DISKFLAG_OPEN, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.disk*, %struct.disk** %2, align 8
  %12 = getelementptr inbounds %struct.disk, %struct.disk* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.mmcsd_part*
  %15 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %14, i32 0, i32 0
  %16 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %15, align 8
  store %struct.mmcsd_softc* %16, %struct.mmcsd_softc** %3, align 8
  %17 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %18 = call i64 @mmcsd_flush_cache(%struct.mmcsd_softc* %17)
  %19 = load i64, i64* @MMC_ERR_NONE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %10
  br label %27

27:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local i64 @mmcsd_flush_cache(%struct.mmcsd_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
