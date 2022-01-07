; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_umac_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_scan.c_iwm_mvm_umac_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { %struct.TYPE_18__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { %struct.ieee80211_scan_state* }
%struct.ieee80211_scan_state = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.iwm_host_cmd = type { i32*, i8**, i32, i32 }
%struct.iwm_scan_req_umac = type { %struct.TYPE_16__, %struct.TYPE_14__, i8*, i8* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_13__, i8*, i8* }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.iwm_scan_req_umac_tail = type { %struct.TYPE_11__*, i32, %struct.TYPE_20__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_20__ = type { i8*, i32, i32 }
%struct.iwm_scan_channel_cfg_umac = type { i32 }

@IWM_CMD_SYNC = common dso_local global i32 0, align 4
@IWM_SCAN_REQ_UMAC = common dso_local global i32 0, align 4
@IWM_ALWAYS_LONG_GROUP = common dso_local global i32 0, align 4
@IWM_MAX_CMD_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@IWM_DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Handling ieee80211 scan request\0A\00", align 1
@IWM_PROBE_OPTION_MAX = common dso_local global i32 0, align 4
@IWM_UMAC_SCAN_GEN_FLAGS_PASS_ALL = common dso_local global i32 0, align 4
@IWM_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE = common dso_local global i32 0, align 4
@IWM_UCODE_TLV_API_ADAPTIVE_DWELL = common dso_local global i32 0, align 4
@IWM_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL = common dso_local global i32 0, align 4
@IWM_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED = common dso_local global i32 0, align 4
@IWM_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT = common dso_local global i32 0, align 4
@IWM_UMAC_SCAN_GEN_FLAGS_PASSIVE = common dso_local global i32 0, align 4
@IWM_SCAN_CHANNEL_FLAG_EBS = common dso_local global i64 0, align 8
@IWM_SCAN_CHANNEL_FLAG_EBS_ACCURATE = common dso_local global i64 0, align 8
@IWM_SCAN_CHANNEL_FLAG_CACHE_ADD = common dso_local global i64 0, align 8
@IWM_SCAN_PRIORITY_HIGH = common dso_local global i32 0, align 4
@IEEE80211_ELEMID_SSID = common dso_local global i32 0, align 4
@IEEE80211_NWID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Scan request was sent successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_mvm_umac_scan(%struct.iwm_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwm_softc*, align 8
  %4 = alloca %struct.iwm_host_cmd, align 8
  %5 = alloca %struct.ieee80211_scan_state*, align 8
  %6 = alloca %struct.iwm_scan_req_umac*, align 8
  %7 = alloca %struct.iwm_scan_req_umac_tail*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %3, align 8
  %14 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %4, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %4, i32 0, i32 1
  store i8** null, i8*** %15, align 8
  %16 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %4, i32 0, i32 2
  %17 = load i32, i32* @IWM_CMD_SYNC, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %4, i32 0, i32 3
  %19 = load i32, i32* @IWM_SCAN_REQ_UMAC, align 4
  %20 = load i32, i32* @IWM_ALWAYS_LONG_GROUP, align 4
  %21 = call i32 @iwm_cmd_id(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %18, align 4
  %22 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %24, align 8
  store %struct.ieee80211_scan_state* %25, %struct.ieee80211_scan_state** %5, align 8
  %26 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %27 = call i64 @iwm_mvm_scan_size(%struct.iwm_softc* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @IWM_MAX_CMD_PAYLOAD_SIZE, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %2, align 4
  br label %309

33:                                               ; preds = %1
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @M_DEVBUF, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.iwm_scan_req_umac* @malloc(i64 %34, i32 %35, i32 %38)
  store %struct.iwm_scan_req_umac* %39, %struct.iwm_scan_req_umac** %6, align 8
  %40 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %41 = icmp eq %struct.iwm_scan_req_umac* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %2, align 4
  br label %309

44:                                               ; preds = %33
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %4, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %51 = bitcast %struct.iwm_scan_req_umac* %50 to i8*
  %52 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %4, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %56 = load i32, i32* @IWM_DEBUG_SCAN, align 4
  %57 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %55, i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IWM_PROBE_OPTION_MAX, align 4
  %62 = call i8* @MIN(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i32, i32* @IWM_UMAC_SCAN_GEN_FLAGS_PASS_ALL, align 4
  %65 = load i32, i32* @IWM_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %68 = load i32, i32* @IWM_UCODE_TLV_API_ADAPTIVE_DWELL, align 4
  %69 = call i64 @iwm_fw_has_api(%struct.iwm_softc* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %44
  %72 = load i32, i32* @IWM_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %44
  %76 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %77 = call i64 @iwm_mvm_rrm_scan_needed(%struct.iwm_softc* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @IWM_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED, align 4
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %12, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @IWM_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @IWM_UMAC_SCAN_GEN_FLAGS_PASSIVE, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %90, %86
  store i64 0, i64* %10, align 8
  %95 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %96 = call i64 @iwm_mvm_scan_use_ebs(%struct.iwm_softc* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i64, i64* @IWM_SCAN_CHANNEL_FLAG_EBS, align 8
  %100 = load i64, i64* @IWM_SCAN_CHANNEL_FLAG_EBS_ACCURATE, align 8
  %101 = or i64 %99, %100
  %102 = load i64, i64* @IWM_SCAN_CHANNEL_FLAG_CACHE_ADD, align 8
  %103 = or i64 %101, %102
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %98, %94
  %105 = load i32, i32* %9, align 4
  %106 = call i8* @htole16(i32 %105)
  %107 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %108 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @IWM_SCAN_PRIORITY_HIGH, align 4
  %110 = call i8* @htole32(i32 %109)
  %111 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %112 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %114 = load i32, i32* @IWM_UCODE_TLV_API_ADAPTIVE_DWELL, align 4
  %115 = call i64 @iwm_fw_has_api(%struct.iwm_softc* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %172

117:                                              ; preds = %104
  %118 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %119 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 10, i32* %120, align 8
  %121 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %122 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  store i32 110, i32* %123, align 4
  %124 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %125 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  store i32 44, i32* %126, align 8
  %127 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %128 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  store i32 10, i32* %129, align 4
  %130 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %131 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  store i32 2, i32* %132, align 8
  %133 = call i8* @htole16(i32 300)
  %134 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %135 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 8
  store i8* %133, i8** %136, align 8
  %137 = load i32, i32* @IWM_SCAN_PRIORITY_HIGH, align 4
  %138 = call i8* @htole32(i32 %137)
  %139 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %140 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 7
  store i8* %138, i8** %141, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %144 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  store i64 %142, i64* %146, align 8
  %147 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %148 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %149 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.iwm_scan_channel_cfg_umac*
  %153 = load i64, i64* %12, align 8
  %154 = call i8* @iwm_mvm_umac_scan_fill_channels(%struct.iwm_softc* %147, %struct.iwm_scan_channel_cfg_umac* %152, i64 %153)
  %155 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %156 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  store i8* %154, i8** %158, align 8
  %159 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %160 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 5
  %162 = bitcast i64* %161 to i8*
  %163 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %164 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = mul i64 4, %168
  %170 = getelementptr inbounds i8, i8* %162, i64 %169
  %171 = bitcast i8* %170 to %struct.iwm_scan_req_umac_tail*
  store %struct.iwm_scan_req_umac_tail* %171, %struct.iwm_scan_req_umac_tail** %7, align 8
  br label %220

172:                                              ; preds = %104
  %173 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %174 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i32 10, i32* %175, align 8
  %176 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %177 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  store i32 110, i32* %178, align 4
  %179 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %180 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 2
  store i32 44, i32* %181, align 8
  %182 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %183 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 3
  store i32 90, i32* %184, align 4
  %185 = load i32, i32* @IWM_SCAN_PRIORITY_HIGH, align 4
  %186 = call i8* @htole32(i32 %185)
  %187 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %188 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 6
  store i8* %186, i8** %189, align 8
  %190 = load i64, i64* %10, align 8
  %191 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %192 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  store i64 %190, i64* %194, align 8
  %195 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %196 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %197 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to %struct.iwm_scan_channel_cfg_umac*
  %201 = load i64, i64* %12, align 8
  %202 = call i8* @iwm_mvm_umac_scan_fill_channels(%struct.iwm_softc* %195, %struct.iwm_scan_channel_cfg_umac* %200, i64 %201)
  %203 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %204 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  store i8* %202, i8** %206, align 8
  %207 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %208 = getelementptr inbounds %struct.iwm_scan_req_umac, %struct.iwm_scan_req_umac* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 4
  %210 = bitcast i64* %209 to i8*
  %211 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %212 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = mul i64 4, %216
  %218 = getelementptr inbounds i8, i8* %210, i64 %217
  %219 = bitcast i8* %218 to %struct.iwm_scan_req_umac_tail*
  store %struct.iwm_scan_req_umac_tail* %219, %struct.iwm_scan_req_umac_tail** %7, align 8
  br label %220

220:                                              ; preds = %172, %117
  store i64 0, i64* %11, align 8
  br label %221

221:                                              ; preds = %270, %220
  %222 = load i64, i64* %11, align 8
  %223 = load i64, i64* %12, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %273

225:                                              ; preds = %221
  %226 = load i32, i32* @IEEE80211_ELEMID_SSID, align 4
  %227 = load %struct.iwm_scan_req_umac_tail*, %struct.iwm_scan_req_umac_tail** %7, align 8
  %228 = getelementptr inbounds %struct.iwm_scan_req_umac_tail, %struct.iwm_scan_req_umac_tail* %227, i32 0, i32 2
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = load i64, i64* %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 2
  store i32 %226, i32* %232, align 4
  %233 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %5, align 8
  %234 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %233, i32 0, i32 0
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %234, align 8
  %236 = load i64, i64* %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %241 = call i8* @MIN(i32 %239, i32 %240)
  %242 = load %struct.iwm_scan_req_umac_tail*, %struct.iwm_scan_req_umac_tail** %7, align 8
  %243 = getelementptr inbounds %struct.iwm_scan_req_umac_tail, %struct.iwm_scan_req_umac_tail* %242, i32 0, i32 2
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %243, align 8
  %245 = load i64, i64* %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  store i8* %241, i8** %247, align 8
  %248 = load %struct.iwm_scan_req_umac_tail*, %struct.iwm_scan_req_umac_tail** %7, align 8
  %249 = getelementptr inbounds %struct.iwm_scan_req_umac_tail, %struct.iwm_scan_req_umac_tail* %248, i32 0, i32 2
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %249, align 8
  %251 = load i64, i64* %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %5, align 8
  %256 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %255, i32 0, i32 0
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %256, align 8
  %258 = load i64, i64* %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.iwm_scan_req_umac_tail*, %struct.iwm_scan_req_umac_tail** %7, align 8
  %263 = getelementptr inbounds %struct.iwm_scan_req_umac_tail, %struct.iwm_scan_req_umac_tail* %262, i32 0, i32 2
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %263, align 8
  %265 = load i64, i64* %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @memcpy(i32 %254, i32 %261, i8* %268)
  br label %270

270:                                              ; preds = %225
  %271 = load i64, i64* %11, align 8
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %11, align 8
  br label %221

273:                                              ; preds = %221
  %274 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %275 = load %struct.iwm_scan_req_umac_tail*, %struct.iwm_scan_req_umac_tail** %7, align 8
  %276 = getelementptr inbounds %struct.iwm_scan_req_umac_tail, %struct.iwm_scan_req_umac_tail* %275, i32 0, i32 1
  %277 = call i32 @iwm_mvm_fill_probe_req(%struct.iwm_softc* %274, i32* %276)
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* %13, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %273
  %281 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %282 = load i32, i32* @M_DEVBUF, align 4
  %283 = call i32 @free(%struct.iwm_scan_req_umac* %281, i32 %282)
  %284 = load i32, i32* %13, align 4
  store i32 %284, i32* %2, align 4
  br label %309

285:                                              ; preds = %273
  %286 = load %struct.iwm_scan_req_umac_tail*, %struct.iwm_scan_req_umac_tail** %7, align 8
  %287 = getelementptr inbounds %struct.iwm_scan_req_umac_tail, %struct.iwm_scan_req_umac_tail* %286, i32 0, i32 0
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 1
  store i64 0, i64* %290, align 8
  %291 = load %struct.iwm_scan_req_umac_tail*, %struct.iwm_scan_req_umac_tail** %7, align 8
  %292 = getelementptr inbounds %struct.iwm_scan_req_umac_tail, %struct.iwm_scan_req_umac_tail* %291, i32 0, i32 0
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  store i32 1, i32* %295, align 8
  %296 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %297 = call i32 @iwm_send_cmd(%struct.iwm_softc* %296, %struct.iwm_host_cmd* %4)
  store i32 %297, i32* %13, align 4
  %298 = load i32, i32* %13, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %304, label %300

300:                                              ; preds = %285
  %301 = load %struct.iwm_softc*, %struct.iwm_softc** %3, align 8
  %302 = load i32, i32* @IWM_DEBUG_SCAN, align 4
  %303 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %301, i32 %302, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %304

304:                                              ; preds = %300, %285
  %305 = load %struct.iwm_scan_req_umac*, %struct.iwm_scan_req_umac** %6, align 8
  %306 = load i32, i32* @M_DEVBUF, align 4
  %307 = call i32 @free(%struct.iwm_scan_req_umac* %305, i32 %306)
  %308 = load i32, i32* %13, align 4
  store i32 %308, i32* %2, align 4
  br label %309

309:                                              ; preds = %304, %280, %42, %31
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i32 @iwm_cmd_id(i32, i32, i32) #1

declare dso_local i64 @iwm_mvm_scan_size(%struct.iwm_softc*) #1

declare dso_local %struct.iwm_scan_req_umac* @malloc(i64, i32, i32) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*) #1

declare dso_local i8* @MIN(i32, i32) #1

declare dso_local i64 @iwm_fw_has_api(%struct.iwm_softc*, i32) #1

declare dso_local i64 @iwm_mvm_rrm_scan_needed(%struct.iwm_softc*) #1

declare dso_local i64 @iwm_mvm_scan_use_ebs(%struct.iwm_softc*) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i8* @iwm_mvm_umac_scan_fill_channels(%struct.iwm_softc*, %struct.iwm_scan_channel_cfg_umac*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i8*) #1

declare dso_local i32 @iwm_mvm_fill_probe_req(%struct.iwm_softc*, i32*) #1

declare dso_local i32 @free(%struct.iwm_scan_req_umac*, i32) #1

declare dso_local i32 @iwm_send_cmd(%struct.iwm_softc*, %struct.iwm_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
