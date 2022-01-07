; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_if_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_im.c_dtsec_im_if_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { i32 }

@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtsec_im_if_start_locked(%struct.dtsec_softc* %0) #0 {
  %2 = alloca %struct.dtsec_softc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %2, align 8
  %7 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %8 = call i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc* %7)
  %9 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IFM_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %80

18:                                               ; preds = %1
  %19 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %20 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %80

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %79, %29
  %31 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %32 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @IFQ_DRV_IS_EMPTY(i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %80

38:                                               ; preds = %30
  %39 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %40 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %44 = call i32 @IFQ_DRV_DEQUEUE(i32* %42, %struct.mbuf* %43)
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = icmp eq %struct.mbuf* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %80

48:                                               ; preds = %38
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = call i32 @m_length(%struct.mbuf* %49, i32* null)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32* @XX_MallocSmart(i32 %51, i32 0, i32 8)
  store i32* %52, i32** %3, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %57 = call i32 @m_freem(%struct.mbuf* %56)
  br label %80

58:                                               ; preds = %48
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @m_copydata(%struct.mbuf* %59, i32 0, i32 %60, i32* %61)
  %63 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %64 = call i32 @m_freem(%struct.mbuf* %63)
  %65 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %66 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @FM_PORT_ImTx(i32 %67, i32* %68, i32 %69, i32 %70, i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @E_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %58
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @XX_FreeSmart(i32* %77)
  br label %80

79:                                               ; preds = %58
  br label %30

80:                                               ; preds = %17, %28, %76, %55, %47, %30
  ret void
}

declare dso_local i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32* @XX_MallocSmart(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @FM_PORT_ImTx(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @XX_FreeSmart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
