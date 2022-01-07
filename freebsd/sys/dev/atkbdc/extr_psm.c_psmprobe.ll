; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_psmprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 (%struct.psm_softc*, i32)* }
%struct.psm_softc = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@KBDC_RID_AUX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unable to allocate IRQ\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PSM_CONFIG_FLAGS = common dso_local global i32 0, align 4
@PSM_NOMUX = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"PS/2 Mouse\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"psm%d: unable to lock the controller.\0A\00", align 1
@KBD_AUX_CONTROL_BITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"psm%d: current command byte:%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"psm%d: unable to get the current command byte value.\0A\00", align 1
@KBD_KBD_CONTROL_BITS = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_KBD_INT = common dso_local global i32 0, align 4
@KBD_ENABLE_AUX_PORT = common dso_local global i32 0, align 4
@KBD_DISABLE_AUX_INT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"psm%d: unable to set the command byte.\0A\00", align 1
@KBDC_ENABLE_AUX_PORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"psm%d: strange result for test aux port (%d).\0A\00", align 1
@PSM_CONFIG_IGNPORTERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"psm%d: the aux port is not functioning (%d).\0A\00", align 1
@PSM_CONFIG_NORESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"psm%d: failed to reset the aux device.\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"psm%d: failed to reset the aux device (2).\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"psm%d: failed to enable the aux device.\0A\00", align 1
@MOUSE_IF_PS2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"psm%d: unknown device type (%d).\0A\00", align 1
@MOUSE_TRACKBALL = common dso_local global i32 0, align 4
@MOUSE_MOUSE = common dso_local global i32 0, align 4
@MOUSE_UNKNOWN = common dso_local global i32 0, align 4
@PSM_CONFIG_NOIDPROBE = common dso_local global i32 0, align 4
@GENERIC_MOUSE_ENTRY = common dso_local global i32 0, align 4
@vendortype = common dso_local global %struct.TYPE_6__* null, align 8
@PROBE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"psm%d: found %s\0A\00", align 1
@PSM_LEVEL_BASE = common dso_local global i32 0, align 4
@MOUSE_PS2_PACKETSIZE = common dso_local global i32 0, align 4
@PSM_CONFIG_ACCEL = common dso_local global i32 0, align 4
@PSM_CONFIG_NOCHECKSYNC = common dso_local global i32 0, align 4
@PSM_CONFIG_FORCETAP = common dso_local global i32 0, align 4
@MOUSE_PS2_TAP = common dso_local global i32 0, align 4
@PSM_CONFIG_RESOLUTION = common dso_local global i32 0, align 4
@PSM_NEED_SYNCBITS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"psm%d: failed to get status.\0A\00", align 1
@KBD_DISABLE_AUX_PORT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PSMC_SET_DEFAULTS = common dso_local global i32 0, align 4
@PSM_CONFIG_HOOKRESUME = common dso_local global i32 0, align 4
@PSM_CONFIG_INITAFTERSUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @psmprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmprobe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.psm_softc*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_get_unit(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.psm_softc* @device_get_softc(i32 %13)
  store %struct.psm_softc* %14, %struct.psm_softc** %5, align 8
  %15 = load i32, i32* @KBDC_RID_AUX, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SYS_RES_IRQ, align 4
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = call i32* @bus_alloc_resource_any(i32 %16, i32 %17, i32* %9, i32 %18)
  %20 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %21 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %20, i32 0, i32 8
  store i32* %19, i32** %21, align 8
  %22 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 8
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %2, align 4
  br label %686

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SYS_RES_IRQ, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %39 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @bus_release_resource(i32 %35, i32 %36, i32 %37, i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %44 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_get_parent(i32 %45)
  %47 = call i32 @device_get_unit(i32 %46)
  %48 = call i32 @atkbdc_open(i32 %47)
  %49 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %50 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_get_flags(i32 %51)
  %53 = load i32, i32* @PSM_CONFIG_FLAGS, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %56 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %58 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %57, i32 0, i32 5
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* @PSM_NOMUX, align 4
  %60 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %61 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* @bootverbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %34
  %65 = load i32, i32* @verbose, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @verbose, align 4
  br label %67

67:                                               ; preds = %64, %34
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_set_desc(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %71 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = call i32 @kbdc_lock(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* @verbose, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* @verbose, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %686

86:                                               ; preds = %67
  %87 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %88 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @empty_both_buffers(i32 %89, i32 10)
  %91 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %92 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @kbdc_get_device_mask(i32 %93)
  %95 = load i32, i32* @KBD_AUX_CONTROL_BITS, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  store i32 %97, i32* %8, align 4
  %98 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %99 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @get_controller_command_byte(i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @verbose, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %86
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %86
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @ENXIO, align 4
  %115 = call i32 @endprobe(i32 %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %118 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %121 = load i32, i32* @KBD_AUX_CONTROL_BITS, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @KBD_DISABLE_KBD_PORT, align 4
  %124 = load i32, i32* @KBD_DISABLE_KBD_INT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @KBD_ENABLE_AUX_PORT, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @KBD_DISABLE_AUX_INT, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @set_controller_command_byte(i32 %119, i32 %122, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %116
  %133 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %134 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @ALWAYS_RESTORE_CONTROLLER(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %140 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @restore_controller(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %132
  %145 = load i32, i32* %4, align 4
  %146 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @ENXIO, align 4
  %148 = call i32 @endprobe(i32 %147)
  br label %149

149:                                              ; preds = %144, %116
  %150 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %151 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @KBDC_ENABLE_AUX_PORT, align 4
  %154 = call i32 @write_controller_command(i32 %152, i32 %153)
  %155 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %156 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @test_aux_port(i32 %157)
  store i32 %158, i32* %10, align 4
  switch i32 %158, label %169 [
    i32 1, label %159
    i32 2, label %159
    i32 3, label %159
    i32 132, label %159
    i32 0, label %167
    i32 -1, label %168
  ]

159:                                              ; preds = %149, %149, %149, %149
  %160 = load i32, i32* @verbose, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %162, %159
  br label %167

167:                                              ; preds = %149, %166
  br label %203

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %149, %168
  %170 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %171 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @recover_from_error(i32 %172)
  %174 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %175 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @PSM_CONFIG_IGNPORTERROR, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %169
  br label %203

181:                                              ; preds = %169
  %182 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %183 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @ALWAYS_RESTORE_CONTROLLER(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %189 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @restore_controller(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %181
  %194 = load i32, i32* @verbose, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i32, i32* %4, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %196, %193
  %201 = load i32, i32* @ENXIO, align 4
  %202 = call i32 @endprobe(i32 %201)
  br label %203

203:                                              ; preds = %200, %180, %167
  %204 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %205 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @PSM_CONFIG_NORESET, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %261

211:                                              ; preds = %203
  %212 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %213 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @reset_aux_dev(i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %242, label %217

217:                                              ; preds = %211
  %218 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %219 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @recover_from_error(i32 %220)
  %222 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %223 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @ALWAYS_RESTORE_CONTROLLER(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %217
  %228 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %229 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @restore_controller(i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %227, %217
  %234 = load i32, i32* @verbose, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32, i32* %4, align 4
  %238 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* @ENXIO, align 4
  %241 = call i32 @endprobe(i32 %240)
  br label %260

242:                                              ; preds = %211
  %243 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %244 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @reset_aux_dev(i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %259, label %248

248:                                              ; preds = %242
  %249 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %250 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @recover_from_error(i32 %251)
  %253 = load i32, i32* @verbose, align 4
  %254 = icmp sge i32 %253, 2
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load i32, i32* %4, align 4
  %257 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %255, %248
  br label %259

259:                                              ; preds = %258, %242
  br label %260

260:                                              ; preds = %259, %239
  br label %261

261:                                              ; preds = %260, %210
  %262 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %263 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @enable_aux_dev(i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %261
  %268 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %269 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @disable_aux_dev(i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %298, label %273

273:                                              ; preds = %267, %261
  %274 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %275 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @recover_from_error(i32 %276)
  %278 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %279 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i64 @ALWAYS_RESTORE_CONTROLLER(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %273
  %284 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %285 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %7, align 4
  %288 = call i32 @restore_controller(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %283, %273
  %290 = load i32, i32* @verbose, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i32, i32* %4, align 4
  %294 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i32, i32* @ENXIO, align 4
  %297 = call i32 @endprobe(i32 %296)
  br label %298

298:                                              ; preds = %295, %267
  %299 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %300 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %303 = call i32 @get_mouse_status(i32 %301, i32* %302, i32 0, i32 3)
  %304 = icmp sge i32 %303, 3
  br i1 %304, label %305, label %322

305:                                              ; preds = %298
  %306 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %309 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i32 0, i32 0
  store i32 %307, i32* %310, align 8
  %311 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %312 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  store i32 %307, i32* %313, align 8
  %314 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %317 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  store i32 %315, i32* %318, align 4
  %319 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %320 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  store i32 %315, i32* %321, align 4
  br label %335

322:                                              ; preds = %298
  %323 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %324 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  store i32 -1, i32* %325, align 8
  %326 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %327 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  store i32 -1, i32* %328, align 8
  %329 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %330 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  store i32 -1, i32* %331, align 4
  %332 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %333 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %332, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 1
  store i32 -1, i32* %334, align 4
  br label %335

335:                                              ; preds = %322, %305
  %336 = load i32, i32* @MOUSE_IF_PS2, align 4
  %337 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %338 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %337, i32 0, i32 6
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 4
  store i32 %336, i32* %339, align 4
  %340 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %341 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @get_aux_id(i32 %342)
  %344 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %345 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %344, i32 0, i32 6
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  store i32 %343, i32* %346, align 4
  %347 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %348 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %347, i32 0, i32 6
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @is_a_mouse(i32 %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %378, label %353

353:                                              ; preds = %335
  %354 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %355 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = call i64 @ALWAYS_RESTORE_CONTROLLER(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %353
  %360 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %361 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* %7, align 4
  %364 = call i32 @restore_controller(i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %359, %353
  %366 = load i32, i32* @verbose, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %365
  %369 = load i32, i32* %4, align 4
  %370 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %371 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %370, i32 0, i32 6
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %369, i32 %373)
  br label %375

375:                                              ; preds = %368, %365
  %376 = load i32, i32* @ENXIO, align 4
  %377 = call i32 @endprobe(i32 %376)
  br label %378

378:                                              ; preds = %375, %335
  %379 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %380 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %379, i32 0, i32 6
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  switch i32 %382, label %393 [
    i32 131, label %383
    i32 128, label %388
    i32 129, label %388
    i32 130, label %388
    i32 134, label %388
    i32 133, label %388
  ]

383:                                              ; preds = %378
  %384 = load i32, i32* @MOUSE_TRACKBALL, align 4
  %385 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %386 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %385, i32 0, i32 6
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 3
  store i32 %384, i32* %387, align 4
  br label %398

388:                                              ; preds = %378, %378, %378, %378, %378
  %389 = load i32, i32* @MOUSE_MOUSE, align 4
  %390 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %391 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %390, i32 0, i32 6
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 3
  store i32 %389, i32* %392, align 4
  br label %398

393:                                              ; preds = %378
  %394 = load i32, i32* @MOUSE_UNKNOWN, align 4
  %395 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %396 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %395, i32 0, i32 6
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 3
  store i32 %394, i32* %397, align 4
  br label %398

398:                                              ; preds = %393, %388, %383
  %399 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %400 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @PSM_CONFIG_NOIDPROBE, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %398
  %406 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %407 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %406, i32 0, i32 6
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 1
  store i32 2, i32* %408, align 4
  %409 = load i32, i32* @GENERIC_MOUSE_ENTRY, align 4
  store i32 %409, i32* %10, align 4
  br label %456

410:                                              ; preds = %398
  %411 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %412 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @get_mouse_buttons(i32 %413)
  %415 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %416 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %415, i32 0, i32 6
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 1
  store i32 %414, i32* %417, align 4
  store i32 0, i32* %10, align 4
  br label %418

418:                                              ; preds = %452, %410
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vendortype, align 8
  %420 = load i32, i32* %10, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %422, i32 0, i32 3
  %424 = load i64 (%struct.psm_softc*, i32)*, i64 (%struct.psm_softc*, i32)** %423, align 8
  %425 = icmp ne i64 (%struct.psm_softc*, i32)* %424, null
  br i1 %425, label %426, label %455

426:                                              ; preds = %418
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vendortype, align 8
  %428 = load i32, i32* %10, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 3
  %432 = load i64 (%struct.psm_softc*, i32)*, i64 (%struct.psm_softc*, i32)** %431, align 8
  %433 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %434 = load i32, i32* @PROBE, align 4
  %435 = call i64 %432(%struct.psm_softc* %433, i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %451

437:                                              ; preds = %426
  %438 = load i32, i32* @verbose, align 4
  %439 = icmp sge i32 %438, 2
  br i1 %439, label %440, label %450

440:                                              ; preds = %437
  %441 = load i32, i32* %4, align 4
  %442 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vendortype, align 8
  %443 = load i32, i32* %10, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = call i8* @model_name(i32 %447)
  %449 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %441, i8* %448)
  br label %450

450:                                              ; preds = %440, %437
  br label %455

451:                                              ; preds = %426
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %10, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %10, align 4
  br label %418

455:                                              ; preds = %450, %418
  br label %456

456:                                              ; preds = %455, %405
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vendortype, align 8
  %458 = load i32, i32* %10, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %464 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %463, i32 0, i32 6
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 2
  store i32 %462, i32* %465, align 4
  %466 = load i32, i32* @PSM_LEVEL_BASE, align 4
  %467 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %468 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %467, i32 0, i32 4
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 5
  store i32 %466, i32* %469, align 8
  %470 = load i32, i32* @MOUSE_PS2_PACKETSIZE, align 4
  %471 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %472 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %471, i32 0, i32 4
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 3
  store i32 %470, i32* %473, align 4
  %474 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %475 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @PSM_CONFIG_ACCEL, align 4
  %478 = and i32 %476, %477
  %479 = ashr i32 %478, 4
  %480 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %481 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %480, i32 0, i32 4
  %482 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %481, i32 0, i32 2
  store i32 %479, i32* %482, align 8
  %483 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %484 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @PSM_CONFIG_NOCHECKSYNC, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %456
  %490 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %491 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %490, i32 0, i32 4
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 4
  %493 = load i32*, i32** %492, align 8
  %494 = getelementptr inbounds i32, i32* %493, i64 0
  store i32 0, i32* %494, align 4
  br label %507

495:                                              ; preds = %456
  %496 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vendortype, align 8
  %497 = load i32, i32* %10, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %503 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %502, i32 0, i32 4
  %504 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %503, i32 0, i32 4
  %505 = load i32*, i32** %504, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 0
  store i32 %501, i32* %506, align 4
  br label %507

507:                                              ; preds = %495, %489
  %508 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %509 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* @PSM_CONFIG_FORCETAP, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %524

514:                                              ; preds = %507
  %515 = load i32, i32* @MOUSE_PS2_TAP, align 4
  %516 = xor i32 %515, -1
  %517 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %518 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %517, i32 0, i32 4
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 4
  %520 = load i32*, i32** %519, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 0
  %522 = load i32, i32* %521, align 4
  %523 = and i32 %522, %516
  store i32 %523, i32* %521, align 4
  br label %524

524:                                              ; preds = %514, %507
  %525 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %526 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %525, i32 0, i32 4
  %527 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %526, i32 0, i32 4
  %528 = load i32*, i32** %527, align 8
  %529 = getelementptr inbounds i32, i32* %528, i64 1
  store i32 0, i32* %529, align 4
  %530 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %531 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %530, i32 0, i32 3
  %532 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %533 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %532, i32 0, i32 4
  %534 = bitcast %struct.TYPE_5__* %531 to i8*
  %535 = bitcast %struct.TYPE_5__* %533 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %534, i8* align 8 %535, i64 32, i1 false)
  %536 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vendortype, align 8
  %537 = load i32, i32* %10, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %543 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %542, i32 0, i32 3
  %544 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %543, i32 0, i32 3
  store i32 %541, i32* %544, align 4
  %545 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %546 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* @PSM_CONFIG_RESOLUTION, align 4
  %549 = and i32 %547, %548
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %566

551:                                              ; preds = %524
  %552 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %553 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 8
  %555 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %556 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = load i32, i32* @PSM_CONFIG_RESOLUTION, align 4
  %559 = and i32 %557, %558
  %560 = sub nsw i32 %559, 1
  %561 = call i8* @set_mouse_resolution(i32 %554, i32 %560)
  %562 = ptrtoint i8* %561 to i32
  %563 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %564 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %563, i32 0, i32 3
  %565 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %564, i32 0, i32 1
  store i32 %562, i32* %565, align 4
  br label %586

566:                                              ; preds = %524
  %567 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %568 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %567, i32 0, i32 3
  %569 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = icmp sge i32 %570, 0
  br i1 %571, label %572, label %585

572:                                              ; preds = %566
  %573 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %574 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %573, i32 0, i32 2
  %575 = load i32, i32* %574, align 8
  %576 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %577 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %576, i32 0, i32 4
  %578 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = call i8* @set_mouse_resolution(i32 %575, i32 %579)
  %581 = ptrtoint i8* %580 to i32
  %582 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %583 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %582, i32 0, i32 3
  %584 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %583, i32 0, i32 1
  store i32 %581, i32* %584, align 4
  br label %585

585:                                              ; preds = %572, %566
  br label %586

586:                                              ; preds = %585, %551
  %587 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %588 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %587, i32 0, i32 3
  %589 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = icmp sgt i32 %590, 0
  br i1 %591, label %592, label %604

592:                                              ; preds = %586
  %593 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %594 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %593, i32 0, i32 2
  %595 = load i32, i32* %594, align 8
  %596 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %597 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %596, i32 0, i32 4
  %598 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = call i32 @set_mouse_sampling_rate(i32 %595, i32 %599)
  %601 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %602 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %601, i32 0, i32 3
  %603 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %602, i32 0, i32 0
  store i32 %600, i32* %603, align 8
  br label %604

604:                                              ; preds = %592, %586
  %605 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %606 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 8
  %608 = call i32 @set_mouse_scaling(i32 %607, i32 1)
  %609 = load i32, i32* @PSM_NEED_SYNCBITS, align 4
  %610 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %611 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %610, i32 0, i32 5
  %612 = load i32, i32* %611, align 8
  %613 = or i32 %612, %609
  store i32 %613, i32* %611, align 8
  %614 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %615 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %614, i32 0, i32 2
  %616 = load i32, i32* %615, align 8
  %617 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %618 = call i32 @get_mouse_status(i32 %616, i32* %617, i32 0, i32 3)
  %619 = icmp slt i32 %618, 3
  br i1 %619, label %620, label %623

620:                                              ; preds = %604
  %621 = load i32, i32* %4, align 4
  %622 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %621)
  br label %640

623:                                              ; preds = %604
  %624 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %627 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %626, i32 0, i32 3
  %628 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %627, i32 0, i32 0
  store i32 %625, i32* %628, align 8
  %629 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %630 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %629, i32 0, i32 4
  %631 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %630, i32 0, i32 0
  store i32 %625, i32* %631, align 8
  %632 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %635 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %634, i32 0, i32 3
  %636 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %635, i32 0, i32 1
  store i32 %633, i32* %636, align 4
  %637 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %638 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %637, i32 0, i32 4
  %639 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %638, i32 0, i32 1
  store i32 %633, i32* %639, align 4
  br label %640

640:                                              ; preds = %623, %620
  %641 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %642 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %641, i32 0, i32 2
  %643 = load i32, i32* %642, align 8
  %644 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %645 = load i32, i32* @KBD_AUX_CONTROL_BITS, align 4
  %646 = or i32 %644, %645
  %647 = load i32, i32* %7, align 4
  %648 = load i32, i32* @KBD_KBD_CONTROL_BITS, align 4
  %649 = and i32 %647, %648
  %650 = load i32, i32* @KBD_DISABLE_AUX_PORT, align 4
  %651 = or i32 %649, %650
  %652 = load i32, i32* @KBD_DISABLE_AUX_INT, align 4
  %653 = or i32 %651, %652
  %654 = call i32 @set_controller_command_byte(i32 %643, i32 %646, i32 %653)
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %673, label %656

656:                                              ; preds = %640
  %657 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %658 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %657, i32 0, i32 2
  %659 = load i32, i32* %658, align 8
  %660 = call i64 @ALWAYS_RESTORE_CONTROLLER(i32 %659)
  %661 = icmp ne i64 %660, 0
  br i1 %661, label %662, label %668

662:                                              ; preds = %656
  %663 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %664 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %663, i32 0, i32 2
  %665 = load i32, i32* %664, align 8
  %666 = load i32, i32* %7, align 4
  %667 = call i32 @restore_controller(i32 %665, i32 %666)
  br label %668

668:                                              ; preds = %662, %656
  %669 = load i32, i32* %4, align 4
  %670 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %669)
  %671 = load i32, i32* @ENXIO, align 4
  %672 = call i32 @endprobe(i32 %671)
  br label %673

673:                                              ; preds = %668, %640
  %674 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %675 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %674, i32 0, i32 2
  %676 = load i32, i32* %675, align 8
  %677 = load i32, i32* %8, align 4
  %678 = load i32, i32* @KBD_AUX_CONTROL_BITS, align 4
  %679 = or i32 %677, %678
  %680 = call i32 @kbdc_set_device_mask(i32 %676, i32 %679)
  %681 = load %struct.psm_softc*, %struct.psm_softc** %5, align 8
  %682 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %681, i32 0, i32 2
  %683 = load i32, i32* %682, align 8
  %684 = load i32, i32* @FALSE, align 4
  %685 = call i32 @kbdc_lock(i32 %683, i32 %684)
  store i32 0, i32* %2, align 4
  br label %686

686:                                              ; preds = %673, %84, %32
  %687 = load i32, i32* %2, align 4
  ret i32 %687
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.psm_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @atkbdc_open(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @kbdc_lock(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @kbdc_get_device_mask(i32) #1

declare dso_local i32 @get_controller_command_byte(i32) #1

declare dso_local i32 @endprobe(i32) #1

declare dso_local i32 @set_controller_command_byte(i32, i32, i32) #1

declare dso_local i64 @ALWAYS_RESTORE_CONTROLLER(i32) #1

declare dso_local i32 @restore_controller(i32, i32) #1

declare dso_local i32 @write_controller_command(i32, i32) #1

declare dso_local i32 @test_aux_port(i32) #1

declare dso_local i32 @recover_from_error(i32) #1

declare dso_local i32 @reset_aux_dev(i32) #1

declare dso_local i32 @enable_aux_dev(i32) #1

declare dso_local i32 @disable_aux_dev(i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

declare dso_local i32 @get_aux_id(i32) #1

declare dso_local i32 @is_a_mouse(i32) #1

declare dso_local i32 @get_mouse_buttons(i32) #1

declare dso_local i8* @model_name(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @set_mouse_resolution(i32, i32) #1

declare dso_local i32 @set_mouse_sampling_rate(i32, i32) #1

declare dso_local i32 @set_mouse_scaling(i32, i32) #1

declare dso_local i32 @kbdc_set_device_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
