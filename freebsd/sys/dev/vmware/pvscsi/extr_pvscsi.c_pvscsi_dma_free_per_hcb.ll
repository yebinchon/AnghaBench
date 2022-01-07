; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_free_per_hcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_dma_free_per_hcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32, i32, i32, %struct.pvscsi_hcb*, i32 }
%struct.pvscsi_hcb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*, i32)* @pvscsi_dma_free_per_hcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_dma_free_per_hcb(%struct.pvscsi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.pvscsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pvscsi_hcb*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %8, i32 0, i32 4
  %10 = call i32 @mtx_owned(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %15 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %14, i32 0, i32 4
  %16 = call i32 @mtx_unlock(i32* %15)
  br label %17

17:                                               ; preds = %13, %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %23, i32 0, i32 3
  %25 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %25, i64 %27
  store %struct.pvscsi_hcb* %28, %struct.pvscsi_hcb** %7, align 8
  %29 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %7, align 8
  %30 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %29, i32 0, i32 1
  %31 = call i32 @callout_drain(i32* %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %39, i32 0, i32 4
  %41 = call i32 @mtx_lock(i32* %40)
  br label %42

42:                                               ; preds = %38, %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %48, i32 0, i32 3
  %50 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %50, i64 %52
  store %struct.pvscsi_hcb* %53, %struct.pvscsi_hcb** %7, align 8
  %54 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %7, align 8
  %58 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bus_dmamap_destroy(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %43

64:                                               ; preds = %43
  %65 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %66 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %67 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %66, i32 0, i32 1
  %68 = call i32 @pvscsi_dma_free(%struct.pvscsi_softc* %65, i32* %67)
  %69 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %70 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %71 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %70, i32 0, i32 0
  %72 = call i32 @pvscsi_dma_free(%struct.pvscsi_softc* %69, i32* %71)
  ret void
}

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @pvscsi_dma_free(%struct.pvscsi_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
