; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.run_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rt3572_def_rf = common dso_local global %struct.TYPE_4__* null, align 8
@rt3070_def_rf = common dso_local global %struct.TYPE_4__* null, align 8
@RT3070_LDO_CFG0 = common dso_local global i32 0, align 4
@RT3070_GPIO_SWITCH = common dso_local global i32 0, align 4
@RT3070_OPT_14 = common dso_local global i32 0, align 4
@RT3070_TX_LO1 = common dso_local global i32 0, align 4
@RT3070_RX0_PD = common dso_local global i32 0, align 4
@RT3070_TX0_PD = common dso_local global i32 0, align 4
@RT3070_RF_BLOCK = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT3070_TX_LO2 = common dso_local global i32 0, align 4
@RT3070_RX_LO1 = common dso_local global i32 0, align 4
@RT3070_RX_LO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.run_softc*)* @run_rt3070_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_rt3070_rf_init(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %9 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %10 = call i32 @run_rt3070_rf_read(%struct.run_softc* %9, i32 30, i32* %6)
  %11 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, 128
  %14 = call i32 @run_rt3070_rf_write(%struct.run_softc* %11, i32 30, i32 %13)
  %15 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %16 = call i32 @run_delay(%struct.run_softc* %15, i32 10)
  %17 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -129
  %20 = call i32 @run_rt3070_rf_write(%struct.run_softc* %17, i32 30, i32 %19)
  %21 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %22 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 13682
  br i1 %24, label %25, label %48

25:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt3572_def_rf, align 8
  %29 = call i64 @nitems(%struct.TYPE_4__* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt3572_def_rf, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt3572_def_rf, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @run_rt3070_rf_write(%struct.run_softc* %32, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %26

47:                                               ; preds = %26
  br label %71

48:                                               ; preds = %1
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %67, %48
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt3070_def_rf, align 8
  %52 = call i64 @nitems(%struct.TYPE_4__* %51)
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt3070_def_rf, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt3070_def_rf, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @run_rt3070_rf_write(%struct.run_softc* %55, i32 %60, i32 %65)
  br label %67

67:                                               ; preds = %54
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %49

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %47
  %72 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %73 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 12400
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %78 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 513
  br i1 %80, label %81, label %92

81:                                               ; preds = %76
  %82 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %83 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %84 = call i32 @run_read(%struct.run_softc* %82, i32 %83, i32* %3)
  %85 = load i32, i32* %3, align 4
  %86 = and i32 %85, -251658241
  %87 = or i32 %86, 218103808
  store i32 %87, i32* %3, align 4
  %88 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %89 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @run_write(%struct.run_softc* %88, i32 %89, i32 %90)
  br label %178

92:                                               ; preds = %76, %71
  %93 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %94 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 12401
  br i1 %96, label %97, label %134

97:                                               ; preds = %92
  %98 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %99 = call i32 @run_rt3070_rf_read(%struct.run_softc* %98, i32 6, i32* %6)
  %100 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, 64
  %103 = call i32 @run_rt3070_rf_write(%struct.run_softc* %100, i32 6, i32 %102)
  %104 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %105 = call i32 @run_rt3070_rf_write(%struct.run_softc* %104, i32 31, i32 20)
  %106 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %107 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %108 = call i32 @run_read(%struct.run_softc* %106, i32 %107, i32* %3)
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, -520093697
  store i32 %110, i32* %3, align 4
  %111 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %112 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 529
  br i1 %114, label %115, label %118

115:                                              ; preds = %97
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, 218103808
  store i32 %117, i32* %3, align 4
  br label %121

118:                                              ; preds = %97
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, 16777216
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %123 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @run_write(%struct.run_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %127 = load i32, i32* @RT3070_GPIO_SWITCH, align 4
  %128 = call i32 @run_read(%struct.run_softc* %126, i32 %127, i32* %3)
  %129 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %130 = load i32, i32* @RT3070_GPIO_SWITCH, align 4
  %131 = load i32, i32* %3, align 4
  %132 = and i32 %131, -33
  %133 = call i32 @run_write(%struct.run_softc* %129, i32 %130, i32 %132)
  br label %177

134:                                              ; preds = %92
  %135 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %136 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 13682
  br i1 %138, label %139, label %176

139:                                              ; preds = %134
  %140 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %141 = call i32 @run_rt3070_rf_read(%struct.run_softc* %140, i32 6, i32* %6)
  %142 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, 64
  %145 = call i32 @run_rt3070_rf_write(%struct.run_softc* %142, i32 6, i32 %144)
  %146 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %147 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %148 = call i32 @run_read(%struct.run_softc* %146, i32 %147, i32* %3)
  %149 = load i32, i32* %3, align 4
  %150 = and i32 %149, -520093697
  %151 = or i32 %150, 218103808
  store i32 %151, i32* %3, align 4
  %152 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %153 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @run_write(%struct.run_softc* %152, i32 %153, i32 %154)
  %156 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %157 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %158, 529
  br i1 %159, label %165, label %160

160:                                              ; preds = %139
  %161 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %162 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %160, %139
  %166 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %167 = call i32 @run_delay(%struct.run_softc* %166, i32 1)
  %168 = load i32, i32* %3, align 4
  %169 = and i32 %168, -520093697
  %170 = or i32 %169, 16777216
  store i32 %170, i32* %3, align 4
  %171 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %172 = load i32, i32* @RT3070_LDO_CFG0, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @run_write(%struct.run_softc* %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %165, %160
  br label %176

176:                                              ; preds = %175, %134
  br label %177

177:                                              ; preds = %176, %121
  br label %178

178:                                              ; preds = %177, %81
  %179 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %180 = call i32 @run_rt3070_rf_read(%struct.run_softc* %179, i32 31, i32* %6)
  %181 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %182 = load i32, i32* %6, align 4
  %183 = and i32 %182, -33
  %184 = call i32 @run_rt3070_rf_write(%struct.run_softc* %181, i32 31, i32 %183)
  %185 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %186 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %185, i32 0, i32 2
  store i32 31, i32* %186, align 4
  %187 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %188 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %189, 12401
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 22, i32 19
  store i32 %192, i32* %7, align 4
  %193 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %196 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %195, i32 0, i32 2
  %197 = call i32 @run_rt3070_filter_calib(%struct.run_softc* %193, i32 7, i32 %194, i32* %196)
  %198 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %199 = call i32 @run_bbp_read(%struct.run_softc* %198, i32 4, i32* %4)
  %200 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %201 = load i32, i32* %4, align 4
  %202 = and i32 %201, -25
  %203 = or i32 %202, 16
  %204 = call i32 @run_bbp_write(%struct.run_softc* %200, i32 4, i32 %203)
  %205 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %206 = call i32 @run_rt3070_rf_read(%struct.run_softc* %205, i32 31, i32* %6)
  %207 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %208 = load i32, i32* %6, align 4
  %209 = or i32 %208, 32
  %210 = call i32 @run_rt3070_rf_write(%struct.run_softc* %207, i32 31, i32 %209)
  %211 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %212 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %211, i32 0, i32 3
  store i32 47, i32* %212, align 4
  %213 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %214 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %215, 12401
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 25, i32 21
  store i32 %218, i32* %7, align 4
  %219 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %222 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %221, i32 0, i32 3
  %223 = call i32 @run_rt3070_filter_calib(%struct.run_softc* %219, i32 39, i32 %220, i32* %222)
  %224 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %225 = call i32 @run_bbp_read(%struct.run_softc* %224, i32 4, i32* %4)
  %226 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %227 = load i32, i32* %4, align 4
  %228 = and i32 %227, -25
  %229 = call i32 @run_bbp_write(%struct.run_softc* %226, i32 4, i32 %228)
  %230 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %231 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 13682
  br i1 %233, label %234, label %243

234:                                              ; preds = %178
  %235 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %236 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %237 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %236, i32 0, i32 4
  %238 = call i32 @run_bbp_read(%struct.run_softc* %235, i32 25, i32* %237)
  %239 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %240 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %241 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %240, i32 0, i32 5
  %242 = call i32 @run_bbp_read(%struct.run_softc* %239, i32 26, i32* %241)
  br label %257

243:                                              ; preds = %178
  %244 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %245 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp slt i32 %246, 513
  br i1 %247, label %253, label %248

248:                                              ; preds = %243
  %249 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %250 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = icmp slt i32 %251, 529
  br i1 %252, label %253, label %256

253:                                              ; preds = %248, %243
  %254 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %255 = call i32 @run_rt3070_rf_write(%struct.run_softc* %254, i32 27, i32 3)
  br label %256

256:                                              ; preds = %253, %248
  br label %257

257:                                              ; preds = %256, %234
  %258 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %259 = load i32, i32* @RT3070_OPT_14, align 4
  %260 = call i32 @run_read(%struct.run_softc* %258, i32 %259, i32* %3)
  %261 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %262 = load i32, i32* @RT3070_OPT_14, align 4
  %263 = load i32, i32* %3, align 4
  %264 = or i32 %263, 1
  %265 = call i32 @run_write(%struct.run_softc* %261, i32 %262, i32 %264)
  %266 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %267 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 12400
  br i1 %269, label %275, label %270

270:                                              ; preds = %257
  %271 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %272 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 12401
  br i1 %274, label %275, label %327

275:                                              ; preds = %270, %257
  %276 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %277 = call i32 @run_rt3070_rf_read(%struct.run_softc* %276, i32 17, i32* %6)
  %278 = load i32, i32* @RT3070_TX_LO1, align 4
  %279 = xor i32 %278, -1
  %280 = load i32, i32* %6, align 4
  %281 = and i32 %280, %279
  store i32 %281, i32* %6, align 4
  %282 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %283 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 12400
  br i1 %285, label %296, label %286

286:                                              ; preds = %275
  %287 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %288 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = icmp eq i32 %289, 12401
  br i1 %290, label %291, label %304

291:                                              ; preds = %286
  %292 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %293 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp sge i32 %294, 529
  br i1 %295, label %296, label %304

296:                                              ; preds = %291, %275
  %297 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %298 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %296
  %302 = load i32, i32* %6, align 4
  %303 = or i32 %302, 32
  store i32 %303, i32* %6, align 4
  br label %304

304:                                              ; preds = %301, %296, %291, %286
  %305 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %306 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 12400
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i32 1, i32 2
  store i32 %310, i32* %5, align 4
  %311 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %312 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %5, align 4
  %315 = icmp sge i32 %313, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %304
  %317 = load i32, i32* %6, align 4
  %318 = and i32 %317, -8
  %319 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %320 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %318, %321
  store i32 %322, i32* %6, align 4
  br label %323

323:                                              ; preds = %316, %304
  %324 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %325 = load i32, i32* %6, align 4
  %326 = call i32 @run_rt3070_rf_write(%struct.run_softc* %324, i32 17, i32 %325)
  br label %327

327:                                              ; preds = %323, %270
  %328 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %329 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 12401
  br i1 %331, label %332, label %375

332:                                              ; preds = %327
  %333 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %334 = call i32 @run_rt3070_rf_read(%struct.run_softc* %333, i32 1, i32* %6)
  %335 = load i32, i32* @RT3070_RX0_PD, align 4
  %336 = load i32, i32* @RT3070_TX0_PD, align 4
  %337 = or i32 %335, %336
  %338 = xor i32 %337, -1
  %339 = load i32, i32* %6, align 4
  %340 = and i32 %339, %338
  store i32 %340, i32* %6, align 4
  %341 = load i32, i32* @RT3070_RF_BLOCK, align 4
  %342 = load i32, i32* @RT3070_RX1_PD, align 4
  %343 = or i32 %341, %342
  %344 = load i32, i32* @RT3070_TX1_PD, align 4
  %345 = or i32 %343, %344
  %346 = load i32, i32* %6, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %6, align 4
  %348 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %349 = load i32, i32* %6, align 4
  %350 = call i32 @run_rt3070_rf_write(%struct.run_softc* %348, i32 1, i32 %349)
  %351 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %352 = call i32 @run_rt3070_rf_read(%struct.run_softc* %351, i32 15, i32* %6)
  %353 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* @RT3070_TX_LO2, align 4
  %356 = xor i32 %355, -1
  %357 = and i32 %354, %356
  %358 = call i32 @run_rt3070_rf_write(%struct.run_softc* %353, i32 15, i32 %357)
  %359 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %360 = call i32 @run_rt3070_rf_read(%struct.run_softc* %359, i32 20, i32* %6)
  %361 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* @RT3070_RX_LO1, align 4
  %364 = xor i32 %363, -1
  %365 = and i32 %362, %364
  %366 = call i32 @run_rt3070_rf_write(%struct.run_softc* %361, i32 20, i32 %365)
  %367 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %368 = call i32 @run_rt3070_rf_read(%struct.run_softc* %367, i32 21, i32* %6)
  %369 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %370 = load i32, i32* %6, align 4
  %371 = load i32, i32* @RT3070_RX_LO2, align 4
  %372 = xor i32 %371, -1
  %373 = and i32 %370, %372
  %374 = call i32 @run_rt3070_rf_write(%struct.run_softc* %369, i32 21, i32 %373)
  br label %375

375:                                              ; preds = %332, %327
  %376 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %377 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 12400
  br i1 %379, label %385, label %380

380:                                              ; preds = %375
  %381 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %382 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 12401
  br i1 %384, label %385, label %401

385:                                              ; preds = %380, %375
  %386 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %387 = call i32 @run_rt3070_rf_read(%struct.run_softc* %386, i32 27, i32* %6)
  %388 = load i32, i32* %6, align 4
  %389 = and i32 %388, -120
  store i32 %389, i32* %6, align 4
  %390 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %391 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = icmp slt i32 %392, 529
  br i1 %393, label %394, label %397

394:                                              ; preds = %385
  %395 = load i32, i32* %6, align 4
  %396 = or i32 %395, 3
  store i32 %396, i32* %6, align 4
  br label %397

397:                                              ; preds = %394, %385
  %398 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %399 = load i32, i32* %6, align 4
  %400 = call i32 @run_rt3070_rf_write(%struct.run_softc* %398, i32 27, i32 %399)
  br label %401

401:                                              ; preds = %397, %380
  ret i32 0
}

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i64 @nitems(%struct.TYPE_4__*) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_filter_calib(%struct.run_softc*, i32, i32, i32*) #1

declare dso_local i32 @run_bbp_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_bbp_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
