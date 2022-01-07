; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_get_vhtcap_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_vht.c_ieee80211_vht_get_vhtcap_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_5__, i32, %struct.ieee80211vap* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211vap = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_ie_vhtcap = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32 }

@IEEE80211_ELEMID_VHT_CAP = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_MAX_MPDU_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_FVHT_USEVHT80P80 = common dso_local global i32 0, align 4
@IEEE80211_FVHT_USEVHT160 = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_SHORT_GI_160 = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_TXSTBC = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_RXSTBC_MASK = common dso_local global i32 0, align 4
@IEEE80211_FHT_STBC_TX = common dso_local global i32 0, align 4
@IEEE80211_FHT_STBC_RX = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_MU_BEAMFORMER_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_MU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_VHT_TXOP_PS = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_HTC_VHT = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_RX_ANTENNA_PATTERN = common dso_local global i32 0, align 4
@IEEE80211_VHTCAP_TX_ANTENNA_PATTERN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_vht_get_vhtcap_ie(%struct.ieee80211_node* %0, %struct.ieee80211_ie_vhtcap* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_ie_vhtcap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.ieee80211_ie_vhtcap* %1, %struct.ieee80211_ie_vhtcap** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 2
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %7, align 8
  %16 = load i32, i32* @IEEE80211_ELEMID_VHT_CAP, align 4
  %17 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %19, i32 0, i32 0
  store i32 46, i32* %20, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IEEE80211_VHTCAP_MAX_MPDU_MASK, align 4
  %25 = call i32 @MS(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_VHTCAP_MAX_MPDU_MASK, align 4
  %33 = call i32 @MS(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %28, %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @MIN(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @IEEE80211_VHTCAP_MAX_MPDU_MASK, align 4
  %40 = call i32 @SM(i32 %38, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK, align 4
  %47 = call i32 @MS(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK, align 4
  %55 = call i32 @MS(i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %50, %34
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_FVHT_USEVHT80P80, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %59, %56
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_FVHT_USEVHT160, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %70, %67
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @MIN(i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @IEEE80211_VHTCAP_SUPP_CHAN_WIDTH_MASK, align 4
  %84 = call i32 @SM(i32 %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %88 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IEEE80211_VHTCAP_RXLDPC, align 4
  %91 = call i32 @MS(i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %78
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IEEE80211_VHTCAP_RXLDPC, align 4
  %99 = call i32 @MS(i32 %97, i32 %98)
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %94, %78
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @MIN(i32 %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @IEEE80211_VHTCAP_RXLDPC, align 4
  %106 = call i32 @SM(i32 %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  %109 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IEEE80211_VHTCAP_SHORT_GI_80, align 4
  %113 = call i32 @MS(i32 %111, i32 %112)
  store i32 %113, i32* %9, align 4
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %122

116:                                              ; preds = %100
  %117 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %118 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IEEE80211_VHTCAP_SHORT_GI_80, align 4
  %121 = call i32 @MS(i32 %119, i32 %120)
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %116, %100
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @MIN(i32 %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @IEEE80211_VHTCAP_SHORT_GI_80, align 4
  %128 = call i32 @SM(i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %11, align 4
  %131 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IEEE80211_VHTCAP_SHORT_GI_160, align 4
  %135 = call i32 @MS(i32 %133, i32 %134)
  store i32 %135, i32* %9, align 4
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %144

138:                                              ; preds = %122
  %139 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %140 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IEEE80211_VHTCAP_SHORT_GI_160, align 4
  %143 = call i32 @MS(i32 %141, i32 %142)
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %138, %122
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @MIN(i32 %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @IEEE80211_VHTCAP_SHORT_GI_160, align 4
  %150 = call i32 @SM(i32 %148, i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %154 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IEEE80211_VHTCAP_TXSTBC, align 4
  %157 = call i32 @MS(i32 %155, i32 %156)
  store i32 %157, i32* %9, align 4
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %170

160:                                              ; preds = %144
  %161 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %162 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @IEEE80211_VHTCAP_RXSTBC_MASK, align 4
  %165 = call i32 @MS(i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %160, %144
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @MIN(i32 %171, i32 %172)
  store i32 %173, i32* %8, align 4
  %174 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %175 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IEEE80211_FHT_STBC_TX, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  store i32 0, i32* %8, align 4
  br label %181

181:                                              ; preds = %180, %170
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @IEEE80211_VHTCAP_TXSTBC, align 4
  %184 = call i32 @SM(i32 %182, i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %11, align 4
  %187 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %188 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IEEE80211_VHTCAP_RXSTBC_MASK, align 4
  %191 = call i32 @MS(i32 %189, i32 %190)
  store i32 %191, i32* %9, align 4
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %200

194:                                              ; preds = %181
  %195 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %196 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @IEEE80211_VHTCAP_TXSTBC, align 4
  %199 = call i32 @MS(i32 %197, i32 %198)
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %194, %181
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @MIN(i32 %201, i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %205 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @IEEE80211_FHT_STBC_RX, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %210, %200
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @IEEE80211_VHTCAP_RXSTBC_MASK, align 4
  %214 = call i32 @SM(i32 %212, i32 %213)
  %215 = load i32, i32* %11, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %211
  %220 = load i32, i32* @IEEE80211_VHTCAP_TXSTBC, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %11, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %11, align 4
  br label %224

224:                                              ; preds = %219, %211
  %225 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %226 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE, align 4
  %229 = call i32 @MS(i32 %227, i32 %228)
  store i32 %229, i32* %9, align 4
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %238

232:                                              ; preds = %224
  %233 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %234 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE, align 4
  %237 = call i32 @MS(i32 %235, i32 %236)
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %232, %224
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @MIN(i32 %239, i32 %240)
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* %8, align 4
  %243 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE, align 4
  %244 = call i32 @SM(i32 %242, i32 %243)
  %245 = load i32, i32* %11, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %11, align 4
  %247 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %248 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE, align 4
  %251 = call i32 @MS(i32 %249, i32 %250)
  store i32 %251, i32* %9, align 4
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %260

254:                                              ; preds = %238
  %255 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %256 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE, align 4
  %259 = call i32 @MS(i32 %257, i32 %258)
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %254, %238
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @MIN(i32 %261, i32 %262)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE, align 4
  %266 = call i32 @SM(i32 %264, i32 %265)
  %267 = load i32, i32* %11, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %11, align 4
  %269 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %270 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK, align 4
  %273 = call i32 @MS(i32 %271, i32 %272)
  store i32 %273, i32* %9, align 4
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %282

276:                                              ; preds = %260
  %277 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %278 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK, align 4
  %281 = call i32 @MS(i32 %279, i32 %280)
  store i32 %281, i32* %10, align 4
  br label %282

282:                                              ; preds = %276, %260
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @MIN(i32 %283, i32 %284)
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE, align 4
  %288 = and i32 %286, %287
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %282
  store i32 0, i32* %8, align 4
  br label %291

291:                                              ; preds = %290, %282
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @IEEE80211_VHTCAP_BEAMFORMEE_STS_MASK, align 4
  %294 = call i32 @SM(i32 %292, i32 %293)
  %295 = load i32, i32* %11, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %11, align 4
  %297 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %298 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK, align 4
  %301 = call i32 @MS(i32 %299, i32 %300)
  store i32 %301, i32* %9, align 4
  store i32 %301, i32* %10, align 4
  %302 = load i32, i32* %6, align 4
  %303 = icmp eq i32 %302, 1
  br i1 %303, label %304, label %310

304:                                              ; preds = %291
  %305 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %306 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK, align 4
  %309 = call i32 @MS(i32 %307, i32 %308)
  store i32 %309, i32* %10, align 4
  br label %310

310:                                              ; preds = %304, %291
  %311 = load i32, i32* %9, align 4
  %312 = load i32, i32* %10, align 4
  %313 = call i32 @MIN(i32 %311, i32 %312)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE, align 4
  %316 = and i32 %314, %315
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %310
  store i32 0, i32* %8, align 4
  br label %319

319:                                              ; preds = %318, %310
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* @IEEE80211_VHTCAP_SOUNDING_DIMENSIONS_MASK, align 4
  %322 = call i32 @SM(i32 %320, i32 %321)
  %323 = load i32, i32* %11, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %11, align 4
  %325 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %326 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @IEEE80211_VHTCAP_MU_BEAMFORMER_CAPABLE, align 4
  %329 = call i32 @MS(i32 %327, i32 %328)
  store i32 %329, i32* %9, align 4
  store i32 %329, i32* %10, align 4
  %330 = load i32, i32* %6, align 4
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %338

332:                                              ; preds = %319
  %333 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %334 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @IEEE80211_VHTCAP_MU_BEAMFORMER_CAPABLE, align 4
  %337 = call i32 @MS(i32 %335, i32 %336)
  store i32 %337, i32* %10, align 4
  br label %338

338:                                              ; preds = %332, %319
  %339 = load i32, i32* %9, align 4
  %340 = load i32, i32* %10, align 4
  %341 = call i32 @MIN(i32 %339, i32 %340)
  store i32 %341, i32* %8, align 4
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE, align 4
  %344 = and i32 %342, %343
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %338
  store i32 0, i32* %8, align 4
  br label %347

347:                                              ; preds = %346, %338
  %348 = load i32, i32* %6, align 4
  %349 = icmp ne i32 %348, 1
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  store i32 0, i32* %8, align 4
  br label %351

351:                                              ; preds = %350, %347
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMER_CAPABLE, align 4
  %354 = call i32 @SM(i32 %352, i32 %353)
  %355 = load i32, i32* %11, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %11, align 4
  %357 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %358 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @IEEE80211_VHTCAP_MU_BEAMFORMEE_CAPABLE, align 4
  %361 = call i32 @MS(i32 %359, i32 %360)
  store i32 %361, i32* %9, align 4
  store i32 %361, i32* %10, align 4
  %362 = load i32, i32* %6, align 4
  %363 = icmp eq i32 %362, 1
  br i1 %363, label %364, label %370

364:                                              ; preds = %351
  %365 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %366 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @IEEE80211_VHTCAP_MU_BEAMFORMEE_CAPABLE, align 4
  %369 = call i32 @MS(i32 %367, i32 %368)
  store i32 %369, i32* %10, align 4
  br label %370

370:                                              ; preds = %364, %351
  %371 = load i32, i32* %9, align 4
  %372 = load i32, i32* %10, align 4
  %373 = call i32 @MIN(i32 %371, i32 %372)
  store i32 %373, i32* %8, align 4
  %374 = load i32, i32* %11, align 4
  %375 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE, align 4
  %376 = and i32 %374, %375
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %370
  store i32 0, i32* %8, align 4
  br label %379

379:                                              ; preds = %378, %370
  %380 = load i32, i32* %6, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  store i32 0, i32* %8, align 4
  br label %383

383:                                              ; preds = %382, %379
  %384 = load i32, i32* %8, align 4
  %385 = load i32, i32* @IEEE80211_VHTCAP_SU_BEAMFORMEE_CAPABLE, align 4
  %386 = call i32 @SM(i32 %384, i32 %385)
  %387 = load i32, i32* %11, align 4
  %388 = or i32 %387, %386
  store i32 %388, i32* %11, align 4
  %389 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %390 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @IEEE80211_VHTCAP_VHT_TXOP_PS, align 4
  %393 = call i32 @MS(i32 %391, i32 %392)
  store i32 %393, i32* %9, align 4
  store i32 %393, i32* %10, align 4
  %394 = load i32, i32* %6, align 4
  %395 = icmp eq i32 %394, 1
  br i1 %395, label %396, label %402

396:                                              ; preds = %383
  %397 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %398 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @IEEE80211_VHTCAP_VHT_TXOP_PS, align 4
  %401 = call i32 @MS(i32 %399, i32 %400)
  store i32 %401, i32* %10, align 4
  br label %402

402:                                              ; preds = %396, %383
  %403 = load i32, i32* %9, align 4
  %404 = load i32, i32* %10, align 4
  %405 = call i32 @MIN(i32 %403, i32 %404)
  store i32 %405, i32* %8, align 4
  %406 = load i32, i32* %8, align 4
  %407 = load i32, i32* @IEEE80211_VHTCAP_VHT_TXOP_PS, align 4
  %408 = call i32 @SM(i32 %406, i32 %407)
  %409 = load i32, i32* %11, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %11, align 4
  %411 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %412 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* @IEEE80211_VHTCAP_HTC_VHT, align 4
  %415 = call i32 @MS(i32 %413, i32 %414)
  store i32 %415, i32* %9, align 4
  store i32 %415, i32* %10, align 4
  %416 = load i32, i32* %6, align 4
  %417 = icmp eq i32 %416, 1
  br i1 %417, label %418, label %424

418:                                              ; preds = %402
  %419 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %420 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @IEEE80211_VHTCAP_HTC_VHT, align 4
  %423 = call i32 @MS(i32 %421, i32 %422)
  store i32 %423, i32* %10, align 4
  br label %424

424:                                              ; preds = %418, %402
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* %10, align 4
  %427 = call i32 @MIN(i32 %425, i32 %426)
  store i32 %427, i32* %8, align 4
  %428 = load i32, i32* %8, align 4
  %429 = load i32, i32* @IEEE80211_VHTCAP_HTC_VHT, align 4
  %430 = call i32 @SM(i32 %428, i32 %429)
  %431 = load i32, i32* %11, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %11, align 4
  %433 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %434 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %437 = call i32 @MS(i32 %435, i32 %436)
  store i32 %437, i32* %9, align 4
  store i32 %437, i32* %10, align 4
  %438 = load i32, i32* %6, align 4
  %439 = icmp eq i32 %438, 1
  br i1 %439, label %440, label %446

440:                                              ; preds = %424
  %441 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %442 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = load i32, i32* @IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %445 = call i32 @MS(i32 %443, i32 %444)
  store i32 %445, i32* %10, align 4
  br label %446

446:                                              ; preds = %440, %424
  %447 = load i32, i32* %9, align 4
  %448 = load i32, i32* %10, align 4
  %449 = call i32 @MIN(i32 %447, i32 %448)
  store i32 %449, i32* %8, align 4
  %450 = load i32, i32* %8, align 4
  %451 = load i32, i32* @IEEE80211_VHTCAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK, align 4
  %452 = call i32 @SM(i32 %450, i32 %451)
  %453 = load i32, i32* %11, align 4
  %454 = or i32 %453, %452
  store i32 %454, i32* %11, align 4
  %455 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %456 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK, align 4
  %459 = call i32 @MS(i32 %457, i32 %458)
  store i32 %459, i32* %9, align 4
  store i32 %459, i32* %10, align 4
  %460 = load i32, i32* %6, align 4
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %462, label %468

462:                                              ; preds = %446
  %463 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %464 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* @IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK, align 4
  %467 = call i32 @MS(i32 %465, i32 %466)
  store i32 %467, i32* %10, align 4
  br label %468

468:                                              ; preds = %462, %446
  %469 = load i32, i32* %9, align 4
  %470 = load i32, i32* %10, align 4
  %471 = call i32 @MIN(i32 %469, i32 %470)
  store i32 %471, i32* %8, align 4
  %472 = load i32, i32* %11, align 4
  %473 = load i32, i32* @IEEE80211_VHTCAP_HTC_VHT, align 4
  %474 = and i32 %472, %473
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %468
  store i32 0, i32* %8, align 4
  br label %477

477:                                              ; preds = %476, %468
  %478 = load i32, i32* %8, align 4
  %479 = load i32, i32* @IEEE80211_VHTCAP_VHT_LINK_ADAPTATION_VHT_MASK, align 4
  %480 = call i32 @SM(i32 %478, i32 %479)
  %481 = load i32, i32* %11, align 4
  %482 = or i32 %481, %480
  store i32 %482, i32* %11, align 4
  %483 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %484 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @IEEE80211_VHTCAP_RX_ANTENNA_PATTERN, align 4
  %487 = call i32 @MS(i32 %485, i32 %486)
  store i32 %487, i32* %9, align 4
  store i32 %487, i32* %10, align 4
  %488 = load i32, i32* %6, align 4
  %489 = icmp eq i32 %488, 1
  br i1 %489, label %490, label %496

490:                                              ; preds = %477
  %491 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %492 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* @IEEE80211_VHTCAP_RX_ANTENNA_PATTERN, align 4
  %495 = call i32 @MS(i32 %493, i32 %494)
  store i32 %495, i32* %10, align 4
  br label %496

496:                                              ; preds = %490, %477
  %497 = load i32, i32* %9, align 4
  %498 = load i32, i32* %10, align 4
  %499 = call i32 @MAX(i32 %497, i32 %498)
  store i32 %499, i32* %8, align 4
  %500 = load i32, i32* %8, align 4
  %501 = load i32, i32* @IEEE80211_VHTCAP_RX_ANTENNA_PATTERN, align 4
  %502 = call i32 @SM(i32 %500, i32 %501)
  %503 = load i32, i32* %11, align 4
  %504 = or i32 %503, %502
  store i32 %504, i32* %11, align 4
  %505 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %506 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 4
  %508 = load i32, i32* @IEEE80211_VHTCAP_TX_ANTENNA_PATTERN, align 4
  %509 = call i32 @MS(i32 %507, i32 %508)
  store i32 %509, i32* %9, align 4
  store i32 %509, i32* %10, align 4
  %510 = load i32, i32* %6, align 4
  %511 = icmp eq i32 %510, 1
  br i1 %511, label %512, label %518

512:                                              ; preds = %496
  %513 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %514 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = load i32, i32* @IEEE80211_VHTCAP_TX_ANTENNA_PATTERN, align 4
  %517 = call i32 @MS(i32 %515, i32 %516)
  store i32 %517, i32* %10, align 4
  br label %518

518:                                              ; preds = %512, %496
  %519 = load i32, i32* %9, align 4
  %520 = load i32, i32* %10, align 4
  %521 = call i32 @MAX(i32 %519, i32 %520)
  store i32 %521, i32* %8, align 4
  %522 = load i32, i32* %8, align 4
  %523 = load i32, i32* @IEEE80211_VHTCAP_TX_ANTENNA_PATTERN, align 4
  %524 = call i32 @SM(i32 %522, i32 %523)
  %525 = load i32, i32* %11, align 4
  %526 = or i32 %525, %524
  store i32 %526, i32* %11, align 4
  %527 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %528 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %527, i32 0, i32 2
  %529 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %532 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 3
  store i32 %530, i32* %533, align 8
  %534 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %535 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %535, i32 0, i32 2
  store i64 0, i64* %536, align 8
  %537 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %538 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %542 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %541, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %542, i32 0, i32 0
  store i32 %540, i32* %543, align 8
  %544 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %545 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %544, i32 0, i32 2
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 1
  store i64 0, i64* %546, align 8
  %547 = load i32, i32* %11, align 4
  %548 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %549 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %548, i32 0, i32 1
  store i32 %547, i32* %549, align 4
  %550 = load i32, i32* %6, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %605

552:                                              ; preds = %518
  store i32 0, i32* %12, align 4
  br label %553

553:                                              ; preds = %601, %552
  %554 = load i32, i32* %12, align 4
  %555 = icmp slt i32 %554, 8
  br i1 %555, label %556, label %604

556:                                              ; preds = %553
  %557 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %558 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %557, i32 0, i32 2
  %559 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = load i32, i32* %12, align 4
  %562 = mul nsw i32 %561, 2
  %563 = ashr i32 %560, %562
  %564 = and i32 %563, 3
  store i32 %564, i32* %9, align 4
  %565 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %566 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = load i32, i32* %12, align 4
  %570 = mul nsw i32 %569, 2
  %571 = ashr i32 %568, %570
  %572 = and i32 %571, 3
  store i32 %572, i32* %10, align 4
  %573 = load i32, i32* %9, align 4
  %574 = load i32, i32* %10, align 4
  %575 = call i32 @MIN(i32 %573, i32 %574)
  store i32 %575, i32* %8, align 4
  %576 = load i32, i32* %9, align 4
  %577 = icmp eq i32 %576, 3
  br i1 %577, label %581, label %578

578:                                              ; preds = %556
  %579 = load i32, i32* %10, align 4
  %580 = icmp eq i32 %579, 3
  br i1 %580, label %581, label %582

581:                                              ; preds = %578, %556
  store i32 3, i32* %8, align 4
  br label %582

582:                                              ; preds = %581, %578
  %583 = load i32, i32* %12, align 4
  %584 = mul nsw i32 %583, 2
  %585 = shl i32 3, %584
  %586 = xor i32 %585, -1
  %587 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %588 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %587, i32 0, i32 2
  %589 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = and i32 %590, %586
  store i32 %591, i32* %589, align 8
  %592 = load i32, i32* %8, align 4
  %593 = load i32, i32* %12, align 4
  %594 = mul nsw i32 %593, 2
  %595 = shl i32 %592, %594
  %596 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %5, align 8
  %597 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %596, i32 0, i32 2
  %598 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 8
  %600 = or i32 %599, %595
  store i32 %600, i32* %598, align 8
  br label %601

601:                                              ; preds = %582
  %602 = load i32, i32* %12, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %12, align 4
  br label %553

604:                                              ; preds = %553
  br label %605

605:                                              ; preds = %604, %518
  ret void
}

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
