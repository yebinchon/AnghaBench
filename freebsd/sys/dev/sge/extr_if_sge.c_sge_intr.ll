; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IntrStatus = common dso_local global i32 0, align 4
@SGE_INTRS = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@INTR_RX_DONE = common dso_local global i32 0, align 4
@INTR_RX_IDLE = common dso_local global i32 0, align 4
@RX_CTL = common dso_local global i32 0, align 4
@RX_CTL_POLL = common dso_local global i32 0, align 4
@RX_CTL_ENB = common dso_local global i32 0, align 4
@INTR_TX_DONE = common dso_local global i32 0, align 4
@INTR_TX_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sge_softc*
  store %struct.sge_softc* %7, %struct.sge_softc** %3, align 8
  %8 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %9 = call i32 @SGE_LOCK(%struct.sge_softc* %8)
  %10 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %11 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %10, i32 0, i32 0
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %14 = load i32, i32* @IntrStatus, align 4
  %15 = call i32 @CSR_READ_4(%struct.sge_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SGE_INTRS, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %1
  %24 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %25 = call i32 @SGE_UNLOCK(%struct.sge_softc* %24)
  br label %112

26:                                               ; preds = %18
  %27 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %28 = load i32, i32* @IntrStatus, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.sge_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %32 = load i32, i32* @IntrMask, align 4
  %33 = call i32 @CSR_WRITE_4(%struct.sge_softc* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %84, %26
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %89

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @INTR_RX_DONE, align 4
  %45 = load i32, i32* @INTR_RX_IDLE, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %51 = call i32 @sge_rxeof(%struct.sge_softc* %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @INTR_RX_IDLE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %58 = load i32, i32* @RX_CTL, align 4
  %59 = load i32, i32* @RX_CTL_POLL, align 4
  %60 = or i32 6668, %59
  %61 = load i32, i32* @RX_CTL_ENB, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @CSR_WRITE_4(%struct.sge_softc* %57, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %56, %49
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @INTR_TX_DONE, align 4
  %68 = load i32, i32* @INTR_TX_IDLE, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %74 = call i32 @sge_txeof(%struct.sge_softc* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %77 = load i32, i32* @IntrStatus, align 4
  %78 = call i32 @CSR_READ_4(%struct.sge_softc* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SGE_INTRS, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %89

84:                                               ; preds = %75
  %85 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %86 = load i32, i32* @IntrStatus, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @CSR_WRITE_4(%struct.sge_softc* %85, i32 %86, i32 %87)
  br label %34

89:                                               ; preds = %83, %41
  %90 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %91 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %98 = load i32, i32* @IntrMask, align 4
  %99 = load i32, i32* @SGE_INTRS, align 4
  %100 = call i32 @CSR_WRITE_4(%struct.sge_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %102 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %101, i32 0, i32 1
  %103 = call i32 @IFQ_DRV_IS_EMPTY(i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %107 = call i32 @sge_start_locked(%struct.ifnet* %106)
  br label %108

108:                                              ; preds = %105, %96
  br label %109

109:                                              ; preds = %108, %89
  %110 = load %struct.sge_softc*, %struct.sge_softc** %3, align 8
  %111 = call i32 @SGE_UNLOCK(%struct.sge_softc* %110)
  br label %112

112:                                              ; preds = %109, %23
  ret void
}

declare dso_local i32 @SGE_LOCK(%struct.sge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.sge_softc*, i32) #1

declare dso_local i32 @SGE_UNLOCK(%struct.sge_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

declare dso_local i32 @sge_rxeof(%struct.sge_softc*) #1

declare dso_local i32 @sge_txeof(%struct.sge_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @sge_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
