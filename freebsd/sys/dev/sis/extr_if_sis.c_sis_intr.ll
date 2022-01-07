; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@SIS_ISR = common dso_local global i32 0, align 4
@SIS_INTRS = common dso_local global i32 0, align 4
@SIS_IER = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@SIS_ISR_TX_DESC_OK = common dso_local global i32 0, align 4
@SIS_ISR_TX_ERR = common dso_local global i32 0, align 4
@SIS_ISR_TX_OK = common dso_local global i32 0, align 4
@SIS_ISR_TX_IDLE = common dso_local global i32 0, align 4
@SIS_ISR_RX_DESC_OK = common dso_local global i32 0, align 4
@SIS_ISR_RX_OK = common dso_local global i32 0, align 4
@SIS_ISR_RX_ERR = common dso_local global i32 0, align 4
@SIS_ISR_RX_IDLE = common dso_local global i32 0, align 4
@SIS_ISR_RX_OFLOW = common dso_local global i32 0, align 4
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@SIS_CSR = common dso_local global i32 0, align 4
@SIS_CSR_RX_ENABLE = common dso_local global i32 0, align 4
@SIS_ISR_SYSERR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sis_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sis_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sis_softc*
  store %struct.sis_softc* %7, %struct.sis_softc** %3, align 8
  %8 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %12 = call i32 @SIS_LOCK(%struct.sis_softc* %11)
  %13 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %14 = load i32, i32* @SIS_ISR, align 4
  %15 = call i32 @CSR_READ_4(%struct.sis_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SIS_INTRS, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %22 = call i32 @SIS_UNLOCK(%struct.sis_softc* %21)
  br label %129

23:                                               ; preds = %1
  %24 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %25 = load i32, i32* @SIS_IER, align 4
  %26 = call i32 @CSR_WRITE_4(%struct.sis_softc* %24, i32 %25, i32 0)
  br label %27

27:                                               ; preds = %103, %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SIS_INTRS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %107

32:                                               ; preds = %27
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %107

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SIS_ISR_TX_DESC_OK, align 4
  %43 = load i32, i32* @SIS_ISR_TX_ERR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SIS_ISR_TX_OK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SIS_ISR_TX_IDLE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %41, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %53 = call i32 @sis_txeof(%struct.sis_softc* %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SIS_ISR_RX_DESC_OK, align 4
  %57 = load i32, i32* @SIS_ISR_RX_OK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SIS_ISR_RX_ERR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SIS_ISR_RX_IDLE, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %55, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %67 = call i32 @sis_rxeof(%struct.sis_softc* %66)
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SIS_ISR_RX_OFLOW, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %75 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %76 = call i32 @if_inc_counter(%struct.ifnet* %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @SIS_ISR_RX_IDLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %84 = load i32, i32* @SIS_CSR, align 4
  %85 = load i32, i32* @SIS_CSR_RX_ENABLE, align 4
  %86 = call i32 @SIS_SETBIT(%struct.sis_softc* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @SIS_ISR_SYSERR, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %96 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %100 = call i32 @sis_initl(%struct.sis_softc* %99)
  %101 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %102 = call i32 @SIS_UNLOCK(%struct.sis_softc* %101)
  br label %129

103:                                              ; preds = %87
  %104 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %105 = load i32, i32* @SIS_ISR, align 4
  %106 = call i32 @CSR_READ_4(%struct.sis_softc* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  br label %27

107:                                              ; preds = %39, %27
  %108 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %107
  %115 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %116 = load i32, i32* @SIS_IER, align 4
  %117 = call i32 @CSR_WRITE_4(%struct.sis_softc* %115, i32 %116, i32 1)
  %118 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %119 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %118, i32 0, i32 2
  %120 = call i32 @IFQ_DRV_IS_EMPTY(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %114
  %123 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %124 = call i32 @sis_startl(%struct.ifnet* %123)
  br label %125

125:                                              ; preds = %122, %114
  br label %126

126:                                              ; preds = %125, %107
  %127 = load %struct.sis_softc*, %struct.sis_softc** %3, align 8
  %128 = call i32 @SIS_UNLOCK(%struct.sis_softc* %127)
  br label %129

129:                                              ; preds = %126, %92, %20
  ret void
}

declare dso_local i32 @SIS_LOCK(%struct.sis_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.sis_softc*, i32) #1

declare dso_local i32 @SIS_UNLOCK(%struct.sis_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @sis_txeof(%struct.sis_softc*) #1

declare dso_local i32 @sis_rxeof(%struct.sis_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @SIS_SETBIT(%struct.sis_softc*, i32, i32) #1

declare dso_local i32 @sis_initl(%struct.sis_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @sis_startl(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
