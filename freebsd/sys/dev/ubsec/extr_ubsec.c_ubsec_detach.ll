; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ubsec/extr_ubsec.c_ubsec_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubsec_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ubsec_q = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BS_CTRL = common dso_local global i32 0, align 4
@BS_CTRL_MCR2INT = common dso_local global i32 0, align 4
@BS_CTRL_MCR1INT = common dso_local global i32 0, align 4
@BS_CTRL_DMAERR = common dso_local global i32 0, align 4
@q_next = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@UBS_FLAGS_RNG = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@BS_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ubsec_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubsec_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubsec_softc*, align 8
  %4 = alloca %struct.ubsec_q*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ubsec_softc* @device_get_softc(i32 %5)
  store %struct.ubsec_softc* %6, %struct.ubsec_softc** %3, align 8
  %7 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %8 = load i32, i32* @BS_CTRL, align 4
  %9 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %10 = load i32, i32* @BS_CTRL, align 4
  %11 = call i32 @READ_REG(%struct.ubsec_softc* %9, i32 %10)
  %12 = load i32, i32* @BS_CTRL_MCR2INT, align 4
  %13 = load i32, i32* @BS_CTRL_MCR1INT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BS_CTRL_DMAERR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %11, %17
  %19 = call i32 @WRITE_REG(%struct.ubsec_softc* %7, i32 %8, i32 %18)
  %20 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %20, i32 0, i32 12
  %22 = call i32 @callout_stop(i32* %21)
  %23 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @crypto_unregister_all(i32 %25)
  br label %27

27:                                               ; preds = %33, %1
  %28 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %28, i32 0, i32 9
  %30 = call i32 @SIMPLEQ_EMPTY(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %50

33:                                               ; preds = %27
  %34 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %34, i32 0, i32 9
  %36 = call %struct.ubsec_q* @SIMPLEQ_FIRST(i32* %35)
  store %struct.ubsec_q* %36, %struct.ubsec_q** %4, align 8
  %37 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %37, i32 0, i32 9
  %39 = load i32, i32* @q_next, align 4
  %40 = call i32 @SIMPLEQ_REMOVE_HEAD(i32* %38, i32 %39)
  %41 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %42 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %43 = getelementptr inbounds %struct.ubsec_q, %struct.ubsec_q* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %41, i32* %45)
  %47 = load %struct.ubsec_q*, %struct.ubsec_q** %4, align 8
  %48 = load i32, i32* @M_DEVBUF, align 4
  %49 = call i32 @free(%struct.ubsec_q* %47, i32 %48)
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %51, i32 0, i32 8
  %53 = call i32 @mtx_destroy(i32* %52)
  %54 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %54, i32 0, i32 7
  %56 = call i32 @mtx_destroy(i32* %55)
  %57 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @UBS_FLAGS_RNG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %50
  %64 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %65 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %66 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %64, i32* %68)
  %70 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %71 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %70, i32* %74)
  %76 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %77 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %78 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i32 @ubsec_dma_free(%struct.ubsec_softc* %76, i32* %79)
  br label %81

81:                                               ; preds = %63, %50
  %82 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %82, i32 0, i32 5
  %84 = call i32 @mtx_destroy(i32* %83)
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @bus_generic_detach(i32 %85)
  %87 = load i32, i32* %2, align 4
  %88 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %92 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @bus_teardown_intr(i32 %87, i32 %90, i32 %93)
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @SYS_RES_IRQ, align 4
  %97 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bus_release_resource(i32 %95, i32 %96, i32 0, i32 %99)
  %101 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %102 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bus_dma_tag_destroy(i32 %103)
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @SYS_RES_MEMORY, align 4
  %107 = load i32, i32* @BS_BAR, align 4
  %108 = load %struct.ubsec_softc*, %struct.ubsec_softc** %3, align 8
  %109 = getelementptr inbounds %struct.ubsec_softc, %struct.ubsec_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bus_release_resource(i32 %105, i32 %106, i32 %107, i32 %110)
  ret i32 0
}

declare dso_local %struct.ubsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @WRITE_REG(%struct.ubsec_softc*, i32, i32) #1

declare dso_local i32 @READ_REG(%struct.ubsec_softc*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @crypto_unregister_all(i32) #1

declare dso_local i32 @SIMPLEQ_EMPTY(i32*) #1

declare dso_local %struct.ubsec_q* @SIMPLEQ_FIRST(i32*) #1

declare dso_local i32 @SIMPLEQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ubsec_dma_free(%struct.ubsec_softc*, i32*) #1

declare dso_local i32 @free(%struct.ubsec_q*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
