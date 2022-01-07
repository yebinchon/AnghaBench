; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MUSB2_REG_INTUSB = common dso_local global i32 0, align 4
@MUSB2_REG_INTRX = common dso_local global i32 0, align 4
@MUSB2_REG_INTTX = common dso_local global i32 0, align 4
@MUSB2_MASK_IRESET = common dso_local global i32 0, align 4
@MUSB2_MASK_IRESUME = common dso_local global i32 0, align 4
@MUSB2_MASK_ISUSP = common dso_local global i32 0, align 4
@MUSB2_MASK_ICONN = common dso_local global i32 0, align 4
@MUSB2_MASK_IDISC = common dso_local global i32 0, align 4
@MUSB2_MASK_IVBUSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"real bus interrupt 0x%08x\0A\00", align 1
@MUSB2_REG_POWER = common dso_local global i32 0, align 4
@MUSB2_MASK_HSMODE = common dso_local global i32 0, align 4
@MUSB2_REG_INTUSBE = common dso_local global i32 0, align 4
@MUSB2_REG_INTTXE = common dso_local global i32 0, align 4
@MUSB2_REG_INTRXE = common dso_local global i32 0, align 4
@MUSB2_HOST_MODE = common dso_local global i64 0, align 8
@MUSB2_REG_DEVCTL = common dso_local global i32 0, align 4
@MUSB2_MASK_SESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"real endpoint interrupt rx=0x%04x, tx=0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musbotg_interrupt(%struct.musbotg_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 2, i32* %13, align 4
  %14 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %15 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %14, i32 0, i32 1
  %16 = call i32 @USB_BUS_LOCK(i32* %15)
  br label %17

17:                                               ; preds = %242, %4
  %18 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %19 = load i32, i32* @MUSB2_REG_INTUSB, align 4
  %20 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %22 = load i32, i32* @MUSB2_REG_INTRX, align 4
  %23 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %25 = load i32, i32* @MUSB2_REG_INTTX, align 4
  %26 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %10, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MUSB2_MASK_IRESET, align 4
  %38 = load i32, i32* @MUSB2_MASK_IRESUME, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MUSB2_MASK_ISUSP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @MUSB2_MASK_ICONN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @MUSB2_MASK_IDISC, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MUSB2_MASK_IVBUSERR, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %36, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %226

50:                                               ; preds = %17
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @MUSB2_MASK_IRESET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %104

57:                                               ; preds = %50
  %58 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %59 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %62 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %65 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  store i32 0, i32* %66, align 4
  %67 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %68 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %71 = load i32, i32* @MUSB2_REG_POWER, align 4
  %72 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @MUSB2_MASK_HSMODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %57
  %78 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %79 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  store i32 1, i32* %80, align 4
  br label %85

81:                                               ; preds = %57
  %82 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %83 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 4
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* @MUSB2_MASK_IRESET, align 4
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* @MUSB2_MASK_IRESUME, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @MUSB2_MASK_ISUSP, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %95 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %94, i32 %95, i32 %96)
  %98 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %99 = load i32, i32* @MUSB2_REG_INTTXE, align 4
  %100 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %98, i32 %99, i32 0)
  %101 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %102 = load i32, i32* @MUSB2_REG_INTRXE, align 4
  %103 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %85, %50
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @MUSB2_MASK_IRESUME, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %104
  %110 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %111 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %117 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %120 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 4
  %122 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %123 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %124 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %122, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* @MUSB2_MASK_IRESUME, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %12, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @MUSB2_MASK_ISUSP, align 4
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %133 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %115, %109
  br label %171

137:                                              ; preds = %104
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @MUSB2_MASK_ISUSP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %137
  %143 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %144 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %169, label %148

148:                                              ; preds = %142
  %149 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %150 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  %152 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %153 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  store i32 1, i32* %154, align 4
  %155 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %156 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %157 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %155, i32 %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* @MUSB2_MASK_ISUSP, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %12, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* @MUSB2_MASK_IRESUME, align 4
  %163 = load i32, i32* %12, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %12, align 4
  %165 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %166 = load i32, i32* @MUSB2_REG_INTUSBE, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %148, %142
  br label %170

170:                                              ; preds = %169, %137
  br label %171

171:                                              ; preds = %170, %136
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @MUSB2_MASK_ICONN, align 4
  %174 = load i32, i32* @MUSB2_MASK_IDISC, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %180 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %178, %171
  %183 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %184 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @MUSB2_HOST_MODE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %223

188:                                              ; preds = %182
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @MUSB2_MASK_IVBUSERR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %195 = load i32, i32* @MUSB2_REG_DEVCTL, align 4
  %196 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %194, i32 %195)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* @MUSB2_MASK_SESS, align 4
  %198 = load i32, i32* %12, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %12, align 4
  %200 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %201 = load i32, i32* @MUSB2_REG_DEVCTL, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %193, %188
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @MUSB2_MASK_ICONN, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %204
  %210 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %211 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i32 1, i32* %212, align 4
  br label %213

213:                                              ; preds = %209, %204
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* @MUSB2_MASK_IDISC, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %220 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  store i32 0, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %213
  br label %223

223:                                              ; preds = %222, %182
  %224 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %225 = call i32 @musbotg_root_intr(%struct.musbotg_softc* %224)
  br label %226

226:                                              ; preds = %223, %17
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %229, %226
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %10, align 4
  %235 = call i32 (i32, i8*, i32, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %229
  %237 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %238 = call i32 @musbotg_interrupt_poll(%struct.musbotg_softc* %237)
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %17

243:                                              ; preds = %236
  %244 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %245 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %244, i32 0, i32 1
  %246 = call i32 @USB_BUS_UNLOCK(i32* %245)
  ret void
}

declare dso_local i32 @USB_BUS_LOCK(i32*) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @MUSB2_READ_2(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, ...) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_WRITE_2(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @musbotg_root_intr(%struct.musbotg_softc*) #1

declare dso_local i32 @musbotg_interrupt_poll(%struct.musbotg_softc*) #1

declare dso_local i32 @USB_BUS_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
