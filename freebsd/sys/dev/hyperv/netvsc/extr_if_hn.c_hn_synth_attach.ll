; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_synth_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_synth_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i64, i32, i32, i32, i64, i64, i32, i32, i64, %struct.ndis_rssprm_toeplitz }
%struct.ndis_rssprm_toeplitz = type { i64*, i32 }

@HN_FLAG_SYNTH_ATTACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"synthetic parts were attached\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"caps mismatch old 0x%08x, new 0x%08x\0A\00", align 1
@HN_FLAG_HAS_RSSKEY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"setup default RSS key\0A\00", align 1
@hn_rss_key_default = common dso_local global i32 0, align 4
@HN_FLAG_HAS_RSSIND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"setup default RSS indirect table\0A\00", align 1
@NDIS_HASH_INDCNT = common dso_local global i32 0, align 4
@HN_FLAG_RXVF = common dso_local global i32 0, align 4
@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@NDIS_RSS_FLAG_NONE = common dso_local global i32 0, align 4
@ATTACHED_NVS = common dso_local global i64 0, align 8
@ATTACHED_RNDIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, i32)* @hn_synth_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_synth_attach(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ndis_rssprm_toeplitz*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %16 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %15, i32 0, i32 10
  store %struct.ndis_rssprm_toeplitz* %16, %struct.ndis_rssprm_toeplitz** %6, align 8
  store i32 1, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %17 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %18 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %26 = call i32 @hn_synth_attachable(%struct.hn_softc* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %272

30:                                               ; preds = %2
  %31 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %32 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  %34 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %35 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %37 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %36, i32 0, i32 9
  store i64 0, i64* %37, align 8
  %38 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %39 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %41 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %43 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %44 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hn_chan_attach(%struct.hn_softc* %42, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %231

50:                                               ; preds = %30
  %51 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @hn_nvs_attach(%struct.hn_softc* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %231

57:                                               ; preds = %50
  %58 = load i64, i64* %13, align 8
  %59 = or i64 %58, 2
  store i64 %59, i64* %13, align 8
  %60 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @hn_rndis_attach(%struct.hn_softc* %60, i32 %61, i32* %11)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i64, i64* %13, align 8
  %67 = or i64 %66, 4
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %231

72:                                               ; preds = %68
  %73 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %74 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @device_is_attached(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load i64, i64* %12, align 8
  %80 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %81 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %86 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %90 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i32, i8*, ...) @if_printf(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %88, i64 %91)
  %93 = load i32, i32* @ENXIO, align 4
  store i32 %93, i32* %7, align 4
  br label %231

94:                                               ; preds = %78, %72
  %95 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %96 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  %99 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %100 = call i32 @hn_synth_alloc_subchans(%struct.hn_softc* %99, i32* %8)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %231

104:                                              ; preds = %94
  %105 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %106 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %107 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @hn_set_ring_inuse(%struct.hn_softc* %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %225

118:                                              ; preds = %104
  %119 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %120 = call i32 @hn_attach_subchans(%struct.hn_softc* %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %231

124:                                              ; preds = %118
  %125 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %126 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @HN_FLAG_HAS_RSSKEY, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %124
  %132 = load i64, i64* @bootverbose, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %136 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @if_printf(i32 %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %139

139:                                              ; preds = %134, %131
  %140 = load %struct.ndis_rssprm_toeplitz*, %struct.ndis_rssprm_toeplitz** %6, align 8
  %141 = getelementptr inbounds %struct.ndis_rssprm_toeplitz, %struct.ndis_rssprm_toeplitz* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @hn_rss_key_default, align 4
  %144 = call i32 @memcpy(i32 %142, i32 %143, i32 4)
  %145 = load i32, i32* @HN_FLAG_HAS_RSSKEY, align 4
  %146 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %147 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %139, %124
  %151 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %152 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @HN_FLAG_HAS_RSSIND, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %192

157:                                              ; preds = %150
  %158 = load i64, i64* @bootverbose, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %162 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i32, i8*, ...) @if_printf(i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %157
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %183, %165
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @NDIS_HASH_INDCNT, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %14, align 8
  %173 = load i64, i64* %14, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = srem i64 %173, %175
  %177 = load %struct.ndis_rssprm_toeplitz*, %struct.ndis_rssprm_toeplitz** %6, align 8
  %178 = getelementptr inbounds %struct.ndis_rssprm_toeplitz, %struct.ndis_rssprm_toeplitz* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  store i64 %176, i64* %182, align 8
  br label %183

183:                                              ; preds = %170
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %166

186:                                              ; preds = %166
  %187 = load i32, i32* @HN_FLAG_HAS_RSSIND, align 4
  %188 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %189 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %195

192:                                              ; preds = %150
  %193 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %194 = call i32 @hn_rss_ind_fixup(%struct.hn_softc* %193)
  br label %195

195:                                              ; preds = %192, %186
  %196 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %197 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %200 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %199, i32 0, i32 6
  store i64 %198, i64* %200, align 8
  %201 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %202 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @HN_FLAG_RXVF, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %214, label %207

207:                                              ; preds = %195
  %208 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %209 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207, %195
  %215 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %216 = call i32 @hn_vf_rss_fixup(%struct.hn_softc* %215, i32 0)
  br label %217

217:                                              ; preds = %214, %207
  %218 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %219 = load i32, i32* @NDIS_RSS_FLAG_NONE, align 4
  %220 = call i32 @hn_rndis_conf_rss(%struct.hn_softc* %218, i32 %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %231

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %117
  %226 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %227 = call i32 @hn_set_txagg(%struct.hn_softc* %226)
  %228 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @hn_rndis_init_fixat(%struct.hn_softc* %228, i32 %229)
  store i32 0, i32* %3, align 4
  br label %272

231:                                              ; preds = %223, %123, %103, %84, %71, %56, %49
  %232 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %233 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @HN_FLAG_SYNTH_ATTACHED, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @hn_rndis_init_fixat(%struct.hn_softc* %239, i32 %240)
  %242 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %243 = call i32 @hn_synth_detach(%struct.hn_softc* %242)
  br label %270

244:                                              ; preds = %231
  %245 = load i64, i64* %13, align 8
  %246 = and i64 %245, 4
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %244
  %249 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @hn_rndis_init_fixat(%struct.hn_softc* %249, i32 %250)
  %252 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %253 = call i32 @hn_rndis_detach(%struct.hn_softc* %252)
  br label %254

254:                                              ; preds = %248, %244
  %255 = load i64, i64* %13, align 8
  %256 = and i64 %255, 2
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %260 = call i32 @hn_nvs_detach(%struct.hn_softc* %259)
  br label %261

261:                                              ; preds = %258, %254
  %262 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %263 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %264 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @hn_chan_detach(%struct.hn_softc* %262, i32 %265)
  %267 = load i64, i64* %12, align 8
  %268 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %269 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %268, i32 0, i32 1
  store i64 %267, i64* %269, align 8
  br label %270

270:                                              ; preds = %261, %238
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %270, %225, %28
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_synth_attachable(%struct.hn_softc*) #1

declare dso_local i32 @hn_chan_attach(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_nvs_attach(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_rndis_attach(%struct.hn_softc*, i32, i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @hn_synth_alloc_subchans(%struct.hn_softc*, i32*) #1

declare dso_local i32 @hn_set_ring_inuse(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_attach_subchans(%struct.hn_softc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hn_rss_ind_fixup(%struct.hn_softc*) #1

declare dso_local i32 @hn_vf_rss_fixup(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_rndis_conf_rss(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_set_txagg(%struct.hn_softc*) #1

declare dso_local i32 @hn_rndis_init_fixat(%struct.hn_softc*, i32) #1

declare dso_local i32 @hn_synth_detach(%struct.hn_softc*) #1

declare dso_local i32 @hn_rndis_detach(%struct.hn_softc*) #1

declare dso_local i32 @hn_nvs_detach(%struct.hn_softc*) #1

declare dso_local i32 @hn_chan_detach(%struct.hn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
