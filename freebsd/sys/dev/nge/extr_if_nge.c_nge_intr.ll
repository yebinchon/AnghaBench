; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nge/extr_if_nge.c_nge_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nge_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32 }

@NGE_FLAG_SUSPENDED = common dso_local global i32 0, align 4
@NGE_ISR = common dso_local global i32 0, align 4
@NGE_INTRS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@NGE_IER = common dso_local global i32 0, align 4
@NGE_FLAG_TBI = common dso_local global i32 0, align 4
@NGE_GPIO = common dso_local global i32 0, align 4
@NGE_GPIO_GP3_OUT = common dso_local global i32 0, align 4
@NGE_ISR_TX_DESC_OK = common dso_local global i32 0, align 4
@NGE_ISR_TX_ERR = common dso_local global i32 0, align 4
@NGE_ISR_TX_OK = common dso_local global i32 0, align 4
@NGE_ISR_TX_IDLE = common dso_local global i32 0, align 4
@NGE_ISR_RX_DESC_OK = common dso_local global i32 0, align 4
@NGE_ISR_RX_ERR = common dso_local global i32 0, align 4
@NGE_ISR_RX_OFLOW = common dso_local global i32 0, align 4
@NGE_ISR_RX_FIFO_OFLOW = common dso_local global i32 0, align 4
@NGE_ISR_RX_IDLE = common dso_local global i32 0, align 4
@NGE_ISR_RX_OK = common dso_local global i32 0, align 4
@NGE_CSR = common dso_local global i32 0, align 4
@NGE_CSR_RX_ENABLE = common dso_local global i32 0, align 4
@NGE_ISR_SYSERR = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nge_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nge_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.nge_softc*
  store %struct.nge_softc* %7, %struct.nge_softc** %3, align 8
  %8 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %12 = call i32 @NGE_LOCK(%struct.nge_softc* %11)
  %13 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %14 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NGE_FLAG_SUSPENDED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %154

20:                                               ; preds = %1
  %21 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %22 = load i32, i32* @NGE_ISR, align 4
  %23 = call i32 @CSR_READ_4(%struct.nge_softc* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @NGE_INTRS, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %20
  br label %154

32:                                               ; preds = %26
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %154

40:                                               ; preds = %32
  %41 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %42 = load i32, i32* @NGE_IER, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.nge_softc* %41, i32 %42, i32 0)
  %44 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NGE_FLAG_TBI, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %52 = load i32, i32* @NGE_GPIO, align 4
  %53 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %54 = load i32, i32* @NGE_GPIO, align 4
  %55 = call i32 @CSR_READ_4(%struct.nge_softc* %53, i32 %54)
  %56 = load i32, i32* @NGE_GPIO_GP3_OUT, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @CSR_WRITE_4(%struct.nge_softc* %51, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %50, %40
  br label %60

60:                                               ; preds = %121, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @NGE_INTRS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %125

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @NGE_ISR_TX_DESC_OK, align 4
  %68 = load i32, i32* @NGE_ISR_TX_ERR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @NGE_ISR_TX_OK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @NGE_ISR_TX_IDLE, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %66, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %78 = call i32 @nge_txeof(%struct.nge_softc* %77)
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @NGE_ISR_RX_DESC_OK, align 4
  %82 = load i32, i32* @NGE_ISR_RX_ERR, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @NGE_ISR_RX_OFLOW, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @NGE_ISR_RX_FIFO_OFLOW, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @NGE_ISR_RX_IDLE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @NGE_ISR_RX_OK, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %80, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %79
  %95 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %96 = call i32 @nge_rxeof(%struct.nge_softc* %95)
  br label %97

97:                                               ; preds = %94, %79
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @NGE_ISR_RX_IDLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %104 = load i32, i32* @NGE_CSR, align 4
  %105 = load i32, i32* @NGE_CSR_RX_ENABLE, align 4
  %106 = call i32 @NGE_SETBIT(%struct.nge_softc* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @NGE_ISR_SYSERR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %116 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %120 = call i32 @nge_init_locked(%struct.nge_softc* %119)
  br label %121

121:                                              ; preds = %112, %107
  %122 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %123 = load i32, i32* @NGE_ISR, align 4
  %124 = call i32 @CSR_READ_4(%struct.nge_softc* %122, i32 %123)
  store i32 %124, i32* %5, align 4
  br label %60

125:                                              ; preds = %60
  %126 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %127 = load i32, i32* @NGE_IER, align 4
  %128 = call i32 @CSR_WRITE_4(%struct.nge_softc* %126, i32 %127, i32 1)
  %129 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %130 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %129, i32 0, i32 2
  %131 = call i32 @IFQ_DRV_IS_EMPTY(i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %135 = call i32 @nge_start_locked(%struct.ifnet* %134)
  br label %136

136:                                              ; preds = %133, %125
  %137 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %138 = getelementptr inbounds %struct.nge_softc, %struct.nge_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NGE_FLAG_TBI, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %145 = load i32, i32* @NGE_GPIO, align 4
  %146 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %147 = load i32, i32* @NGE_GPIO, align 4
  %148 = call i32 @CSR_READ_4(%struct.nge_softc* %146, i32 %147)
  %149 = load i32, i32* @NGE_GPIO_GP3_OUT, align 4
  %150 = xor i32 %149, -1
  %151 = and i32 %148, %150
  %152 = call i32 @CSR_WRITE_4(%struct.nge_softc* %144, i32 %145, i32 %151)
  br label %153

153:                                              ; preds = %143, %136
  br label %154

154:                                              ; preds = %153, %39, %31, %19
  %155 = load %struct.nge_softc*, %struct.nge_softc** %3, align 8
  %156 = call i32 @NGE_UNLOCK(%struct.nge_softc* %155)
  ret void
}

declare dso_local i32 @NGE_LOCK(%struct.nge_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.nge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @nge_txeof(%struct.nge_softc*) #1

declare dso_local i32 @nge_rxeof(%struct.nge_softc*) #1

declare dso_local i32 @NGE_SETBIT(%struct.nge_softc*, i32, i32) #1

declare dso_local i32 @nge_init_locked(%struct.nge_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @nge_start_locked(%struct.ifnet*) #1

declare dso_local i32 @NGE_UNLOCK(%struct.nge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
