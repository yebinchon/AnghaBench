; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run_softc = type { i32, i32*, i32, i32*, i32*, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RUN_RUNNING = common dso_local global i32 0, align 4
@RUN_RATECTL_OFF = common dso_local global i32 0, align 4
@RUN_N_XFER = common dso_local global i32 0, align 4
@RT2860_WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@RT2860_RX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_TX_DMA_EN = common dso_local global i32 0, align 4
@RT2860_TX_DMA_BUSY = common dso_local global i32 0, align 4
@RT2860_RX_DMA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"timeout waiting for DMA engine\0A\00", align 1
@RT2860_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@RT2860_MAC_RX_EN = common dso_local global i32 0, align 4
@RT2860_MAC_TX_EN = common dso_local global i32 0, align 4
@RT2860_TXRXQ_PCNT = common dso_local global i32 0, align 4
@RUN_DEBUG_XMIT = common dso_local global i32 0, align 4
@RUN_DEBUG_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot read Tx queue count\0A\00", align 1
@RT2860_TX2Q_PCNT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"All Tx cleared\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"There are still pending Tx\0A\00", align 1
@RT2860_USB_DMA_CFG = common dso_local global i32 0, align 4
@RT2860_BBP_HRST = common dso_local global i32 0, align 4
@RT2860_MAC_SRST = common dso_local global i32 0, align 4
@RUN_EP_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.run_softc*
  store %struct.run_softc* %8, %struct.run_softc** %3, align 8
  %9 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @RUN_LOCK_ASSERT(%struct.run_softc* %9, i32 %10)
  %12 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %13 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RUN_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %20 = call i32 @run_set_leds(%struct.run_softc* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* @RUN_RUNNING, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %25 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @RUN_RATECTL_OFF, align 4
  %29 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %30 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 8
  %31 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %32 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %35 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %37 = call i32 @RUN_UNLOCK(%struct.run_softc* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %51, %21
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @RUN_N_XFER, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %44 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usbd_transfer_drain(i32 %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %56 = call i32 @RUN_LOCK(%struct.run_softc* %55)
  %57 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %58 = call i32 @run_drain_mbufq(%struct.run_softc* %57)
  %59 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %60 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %65 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @m_free(i32* %66)
  %68 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %69 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %68, i32 0, i32 3
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %54
  %71 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %72 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %73 = call i64 @run_read(%struct.run_softc* %71, i32 %72, i32* %4)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %203

76:                                               ; preds = %70
  %77 = load i32, i32* @RT2860_RX_DMA_EN, align 4
  %78 = load i32, i32* @RT2860_TX_DMA_EN, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %84 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @run_write(%struct.run_softc* %83, i32 %84, i32 %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %107, %76
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 100
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %92 = load i32, i32* @RT2860_WPDMA_GLO_CFG, align 4
  %93 = call i64 @run_read(%struct.run_softc* %91, i32 %92, i32* %4)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %203

96:                                               ; preds = %90
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @RT2860_TX_DMA_BUSY, align 4
  %99 = load i32, i32* @RT2860_RX_DMA_BUSY, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %110

104:                                              ; preds = %96
  %105 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %106 = call i32 @run_delay(%struct.run_softc* %105, i32 10)
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %87

110:                                              ; preds = %103, %87
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 100
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %115 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %203

118:                                              ; preds = %110
  %119 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %120 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %121 = call i64 @run_read(%struct.run_softc* %119, i32 %120, i32* %4)
  %122 = load i32, i32* @RT2860_MAC_RX_EN, align 4
  %123 = load i32, i32* @RT2860_MAC_TX_EN, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %129 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @run_write(%struct.run_softc* %128, i32 %129, i32 %130)
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %160, %118
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %133, 100
  br i1 %134, label %135, label %163

135:                                              ; preds = %132
  %136 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %137 = load i32, i32* @RT2860_TXRXQ_PCNT, align 4
  %138 = call i64 @run_read(%struct.run_softc* %136, i32 %137, i32* %4)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %142 = load i32, i32* @RUN_DEBUG_XMIT, align 4
  %143 = load i32, i32* @RUN_DEBUG_RESET, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @RUN_DPRINTF(%struct.run_softc* %141, i32 %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %163

146:                                              ; preds = %135
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @RT2860_TX2Q_PCNT_MASK, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %153 = load i32, i32* @RUN_DEBUG_XMIT, align 4
  %154 = load i32, i32* @RUN_DEBUG_RESET, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @RUN_DPRINTF(%struct.run_softc* %152, i32 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %163

157:                                              ; preds = %146
  %158 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %159 = call i32 @run_delay(%struct.run_softc* %158, i32 10)
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %132

163:                                              ; preds = %151, %140, %132
  %164 = load i32, i32* %6, align 4
  %165 = icmp sge i32 %164, 100
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %168 = load i32, i32* @RUN_DEBUG_XMIT, align 4
  %169 = load i32, i32* @RUN_DEBUG_RESET, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @RUN_DPRINTF(%struct.run_softc* %167, i32 %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %172

172:                                              ; preds = %166, %163
  %173 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %174 = call i32 @run_delay(%struct.run_softc* %173, i32 10)
  %175 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %176 = load i32, i32* @RT2860_USB_DMA_CFG, align 4
  %177 = call i32 @run_write(%struct.run_softc* %175, i32 %176, i32 0)
  %178 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %179 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %180 = load i32, i32* @RT2860_BBP_HRST, align 4
  %181 = load i32, i32* @RT2860_MAC_SRST, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @run_write(%struct.run_softc* %178, i32 %179, i32 %182)
  %184 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %185 = load i32, i32* @RT2860_MAC_SYS_CTRL, align 4
  %186 = call i32 @run_write(%struct.run_softc* %184, i32 %185, i32 0)
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %200, %172
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @RUN_EP_QUEUES, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %193 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %194 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = call i32 @run_unsetup_tx_list(%struct.run_softc* %192, i32* %198)
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %187

203:                                              ; preds = %75, %95, %113, %187
  ret void
}

declare dso_local i32 @RUN_LOCK_ASSERT(%struct.run_softc*, i32) #1

declare dso_local i32 @run_set_leds(%struct.run_softc*, i32) #1

declare dso_local i32 @RUN_UNLOCK(%struct.run_softc*) #1

declare dso_local i32 @usbd_transfer_drain(i32) #1

declare dso_local i32 @RUN_LOCK(%struct.run_softc*) #1

declare dso_local i32 @run_drain_mbufq(%struct.run_softc*) #1

declare dso_local i32 @m_free(i32*) #1

declare dso_local i64 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RUN_DPRINTF(%struct.run_softc*, i32, i8*) #1

declare dso_local i32 @run_unsetup_tx_list(%struct.run_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
