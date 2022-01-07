; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.atse_softc* }
%struct.atse_softc = type { i32, i32, %struct.buf_ring* }
%struct.buf_ring = type { i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ATSE_FLAGS_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @atse_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.atse_softc*, align 8
  %7 = alloca %struct.buf_ring*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 1
  %11 = load %struct.atse_softc*, %struct.atse_softc** %10, align 8
  store %struct.atse_softc* %11, %struct.atse_softc** %6, align 8
  %12 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %13 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %12, i32 0, i32 2
  %14 = load %struct.buf_ring*, %struct.buf_ring** %13, align 8
  store %struct.buf_ring* %14, %struct.buf_ring** %7, align 8
  %15 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %16 = call i32 @ATSE_LOCK(%struct.atse_softc* %15)
  %17 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %18 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %32 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %31, i32 0, i32 2
  %33 = load %struct.buf_ring*, %struct.buf_ring** %32, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %35 = call i32 @drbr_enqueue(%struct.ifnet* %30, %struct.buf_ring* %33, %struct.mbuf* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %37 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %36, i32 0, i32 1
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %40 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %2
  %43 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %44 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %52 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %51, i32 0, i32 2
  %53 = load %struct.buf_ring*, %struct.buf_ring** %52, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = call i32 @drbr_enqueue(%struct.ifnet* %50, %struct.buf_ring* %53, %struct.mbuf* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %57 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %56, i32 0, i32 1
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %60 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %85

62:                                               ; preds = %42
  %63 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %64 = load %struct.buf_ring*, %struct.buf_ring** %7, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %66 = call i32 @drbr_enqueue(%struct.ifnet* %63, %struct.buf_ring* %64, %struct.mbuf* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %71 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %70, i32 0, i32 1
  %72 = call i32 @mtx_unlock(i32* %71)
  %73 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %74 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %85

76:                                               ; preds = %62
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = call i32 @atse_transmit_locked(%struct.ifnet* %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %80 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %79, i32 0, i32 1
  %81 = call i32 @mtx_unlock(i32* %80)
  %82 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %83 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %76, %69, %49, %29
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ATSE_LOCK(%struct.atse_softc*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, %struct.buf_ring*, %struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ATSE_UNLOCK(%struct.atse_softc*) #1

declare dso_local i32 @atse_transmit_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
