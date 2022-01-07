; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_free_sdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_sbp.c_sbp_free_sdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_dev = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.sbp_softc* }
%struct.sbp_softc = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@SBP_QUEUE_LEN = common dso_local global i32 0, align 4
@M_SBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_dev*)* @sbp_free_sdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_free_sdev(%struct.sbp_dev* %0) #0 {
  %2 = alloca %struct.sbp_dev*, align 8
  %3 = alloca %struct.sbp_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.sbp_dev* %0, %struct.sbp_dev** %2, align 8
  %5 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %6 = icmp eq %struct.sbp_dev* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %60

8:                                                ; preds = %1
  %9 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %10 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.sbp_softc*, %struct.sbp_softc** %12, align 8
  store %struct.sbp_softc* %13, %struct.sbp_softc** %3, align 8
  %14 = load %struct.sbp_softc*, %struct.sbp_softc** %3, align 8
  %15 = call i32 @SBP_UNLOCK(%struct.sbp_softc* %14)
  %16 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %17 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %16, i32 0, i32 2
  %18 = call i32 @callout_drain(i32* %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %44, %8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SBP_QUEUE_LEN, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %25 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = call i32 @callout_drain(i32* %30)
  %32 = load %struct.sbp_softc*, %struct.sbp_softc** %3, align 8
  %33 = getelementptr inbounds %struct.sbp_softc, %struct.sbp_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %36 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bus_dmamap_destroy(i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.sbp_softc*, %struct.sbp_softc** %3, align 8
  %49 = getelementptr inbounds %struct.sbp_softc, %struct.sbp_softc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %53 = getelementptr inbounds %struct.sbp_dev, %struct.sbp_dev* %52, i32 0, i32 0
  %54 = call i32 @fwdma_free(i32 %51, i32* %53)
  %55 = load %struct.sbp_dev*, %struct.sbp_dev** %2, align 8
  %56 = load i32, i32* @M_SBP, align 4
  %57 = call i32 @free(%struct.sbp_dev* %55, i32 %56)
  %58 = load %struct.sbp_softc*, %struct.sbp_softc** %3, align 8
  %59 = call i32 @SBP_LOCK(%struct.sbp_softc* %58)
  br label %60

60:                                               ; preds = %47, %7
  ret void
}

declare dso_local i32 @SBP_UNLOCK(%struct.sbp_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @fwdma_free(i32, i32*) #1

declare dso_local i32 @free(%struct.sbp_dev*, i32) #1

declare dso_local i32 @SBP_LOCK(%struct.sbp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
