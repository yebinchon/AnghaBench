; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_clear_stall_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_clear_stall_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@UE_CONTROL = common dso_local global i64 0, align 8
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i64 0, align 8
@MUSB2_REG_TXMAXP = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRH_TXMODE = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRH_TXISO = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXFIFONEMPTY = common dso_local global i64 0, align 8
@MUSB2_MASK_CSRL_TXFFLUSH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXDT_CLR = common dso_local global i32 0, align 4
@MUSB2_REG_TXDBDIS = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXSENTSTALL = common dso_local global i64 0, align 8
@MUSB2_REG_RXMAXP = common dso_local global i32 0, align 4
@MUSB2_REG_RXCSRH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRH_RXNYET = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRH_RXISO = common dso_local global i32 0, align 4
@MUSB2_REG_RXCSRL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_RXPKTRDY = common dso_local global i64 0, align 8
@MUSB2_MASK_CSRL_RXFFLUSH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_RXDT_CLR = common dso_local global i32 0, align 4
@MUSB2_REG_RXDBDIS = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_RXSENTSTALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musbotg_softc*, i32, i64, i64, i64)* @musbotg_clear_stall_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_clear_stall_sub(%struct.musbotg_softc* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.musbotg_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @UE_CONTROL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %277

18:                                               ; preds = %5
  %19 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %20 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %21 = load i64, i64* %8, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %19, i32 %20, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 2047
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 11
  %28 = and i32 %27, 3
  switch i32 %28, label %35 [
    i32 1, label %29
    i32 2, label %32
  ]

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 %30, 2
  store i32 %31, i32* %11, align 4
  br label %36

32:                                               ; preds = %18
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 3
  store i32 %34, i32* %11, align 4
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %32, %29
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @UE_DIR_IN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %161

40:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  %41 = load i64, i64* %9, align 8
  switch i64 %41, label %77 [
    i64 129, label %42
    i64 128, label %53
    i64 130, label %66
  ]

42:                                               ; preds = %40
  %43 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %44 = load i32, i32* @MUSB2_REG_TXMAXP, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %48 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %49 = load i32, i32* @MUSB2_MASK_CSRH_TXMODE, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %47, i32 %48, i32 %51)
  br label %78

53:                                               ; preds = %40
  %54 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %55 = load i32, i32* @MUSB2_REG_TXMAXP, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %59 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %60 = load i32, i32* @MUSB2_MASK_CSRH_TXMODE, align 4
  %61 = load i32, i32* @MUSB2_MASK_CSRH_TXISO, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %58, i32 %59, i32 %64)
  br label %78

66:                                               ; preds = %40
  %67 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %68 = load i32, i32* @MUSB2_REG_TXMAXP, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %72 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %73 = load i32, i32* @MUSB2_MASK_CSRH_TXMODE, align 4
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %71, i32 %72, i32 %75)
  br label %78

77:                                               ; preds = %40
  br label %78

78:                                               ; preds = %77, %66, %53, %42
  %79 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %80 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %81 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %79, i32 %80)
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* @MUSB2_MASK_CSRL_TXFIFONEMPTY, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %78
  %87 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %88 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %89 = load i32, i32* @MUSB2_MASK_CSRL_TXFFLUSH, align 4
  %90 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %92 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %93 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %91, i32 %92)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* @MUSB2_MASK_CSRL_TXFIFONEMPTY, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %86
  %99 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %100 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %101 = load i32, i32* @MUSB2_MASK_CSRL_TXFFLUSH, align 4
  %102 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %104 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %105 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %103, i32 %104)
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %98, %86
  br label %107

107:                                              ; preds = %106, %78
  %108 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %109 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %110 = load i32, i32* @MUSB2_MASK_CSRL_TXDT_CLR, align 4
  %111 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %108, i32 %109, i32 %110)
  %112 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %113 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %114 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %112, i32 %113, i32 0)
  %115 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %116 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %117 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %115, i32 %116)
  store i64 %117, i64* %13, align 8
  %118 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %119 = load i32, i32* @MUSB2_REG_TXDBDIS, align 4
  %120 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %123 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %128, 2
  %130 = icmp sle i32 %121, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %107
  %132 = load i64, i64* %8, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 1, %133
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %12, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %12, align 4
  br label %144

138:                                              ; preds = %107
  %139 = load i64, i64* %8, align 8
  %140 = trunc i64 %139 to i32
  %141 = shl i32 1, %140
  %142 = load i32, i32* %12, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %138, %131
  %145 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %146 = load i32, i32* @MUSB2_REG_TXDBDIS, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %145, i32 %146, i32 %147)
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* @MUSB2_MASK_CSRL_TXSENTSTALL, align 8
  %151 = and i64 %149, %150
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %144
  %154 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %155 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %156 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %154, i32 %155, i32 0)
  %157 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %158 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %159 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %157, i32 %158)
  store i64 %159, i64* %13, align 8
  br label %160

160:                                              ; preds = %153, %144
  br label %277

161:                                              ; preds = %36
  store i32 0, i32* %12, align 4
  %162 = load i64, i64* %9, align 8
  switch i64 %162, label %196 [
    i64 129, label %163
    i64 128, label %174
    i64 130, label %187
  ]

163:                                              ; preds = %161
  %164 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %165 = load i32, i32* @MUSB2_REG_RXMAXP, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %164, i32 %165, i32 %166)
  %168 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %169 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %170 = load i32, i32* @MUSB2_MASK_CSRH_RXNYET, align 4
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %168, i32 %169, i32 %172)
  br label %197

174:                                              ; preds = %161
  %175 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %176 = load i32, i32* @MUSB2_REG_RXMAXP, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %175, i32 %176, i32 %177)
  %179 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %180 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %181 = load i32, i32* @MUSB2_MASK_CSRH_RXNYET, align 4
  %182 = load i32, i32* @MUSB2_MASK_CSRH_RXISO, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* %12, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %179, i32 %180, i32 %185)
  br label %197

187:                                              ; preds = %161
  %188 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %189 = load i32, i32* @MUSB2_REG_RXMAXP, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %188, i32 %189, i32 %190)
  %192 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %193 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %192, i32 %193, i32 %194)
  br label %197

196:                                              ; preds = %161
  br label %197

197:                                              ; preds = %196, %187, %174, %163
  %198 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %199 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %200 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %198, i32 %199)
  store i64 %200, i64* %13, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* @MUSB2_MASK_CSRL_RXPKTRDY, align 8
  %203 = and i64 %201, %202
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %226

205:                                              ; preds = %197
  %206 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %207 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %208 = load i32, i32* @MUSB2_MASK_CSRL_RXFFLUSH, align 4
  %209 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %206, i32 %207, i32 %208)
  %210 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %211 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %212 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %210, i32 %211)
  store i64 %212, i64* %13, align 8
  %213 = load i64, i64* %13, align 8
  %214 = load i64, i64* @MUSB2_MASK_CSRL_RXPKTRDY, align 8
  %215 = and i64 %213, %214
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %205
  %218 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %219 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %220 = load i32, i32* @MUSB2_MASK_CSRL_RXFFLUSH, align 4
  %221 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %218, i32 %219, i32 %220)
  %222 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %223 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %224 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %222, i32 %223)
  store i64 %224, i64* %13, align 8
  br label %225

225:                                              ; preds = %217, %205
  br label %226

226:                                              ; preds = %225, %197
  %227 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %228 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %229 = load i32, i32* @MUSB2_MASK_CSRL_RXDT_CLR, align 4
  %230 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %227, i32 %228, i32 %229)
  %231 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %232 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %233 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %231, i32 %232, i32 0)
  %234 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %235 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %236 = call i64 @MUSB2_READ_1(%struct.musbotg_softc* %234, i32 %235)
  store i64 %236, i64* %13, align 8
  %237 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %238 = load i32, i32* @MUSB2_REG_RXDBDIS, align 4
  %239 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %237, i32 %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %11, align 4
  %241 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %242 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %241, i32 0, i32 0
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = load i64, i64* %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = sdiv i32 %247, 2
  %249 = icmp sle i32 %240, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %226
  %251 = load i64, i64* %8, align 8
  %252 = trunc i64 %251 to i32
  %253 = shl i32 1, %252
  %254 = xor i32 %253, -1
  %255 = load i32, i32* %12, align 4
  %256 = and i32 %255, %254
  store i32 %256, i32* %12, align 4
  br label %263

257:                                              ; preds = %226
  %258 = load i64, i64* %8, align 8
  %259 = trunc i64 %258 to i32
  %260 = shl i32 1, %259
  %261 = load i32, i32* %12, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %12, align 4
  br label %263

263:                                              ; preds = %257, %250
  %264 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %265 = load i32, i32* @MUSB2_REG_RXDBDIS, align 4
  %266 = load i32, i32* %12, align 4
  %267 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %264, i32 %265, i32 %266)
  %268 = load i64, i64* %13, align 8
  %269 = load i64, i64* @MUSB2_MASK_CSRL_RXSENTSTALL, align 8
  %270 = and i64 %268, %269
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %263
  %273 = load %struct.musbotg_softc*, %struct.musbotg_softc** %6, align 8
  %274 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %275 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %273, i32 %274, i32 0)
  br label %276

276:                                              ; preds = %272, %263
  br label %277

277:                                              ; preds = %17, %276, %160
  ret void
}

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_WRITE_2(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i64 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @MUSB2_READ_2(%struct.musbotg_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
