; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"multi-chip addressing mode (%#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"single-chip addressing mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"e6000sw\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"failed to parse DTS: no ports found for switch\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to parse DTS\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to init interface\0A\00", align 1
@PSC_CONTROL = common dso_local global i32 0, align 4
@PSC_CONTROL_LINK_UP = common dso_local global i32 0, align 4
@PSC_CONTROL_FORCED_LINK = common dso_local global i32 0, align 4
@PSC_CONTROL_SPD2500 = common dso_local global i32 0, align 4
@PSC_CONTROL_ALT_SPD = common dso_local global i32 0, align 4
@PSC_CONTROL_FORCED_FC = common dso_local global i32 0, align 4
@PSC_CONTROL_FC_ON = common dso_local global i32 0, align 4
@PSC_CONTROL_FORCED_EEE = common dso_local global i32 0, align 4
@PSC_CONTROL_SPD1000 = common dso_local global i32 0, align 4
@MV88E6190 = common dso_local global i32 0, align 4
@PSC_CONTROL_FORCED_DPX = common dso_local global i32 0, align 4
@PSC_CONTROL_FULLDPX = common dso_local global i32 0, align 4
@PSC_CONTROL_FORCED_SPD = common dso_local global i32 0, align 4
@MV88E6141 = common dso_local global i32 0, align 4
@MV88E6341 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to attach miibus\0A\00", align 1
@etherswitch_info = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@ETHERSWITCH_VLAN_PORT = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@SWITCH_GLOBAL_STATUS = common dso_local global i32 0, align 4
@SWITCH_GLOBAL_STATUS_IR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"switch is ready.\0A\00", align 1
@e6000sw_tick = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"e6000sw tick kproc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @e6000sw_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.TYPE_20__* @device_get_softc(i32 %11)
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = call i64 @MVSWITCH_MULTICHIP(%struct.TYPE_20__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 5
  %28 = call i32 @sx_init(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = call i32 @E6000SW_LOCK(%struct.TYPE_20__* %29)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = call i32 @e6000sw_setup(i32 %31, %struct.TYPE_20__* %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ofw_bus_find_child(i32 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %25
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (i32, i8*, ...) @device_printf(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %2, align 4
  br label %273

44:                                               ; preds = %25
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @OF_child(i64 %45)
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %234, %44
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %237

50:                                               ; preds = %47
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @e6000sw_parse_child_fdt(%struct.TYPE_20__* %51, i64 %52, i32* %9)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %267

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 1, %62
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @e6000sw_init_interface(%struct.TYPE_20__* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %267

78:                                               ; preds = %61
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @e6000sw_is_fixedport(%struct.TYPE_20__* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %216

83:                                               ; preds = %78
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @REG_PORT(%struct.TYPE_20__* %85, i32 %86)
  %88 = load i32, i32* @PSC_CONTROL, align 4
  %89 = call i32 @e6000sw_readreg(%struct.TYPE_20__* %84, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @PSC_CONTROL_LINK_UP, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* @PSC_CONTROL_FORCED_LINK, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @REG_PORT(%struct.TYPE_20__* %98, i32 %99)
  %101 = load i32, i32* @PSC_CONTROL, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @e6000sw_writereg(%struct.TYPE_20__* %97, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @PSC_CONTROL_SPD2500, align 4
  %105 = load i32, i32* @PSC_CONTROL_ALT_SPD, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @PSC_CONTROL_FORCED_FC, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @PSC_CONTROL_FC_ON, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @PSC_CONTROL_FORCED_EEE, align 4
  %112 = or i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %10, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @e6000sw_is_fixed25port(%struct.TYPE_20__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %83
  %121 = load i32, i32* @PSC_CONTROL_SPD2500, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %128

124:                                              ; preds = %83
  %125 = load i32, i32* @PSC_CONTROL_SPD1000, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = load i32, i32* @MV88E6190, align 4
  %131 = call i64 @MVSWITCH(%struct.TYPE_20__* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i64 @e6000sw_is_fixed25port(%struct.TYPE_20__* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i32, i32* @PSC_CONTROL_ALT_SPD, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %138, %133, %128
  %143 = load i32, i32* @PSC_CONTROL_FORCED_DPX, align 4
  %144 = load i32, i32* @PSC_CONTROL_FULLDPX, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @PSC_CONTROL_FORCED_LINK, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @PSC_CONTROL_LINK_UP, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @PSC_CONTROL_FORCED_SPD, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %155 = load i32, i32* @MV88E6190, align 4
  %156 = call i64 @MVSWITCH(%struct.TYPE_20__* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %142
  %159 = load i32, i32* @PSC_CONTROL_FORCED_FC, align 4
  %160 = load i32, i32* @PSC_CONTROL_FC_ON, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* %10, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %158, %142
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = load i32, i32* @MV88E6141, align 4
  %167 = call i64 @MVSWITCH(%struct.TYPE_20__* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = load i32, i32* @MV88E6341, align 4
  %172 = call i64 @MVSWITCH(%struct.TYPE_20__* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = load i32, i32* @MV88E6190, align 4
  %177 = call i64 @MVSWITCH(%struct.TYPE_20__* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174, %169, %164
  %180 = load i32, i32* @PSC_CONTROL_FORCED_EEE, align 4
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @REG_PORT(%struct.TYPE_20__* %185, i32 %186)
  %188 = load i32, i32* @PSC_CONTROL, align 4
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @e6000sw_writereg(%struct.TYPE_20__* %184, i32 %187, i32 %188, i32 %189)
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %192 = load i32, i32* @MV88E6190, align 4
  %193 = call i64 @MVSWITCH(%struct.TYPE_20__* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %215

195:                                              ; preds = %183
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %196, 9
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %9, align 4
  %200 = icmp eq i32 %199, 10
  br i1 %200, label %201, label %215

201:                                              ; preds = %198, %195
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i64 @e6000sw_is_fixed25port(%struct.TYPE_20__* %202, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  store i32 0, i32* %4, align 4
  br label %208

207:                                              ; preds = %201
  store i32 1, i32* %4, align 4
  br label %208

208:                                              ; preds = %207, %206
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @e6000sw_serdes_power(i32 %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %208, %198, %183
  br label %216

216:                                              ; preds = %215, %78
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @e6000sw_is_phyport(%struct.TYPE_20__* %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  br label %234

222:                                              ; preds = %216
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @e6000sw_attach_miibus(%struct.TYPE_20__* %223, i32 %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %222
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (i32, i8*, ...) @device_printf(i32 %231, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %267

233:                                              ; preds = %222
  br label %234

234:                                              ; preds = %233, %221
  %235 = load i64, i64* %6, align 8
  %236 = call i64 @OF_peer(i64 %235)
  store i64 %236, i64* %6, align 8
  br label %47

237:                                              ; preds = %47
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @etherswitch_info, i32 0, i32 0), align 4
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %242 = load i32, i32* @ETHERSWITCH_VLAN_PORT, align 4
  %243 = call i32 @e6000sw_set_vlan_mode(%struct.TYPE_20__* %241, i32 %242)
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %245 = load i32, i32* @REG_GLOBAL, align 4
  %246 = load i32, i32* @SWITCH_GLOBAL_STATUS, align 4
  %247 = call i32 @e6000sw_readreg(%struct.TYPE_20__* %244, i32 %245, i32 %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* @SWITCH_GLOBAL_STATUS_IR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %237
  %253 = load i32, i32* %3, align 4
  %254 = call i32 (i32, i8*, ...) @device_printf(i32 %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %255

255:                                              ; preds = %252, %237
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %257 = call i32 @E6000SW_UNLOCK(%struct.TYPE_20__* %256)
  %258 = load i32, i32* %3, align 4
  %259 = call i32 @bus_generic_probe(i32 %258)
  %260 = load i32, i32* %3, align 4
  %261 = call i32 @bus_generic_attach(i32 %260)
  %262 = load i32, i32* @e6000sw_tick, align 4
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 1
  %266 = call i32 @kproc_create(i32 %262, %struct.TYPE_20__* %263, i32* %265, i32 0, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %273

267:                                              ; preds = %228, %73, %56
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %269 = call i32 @E6000SW_UNLOCK(%struct.TYPE_20__* %268)
  %270 = load i32, i32* %3, align 4
  %271 = call i32 @e6000sw_detach(i32 %270)
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %2, align 4
  br label %273

273:                                              ; preds = %267, %255, %40
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local %struct.TYPE_20__* @device_get_softc(i32) #1

declare dso_local i64 @MVSWITCH_MULTICHIP(%struct.TYPE_20__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @E6000SW_LOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @e6000sw_setup(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @ofw_bus_find_child(i32, i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @e6000sw_parse_child_fdt(%struct.TYPE_20__*, i64, i32*) #1

declare dso_local i32 @e6000sw_init_interface(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @e6000sw_is_fixedport(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @e6000sw_readreg(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @REG_PORT(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @e6000sw_writereg(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i64 @e6000sw_is_fixed25port(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @MVSWITCH(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @e6000sw_serdes_power(i32, i32, i32) #1

declare dso_local i32 @e6000sw_is_phyport(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @e6000sw_attach_miibus(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @e6000sw_set_vlan_mode(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @E6000SW_UNLOCK(%struct.TYPE_20__*) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @kproc_create(i32, %struct.TYPE_20__*, i32*, i32, i32, i8*) #1

declare dso_local i32 @e6000sw_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
