; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { i32, i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@STGE_IntStatus = common dso_local global i32 0, align 4
@IS_InterruptStatus = common dso_local global i32 0, align 4
@STGE_IntStatusAck = common dso_local global i32 0, align 4
@IS_HostError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Host interface error, resetting...\0A\00", align 1
@IS_RxDMAComplete = common dso_local global i32 0, align 4
@IS_RFDListEnd = common dso_local global i32 0, align 4
@STGE_DMACtrl = common dso_local global i32 0, align 4
@DMAC_RxDMAPollNow = common dso_local global i32 0, align 4
@IS_TxDMAComplete = common dso_local global i32 0, align 4
@IS_TxComplete = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@STGE_IntEnable = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.stge_softc*
  store %struct.stge_softc* %8, %struct.stge_softc** %3, align 8
  %9 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %9, i32 0, i32 3
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %13 = call i32 @STGE_LOCK(%struct.stge_softc* %12)
  %14 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %15 = load i32, i32* @STGE_IntStatus, align 4
  %16 = call i32 @CSR_READ_2(%struct.stge_softc* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %18 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IS_InterruptStatus, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %1
  br label %118

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %89, %27
  %29 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %30 = load i32, i32* @STGE_IntStatusAck, align 4
  %31 = call i32 @CSR_READ_2(%struct.stge_softc* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %33 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %90

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IS_HostError, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %47 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %91

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IS_RxDMAComplete, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %57 = call i32 @stge_rxeof(%struct.stge_softc* %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @IS_RFDListEnd, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %64 = load i32, i32* @STGE_DMACtrl, align 4
  %65 = load i32, i32* @DMAC_RxDMAPollNow, align 4
  %66 = call i32 @CSR_WRITE_4(%struct.stge_softc* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %55
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @IS_TxDMAComplete, align 4
  %71 = load i32, i32* @IS_TxComplete, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %77 = call i32 @stge_txeof(%struct.stge_softc* %76)
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @IS_TxComplete, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %85 = call i32 @stge_tx_error(%struct.stge_softc* %84)
  store i32 %85, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %90

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %78
  br label %28

90:                                               ; preds = %87, %39
  br label %91

91:                                               ; preds = %90, %45
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %98 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %102 = call i32 @stge_init_locked(%struct.stge_softc* %101)
  br label %103

103:                                              ; preds = %94, %91
  %104 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %105 = load i32, i32* @STGE_IntEnable, align 4
  %106 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %107 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @CSR_WRITE_2(%struct.stge_softc* %104, i32 %105, i32 %108)
  %110 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %111 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %110, i32 0, i32 1
  %112 = call i32 @IFQ_DRV_IS_EMPTY(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %103
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = call i32 @stge_start_locked(%struct.ifnet* %115)
  br label %117

117:                                              ; preds = %114, %103
  br label %118

118:                                              ; preds = %117, %26
  %119 = load %struct.stge_softc*, %struct.stge_softc** %3, align 8
  %120 = call i32 @STGE_UNLOCK(%struct.stge_softc* %119)
  ret void
}

declare dso_local i32 @STGE_LOCK(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.stge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @stge_rxeof(%struct.stge_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @stge_txeof(%struct.stge_softc*) #1

declare dso_local i32 @stge_tx_error(%struct.stge_softc*) #1

declare dso_local i32 @stge_init_locked(%struct.stge_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @stge_start_locked(%struct.ifnet*) #1

declare dso_local i32 @STGE_UNLOCK(%struct.stge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
