; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_parse_cfgdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_parse_cfgdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32, i32, i32 }
%struct.seeprom_config = type { i32, i32, i32*, i32, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ahd_transinfo }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ahd_transinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.ahd_tmode_tstate = type { i32, i32 }

@CFMAXTARG = common dso_local global i32 0, align 4
@CFSCSIID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: unable to allocate ahd_tmode_tstate.  Failing attach\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CFDISC = common dso_local global i32 0, align 4
@CFPACKETIZED = common dso_local global i32 0, align 4
@CFXFER = common dso_local global i32 0, align 4
@CFXFER_ASYNC = common dso_local global i32 0, align 4
@AHD_PERIOD_10MHz = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@MAX_OFFSET = common dso_local global i32 0, align 4
@AHD_ASYNC_XFER_PERIOD = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RD_STRM = common dso_local global i32 0, align 4
@MSG_EXT_PPR_WR_FLOW = common dso_local global i32 0, align 4
@MSG_EXT_PPR_HOLD_MCS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@AHD_RTI = common dso_local global i32 0, align 4
@MSG_EXT_PPR_RTI = common dso_local global i32 0, align 4
@CFQAS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@CFWIDEB = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHD_SPCHK_ENB_A = common dso_local global i32 0, align 4
@CFSPARITY = common dso_local global i32 0, align 4
@AHD_RESET_BUS_A = common dso_local global i32 0, align 4
@CFRESETB = common dso_local global i32 0, align 4
@AHD_EXTENDED_TRANS_A = common dso_local global i32 0, align 4
@CFEXTEND = common dso_local global i32 0, align 4
@AHD_BIOS_ENABLED = common dso_local global i32 0, align 4
@CFBIOSSTATE = common dso_local global i32 0, align 4
@CFBS_ENABLED = common dso_local global i32 0, align 4
@AHD_STPWLEVEL_A = common dso_local global i32 0, align 4
@CFSTPWLEVEL = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@AHD_SYNCRATE_160 = common dso_local global i32 0, align 4
@AHD_SYNCRATE_DT = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_parse_cfgdata(%struct.ahd_softc* %0, %struct.seeprom_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.seeprom_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ahd_devinfo, align 4
  %9 = alloca %struct.ahd_initiator_tinfo*, align 8
  %10 = alloca %struct.ahd_transinfo*, align 8
  %11 = alloca %struct.ahd_tmode_tstate*, align 8
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.seeprom_config* %1, %struct.seeprom_config** %5, align 8
  %13 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %14 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CFMAXTARG, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %19 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CFSCSIID, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %27 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @ahd_alloc_tstate(%struct.ahd_softc* %25, i32 %28, i8 signext 65)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %33 = call i8* @ahd_name(%struct.ahd_softc* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %36 = call i32 @AHD_FATAL_ERROR(%struct.ahd_softc* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %367

38:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %267, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %270

43:                                               ; preds = %39
  %44 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %44, i8 signext 65, i32 %47, i32 %48, %struct.ahd_tmode_tstate** %11)
  store %struct.ahd_initiator_tinfo* %49, %struct.ahd_initiator_tinfo** %9, align 8
  %50 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %51 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %50, i32 0, i32 2
  store %struct.ahd_transinfo* %51, %struct.ahd_transinfo** %10, align 8
  %52 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %53 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %53, i32 0, i32 0
  store i32 4, i32* %54, align 4
  %55 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %56 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %56, i32 0, i32 1
  store i32 4, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 1, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %63 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %12, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %11, align 8
  %69 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %12, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %75 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %79 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CFDISC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %43
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %11, align 8
  %91 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %115

104:                                              ; preds = %43
  %105 = load i32, i32* @CFPACKETIZED, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %108 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %106
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %104, %88
  %116 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %117 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %116, i32 0, i32 2
  store i32 0, i32* %117, align 4
  %118 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %119 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CFXFER, align 4
  %126 = and i32 %124, %125
  %127 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %128 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %130 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @CFXFER_ASYNC, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %115
  %135 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %136 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @AHD_PERIOD_10MHz, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %142 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %143 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %134
  %147 = load i32, i32* @MAX_OFFSET, align 4
  %148 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %149 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  br label %156

150:                                              ; preds = %115
  %151 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %152 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %151, i32 0, i32 4
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* @AHD_ASYNC_XFER_PERIOD, align 4
  %154 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %155 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %146
  %157 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %158 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CFPACKETIZED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %156
  %168 = load i32, i32* @MSG_EXT_PPR_RD_STRM, align 4
  %169 = load i32, i32* @MSG_EXT_PPR_WR_FLOW, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @MSG_EXT_PPR_HOLD_MCS, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %176 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %180 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @AHD_RTI, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %167
  %186 = load i32, i32* @MSG_EXT_PPR_RTI, align 4
  %187 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %188 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %185, %167
  br label %192

192:                                              ; preds = %191, %156
  %193 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %194 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @CFQAS, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %192
  %204 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %205 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %206 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %203, %192
  %210 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %211 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @CFWIDEB, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %209
  %221 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %222 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %223 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  br label %228

224:                                              ; preds = %209
  %225 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %226 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %10, align 8
  %227 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  br label %228

228:                                              ; preds = %224, %220
  %229 = load i32, i32* %12, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %11, align 8
  %232 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 4
  %235 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %236 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  store i32 2, i32* %237, align 4
  %238 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %239 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  store i32 2, i32* %240, align 4
  %241 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %242 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  store i32 2, i32* %243, align 4
  %244 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %9, align 8
  %245 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  store i32 2, i32* %246, align 4
  %247 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %248 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %252 = load i32, i32* @ROLE_INITIATOR, align 4
  %253 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %8, i32 %249, i32 %250, i32 %251, i8 signext 65, i32 %252)
  %254 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %255 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %256 = load i32, i32* @AHD_TRANS_CUR, align 4
  %257 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %258 = or i32 %256, %257
  %259 = load i32, i32* @TRUE, align 4
  %260 = call i32 @ahd_set_width(%struct.ahd_softc* %254, %struct.ahd_devinfo* %8, i32 %255, i32 %258, i32 %259)
  %261 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %262 = load i32, i32* @AHD_TRANS_CUR, align 4
  %263 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @TRUE, align 4
  %266 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %261, %struct.ahd_devinfo* %8, i32 0, i32 0, i32 0, i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %228
  %268 = load i32, i32* %6, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %6, align 4
  br label %39

270:                                              ; preds = %39
  %271 = load i32, i32* @AHD_SPCHK_ENB_A, align 4
  %272 = xor i32 %271, -1
  %273 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %274 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = and i32 %275, %272
  store i32 %276, i32* %274, align 4
  %277 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %278 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @CFSPARITY, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %270
  %284 = load i32, i32* @AHD_SPCHK_ENB_A, align 4
  %285 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %286 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 4
  br label %289

289:                                              ; preds = %283, %270
  %290 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %291 = xor i32 %290, -1
  %292 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %293 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, %291
  store i32 %295, i32* %293, align 4
  %296 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %297 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @CFRESETB, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %289
  %303 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %304 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %305 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %302, %289
  %309 = load i32, i32* @AHD_EXTENDED_TRANS_A, align 4
  %310 = xor i32 %309, -1
  %311 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %312 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, %310
  store i32 %314, i32* %312, align 4
  %315 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %316 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @CFEXTEND, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %308
  %322 = load i32, i32* @AHD_EXTENDED_TRANS_A, align 4
  %323 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %324 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = or i32 %325, %322
  store i32 %326, i32* %324, align 4
  br label %327

327:                                              ; preds = %321, %308
  %328 = load i32, i32* @AHD_BIOS_ENABLED, align 4
  %329 = xor i32 %328, -1
  %330 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %331 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, %329
  store i32 %333, i32* %331, align 4
  %334 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %335 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @CFBIOSSTATE, align 4
  %338 = and i32 %336, %337
  %339 = load i32, i32* @CFBS_ENABLED, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %347

341:                                              ; preds = %327
  %342 = load i32, i32* @AHD_BIOS_ENABLED, align 4
  %343 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %344 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %341, %327
  %348 = load i32, i32* @AHD_STPWLEVEL_A, align 4
  %349 = xor i32 %348, -1
  %350 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %351 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, %349
  store i32 %353, i32* %351, align 4
  %354 = load %struct.seeprom_config*, %struct.seeprom_config** %5, align 8
  %355 = getelementptr inbounds %struct.seeprom_config, %struct.seeprom_config* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @CFSTPWLEVEL, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %347
  %361 = load i32, i32* @AHD_STPWLEVEL_A, align 4
  %362 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %363 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %360, %347
  store i32 0, i32* %3, align 4
  br label %367

367:                                              ; preds = %366, %31
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local i32* @ahd_alloc_tstate(%struct.ahd_softc*, i32, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @AHD_FATAL_ERROR(%struct.ahd_softc*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
