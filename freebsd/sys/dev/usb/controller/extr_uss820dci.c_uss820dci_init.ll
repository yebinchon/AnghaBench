; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uss820dci_softc = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_hw_ep_profile = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@USB_REV_1_1 = common dso_local global i32 0, align 4
@uss820dci_bus_methods = common dso_local global i32 0, align 4
@USS820_SCR = common dso_local global i32 0, align 4
@USS820_SCR_SRESET = common dso_local global i32 0, align 4
@USS820_MCSR = common dso_local global i32 0, align 4
@USS820_MCSR_INIT = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@USS820_REV = common dso_local global i32 0, align 4
@USS820_SCR_T_IRQ = common dso_local global i32 0, align 4
@USS820_SCR_IE_RESET = common dso_local global i32 0, align 4
@USS820_SCR_IE_SUSP = common dso_local global i32 0, align 4
@USS820_SCR_IRQPOL = common dso_local global i32 0, align 4
@USS820_SCRATCH = common dso_local global i32 0, align 4
@USS820_SCRATCH_IE_RESUME = common dso_local global i32 0, align 4
@USS820_MCSR_BDFEAT = common dso_local global i32 0, align 4
@USS820_MCSR_FEAT = common dso_local global i32 0, align 4
@USS820_SBIE = common dso_local global i32 0, align 4
@USS820_SBIE1 = common dso_local global i32 0, align 4
@USS820_EP_MAX = common dso_local global i32 0, align 4
@USS820_EPINDEX = common dso_local global i32 0, align 4
@USS820_EPCON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Max frame size mismatch %u != %u\0A\00", align 1
@USS820_TXCON_FFSZ_16_64 = common dso_local global i32 0, align 4
@USS820_TXCON_TXISO = common dso_local global i32 0, align 4
@USS820_TXCON_ATM = common dso_local global i32 0, align 4
@USS820_TXCON_FFSZ_64_256 = common dso_local global i32 0, align 4
@USS820_TXCON_FFSZ_8_512 = common dso_local global i32 0, align 4
@USS820_TXCON_FFSZ_32_1024 = common dso_local global i32 0, align 4
@USS820_TXCON = common dso_local global i32 0, align 4
@USS820_RXCON = common dso_local global i32 0, align 4
@USS820_EPCON_CTLEP = common dso_local global i32 0, align 4
@USS820_EPCON_RXSPM = common dso_local global i32 0, align 4
@USS820_EPCON_RXIE = common dso_local global i32 0, align 4
@USS820_EPCON_RXEPEN = common dso_local global i32 0, align 4
@USS820_EPCON_TXOE = common dso_local global i32 0, align 4
@USS820_EPCON_TXEPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uss820dci_init(%struct.uss820dci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uss820dci_softc*, align 8
  %4 = alloca %struct.usb_hw_ep_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uss820dci_softc* %0, %struct.uss820dci_softc** %3, align 8
  %7 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @USB_REV_1_1, align 4
  %9 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %8, i32* %11, align 8
  %12 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32* @uss820dci_bus_methods, i32** %14, align 8
  %15 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %16 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %15, i32 0, i32 0
  %17 = call i32 @USB_BUS_LOCK(%struct.TYPE_6__* %16)
  %18 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %22 = load i32, i32* @USS820_SCR, align 4
  %23 = load i32, i32* @USS820_SCR_SRESET, align 4
  %24 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %21, i32 %22, i32 %23)
  %25 = call i32 @DELAY(i32 100)
  %26 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %27 = load i32, i32* @USS820_SCR, align 4
  %28 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %26, i32 %27, i32 0)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %48, %1
  %30 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %31 = load i32, i32* @USS820_MCSR, align 4
  %32 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @USS820_MCSR_INIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %51

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 100
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %43 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %42, i32 0, i32 0
  %44 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_6__* %43)
  %45 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %45, i32* %2, align 4
  br label %279

46:                                               ; preds = %38
  %47 = call i32 @DELAY(i32 100)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %29

51:                                               ; preds = %37
  %52 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %53 = call i32 @uss820dci_pull_down(%struct.uss820dci_softc* %52)
  %54 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* @hz, align 4
  %58 = sdiv i32 %57, 100
  %59 = call i32 @usb_pause_mtx(i32* %56, i32 %58)
  %60 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %61 = load i32, i32* @USS820_REV, align 4
  %62 = call i32 @USS820_READ_1(%struct.uss820dci_softc* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 19
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %67 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %66, i32 0, i32 0
  %68 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_6__* %67)
  %69 = load i32, i32* @USB_ERR_INVAL, align 4
  store i32 %69, i32* %2, align 4
  br label %279

70:                                               ; preds = %51
  %71 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %72 = load i32, i32* @USS820_SCR, align 4
  %73 = load i32, i32* @USS820_SCR_T_IRQ, align 4
  %74 = load i32, i32* @USS820_SCR_IE_RESET, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @USS820_SCR_IE_SUSP, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @USS820_SCR_IRQPOL, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %71, i32 %72, i32 %79)
  %81 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %82 = load i32, i32* @USS820_SCRATCH, align 4
  %83 = load i32, i32* @USS820_SCRATCH_IE_RESUME, align 4
  %84 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %81, i32 %82, i32 %83)
  %85 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %86 = load i32, i32* @USS820_MCSR, align 4
  %87 = load i32, i32* @USS820_MCSR_BDFEAT, align 4
  %88 = load i32, i32* @USS820_MCSR_FEAT, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %85, i32 %86, i32 %89)
  %91 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %92 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %95 = load i32, i32* @USS820_SBIE, align 4
  %96 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %94, i32 %95, i32 0)
  %97 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %98 = load i32, i32* @USS820_SBIE1, align 4
  %99 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %97, i32 %98, i32 0)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %112, %70
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @USS820_EP_MAX, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %106 = load i32, i32* @USS820_EPINDEX, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %110 = load i32, i32* @USS820_EPCON, align 4
  %111 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %109, i32 %110, i32 0, i32 0)
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %100

115:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %269, %115
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @USS820_EP_MAX, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %272

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @uss820dci_get_hw_ep_profile(i32* null, %struct.usb_hw_ep_profile** %4, i32 %121)
  %123 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %124 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %127 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %120
  %131 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %132 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %135 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %130, %120
  %139 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %140 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %185

143:                                              ; preds = %138
  %144 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %145 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sle i32 %146, 64
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i32, i32* @USS820_TXCON_FFSZ_16_64, align 4
  %150 = load i32, i32* @USS820_TXCON_TXISO, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @USS820_TXCON_ATM, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %6, align 4
  br label %184

154:                                              ; preds = %143
  %155 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %156 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sle i32 %157, 256
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load i32, i32* @USS820_TXCON_FFSZ_64_256, align 4
  %161 = load i32, i32* @USS820_TXCON_TXISO, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @USS820_TXCON_ATM, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %6, align 4
  br label %183

165:                                              ; preds = %154
  %166 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %167 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sle i32 %168, 512
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load i32, i32* @USS820_TXCON_FFSZ_8_512, align 4
  %172 = load i32, i32* @USS820_TXCON_TXISO, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @USS820_TXCON_ATM, align 4
  %175 = or i32 %173, %174
  store i32 %175, i32* %6, align 4
  br label %182

176:                                              ; preds = %165
  %177 = load i32, i32* @USS820_TXCON_FFSZ_32_1024, align 4
  %178 = load i32, i32* @USS820_TXCON_TXISO, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @USS820_TXCON_ATM, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %176, %170
  br label %183

183:                                              ; preds = %182, %159
  br label %184

184:                                              ; preds = %183, %148
  br label %231

185:                                              ; preds = %138
  %186 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %187 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sle i32 %188, 8
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %192 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32, i32* @USS820_TXCON_FFSZ_8_512, align 4
  %198 = load i32, i32* @USS820_TXCON_ATM, align 4
  %199 = or i32 %197, %198
  store i32 %199, i32* %6, align 4
  br label %230

200:                                              ; preds = %190, %185
  %201 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %202 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sle i32 %203, 16
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @USS820_TXCON_FFSZ_16_64, align 4
  %207 = load i32, i32* @USS820_TXCON_ATM, align 4
  %208 = or i32 %206, %207
  store i32 %208, i32* %6, align 4
  br label %229

209:                                              ; preds = %200
  %210 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %211 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp sle i32 %212, 32
  br i1 %213, label %214, label %224

214:                                              ; preds = %209
  %215 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %216 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %214
  %221 = load i32, i32* @USS820_TXCON_FFSZ_32_1024, align 4
  %222 = load i32, i32* @USS820_TXCON_ATM, align 4
  %223 = or i32 %221, %222
  store i32 %223, i32* %6, align 4
  br label %228

224:                                              ; preds = %214, %209
  %225 = load i32, i32* @USS820_TXCON_FFSZ_64_256, align 4
  %226 = load i32, i32* @USS820_TXCON_ATM, align 4
  %227 = or i32 %225, %226
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %224, %220
  br label %229

229:                                              ; preds = %228, %205
  br label %230

230:                                              ; preds = %229, %196
  br label %231

231:                                              ; preds = %230, %184
  %232 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %233 = load i32, i32* @USS820_EPINDEX, align 4
  %234 = load i32, i32* %5, align 4
  %235 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %232, i32 %233, i32 %234)
  %236 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %237 = load i32, i32* @USS820_TXCON, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %236, i32 %237, i32 %238)
  %240 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %241 = load i32, i32* @USS820_RXCON, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @USS820_WRITE_1(%struct.uss820dci_softc* %240, i32 %241, i32 %242)
  %244 = load %struct.usb_hw_ep_profile*, %struct.usb_hw_ep_profile** %4, align 8
  %245 = getelementptr inbounds %struct.usb_hw_ep_profile, %struct.usb_hw_ep_profile* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %231
  %249 = load i32, i32* @USS820_EPCON_CTLEP, align 4
  %250 = load i32, i32* @USS820_EPCON_RXSPM, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @USS820_EPCON_RXIE, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @USS820_EPCON_RXEPEN, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @USS820_EPCON_TXOE, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @USS820_EPCON_TXEPEN, align 4
  %259 = or i32 %257, %258
  store i32 %259, i32* %6, align 4
  br label %264

260:                                              ; preds = %231
  %261 = load i32, i32* @USS820_EPCON_RXEPEN, align 4
  %262 = load i32, i32* @USS820_EPCON_TXEPEN, align 4
  %263 = or i32 %261, %262
  store i32 %263, i32* %6, align 4
  br label %264

264:                                              ; preds = %260, %248
  %265 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %266 = load i32, i32* @USS820_EPCON, align 4
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @uss820dci_update_shared_1(%struct.uss820dci_softc* %265, i32 %266, i32 0, i32 %267)
  br label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %5, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %5, align 4
  br label %116

272:                                              ; preds = %116
  %273 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %274 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %273, i32 0, i32 0
  %275 = call i32 @USB_BUS_UNLOCK(%struct.TYPE_6__* %274)
  %276 = load %struct.uss820dci_softc*, %struct.uss820dci_softc** %3, align 8
  %277 = getelementptr inbounds %struct.uss820dci_softc, %struct.uss820dci_softc* %276, i32 0, i32 0
  %278 = call i32 @uss820dci_do_poll(%struct.TYPE_6__* %277)
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %272, %65, %41
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @USB_BUS_LOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @USS820_WRITE_1(%struct.uss820dci_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @USS820_READ_1(%struct.uss820dci_softc*, i32) #1

declare dso_local i32 @USB_BUS_UNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @uss820dci_pull_down(%struct.uss820dci_softc*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @uss820dci_update_shared_1(%struct.uss820dci_softc*, i32, i32, i32) #1

declare dso_local i32 @uss820dci_get_hw_ep_profile(i32*, %struct.usb_hw_ep_profile**, i32) #1

declare dso_local i32 @uss820dci_do_poll(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
