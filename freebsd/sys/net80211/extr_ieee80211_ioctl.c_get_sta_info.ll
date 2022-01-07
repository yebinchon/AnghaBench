; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_get_sta_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_get_sta_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.ieee80211_mcs_rates = type { i32, i32, i32, i32 }
%struct.ieee80211_node = type { i64, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32*, i32*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32, i32, i32, i32, %struct.ieee80211vap* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.ieee80211vap = type { i64, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_node*, i32*)*, i32 (%struct.ieee80211_node*, i32*, i32*)* }
%struct.stainforeq = type { i64, %struct.ieee80211req_sta_info* }
%struct.ieee80211req_sta_info = type { i64, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_CHAN_ANYC = common dso_local global %struct.TYPE_9__* null, align 8
@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@ieee80211_htrates = common dso_local global %struct.ieee80211_mcs_rates* null, align 8
@IEEE80211_NODE_SGI40 = common dso_local global i32 0, align 4
@IEEE80211_NODE_SGI20 = common dso_local global i32 0, align 4
@IEEE80211_NODE_QOS = common dso_local global i32 0, align 4
@IEEE80211_NONQOS_TID = common dso_local global i64 0, align 8
@IEEE80211_M_WDS = common dso_local global i64 0, align 8
@IEEE80211_FEXT_WDSLEGACY = common dso_local global i32 0, align 4
@IEEE80211_INACT_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @get_sta_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sta_info(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.stainforeq*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.ieee80211req_sta_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee80211_mcs_rates*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.stainforeq*
  store %struct.stainforeq* %13, %struct.stainforeq** %5, align 8
  %14 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %14, i32 0, i32 18
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %15, align 8
  store %struct.ieee80211vap* %16, %struct.ieee80211vap** %6, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %372

28:                                               ; preds = %22, %2
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %29, i32 0, i32 12
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @IEEE80211_CHAN_ANYC, align 8
  %33 = icmp eq %struct.TYPE_9__* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %372

35:                                               ; preds = %28
  %36 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %37 = call i64 @sta_space(%struct.ieee80211_node* %36, i64* %8)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.stainforeq*, %struct.stainforeq** %5, align 8
  %40 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %372

44:                                               ; preds = %35
  %45 = load %struct.stainforeq*, %struct.stainforeq** %5, align 8
  %46 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %45, i32 0, i32 1
  %47 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %46, align 8
  store %struct.ieee80211req_sta_info* %47, %struct.ieee80211req_sta_info** %7, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %51, i32 0, i32 1
  store i32 136, i32* %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %56, i32 0, i32 12
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %61, i32 0, i32 25
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %63, i32 0, i32 12
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %68, i32 0, i32 24
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %75, i32 0, i32 17
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %78, i32 0, i32 23
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %80, i32 0, i32 5
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32 (%struct.ieee80211_node*, i32*, i32*)*, i32 (%struct.ieee80211_node*, i32*, i32*)** %83, align 8
  %85 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %86 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %86, i32 0, i32 22
  %88 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %89 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %88, i32 0, i32 21
  %90 = call i32 %84(%struct.ieee80211_node* %85, i32* %87, i32* %89)
  %91 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %91, i32 0, i32 5
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32 (%struct.ieee80211_node*, i32*)*, i32 (%struct.ieee80211_node*, i32*)** %94, align 8
  %96 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %97 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %97, i32 0, i32 20
  %99 = call i32 %95(%struct.ieee80211_node* %96, i32* %98)
  %100 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %101 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %100, i32 0, i32 16
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %104 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %103, i32 0, i32 19
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %106 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %109 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %108, i32 0, i32 18
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %111 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %110, i32 0, i32 17
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %114 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %113, i32 0, i32 14
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @IEEE80211_ADDR_COPY(i32 %112, i32 %115)
  %117 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %118 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %117, i32 0, i32 13
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 15
  br i1 %126, label %127, label %130

127:                                              ; preds = %44
  %128 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %128, i32 0, i32 4
  store i32 15, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %44
  %131 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %131, i32 0, i32 16
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %135 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %134, i32 0, i32 13
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %139 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 @memcpy(i32* %133, i32* %137, i64 %141)
  %143 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %144 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %147 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %149 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %210

154:                                              ; preds = %130
  %155 = load %struct.ieee80211_mcs_rates*, %struct.ieee80211_mcs_rates** @ieee80211_htrates, align 8
  %156 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %157 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ieee80211_mcs_rates, %struct.ieee80211_mcs_rates* %155, i64 %162
  store %struct.ieee80211_mcs_rates* %163, %struct.ieee80211_mcs_rates** %11, align 8
  %164 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %165 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %164, i32 0, i32 12
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = call i64 @IEEE80211_IS_CHAN_HT40(%struct.TYPE_9__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %154
  %170 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %171 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IEEE80211_NODE_SGI40, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load %struct.ieee80211_mcs_rates*, %struct.ieee80211_mcs_rates** %11, align 8
  %178 = getelementptr inbounds %struct.ieee80211_mcs_rates, %struct.ieee80211_mcs_rates* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %181 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %180, i32 0, i32 6
  store i32 %179, i32* %181, align 4
  br label %188

182:                                              ; preds = %169
  %183 = load %struct.ieee80211_mcs_rates*, %struct.ieee80211_mcs_rates** %11, align 8
  %184 = getelementptr inbounds %struct.ieee80211_mcs_rates, %struct.ieee80211_mcs_rates* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %187 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %182, %176
  br label %209

189:                                              ; preds = %154
  %190 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %191 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @IEEE80211_NODE_SGI20, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = load %struct.ieee80211_mcs_rates*, %struct.ieee80211_mcs_rates** %11, align 8
  %198 = getelementptr inbounds %struct.ieee80211_mcs_rates, %struct.ieee80211_mcs_rates* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %201 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %200, i32 0, i32 6
  store i32 %199, i32* %201, align 4
  br label %208

202:                                              ; preds = %189
  %203 = load %struct.ieee80211_mcs_rates*, %struct.ieee80211_mcs_rates** %11, align 8
  %204 = getelementptr inbounds %struct.ieee80211_mcs_rates, %struct.ieee80211_mcs_rates* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %207 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %206, i32 0, i32 6
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %202, %196
  br label %209

209:                                              ; preds = %208, %188
  br label %216

210:                                              ; preds = %130
  %211 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %212 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %215 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %214, i32 0, i32 6
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %210, %209
  %217 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %218 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %221 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %220, i32 0, i32 7
  store i64 %219, i64* %221, align 8
  %222 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %223 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %222, i32 0, i32 11
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %226 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %225, i32 0, i32 15
  store i32 %224, i32* %226, align 4
  %227 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %228 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %231 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %230, i32 0, i32 14
  store i32 %229, i32* %231, align 8
  %232 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %233 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @IEEE80211_NODE_QOS, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %216
  %239 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %240 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %239, i32 0, i32 13
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %243 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %242, i32 0, i32 9
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @memcpy(i32* %241, i32* %244, i64 8)
  %246 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %247 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %246, i32 0, i32 12
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %250 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %249, i32 0, i32 8
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @memcpy(i32* %248, i32* %251, i64 8)
  br label %274

253:                                              ; preds = %216
  %254 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %255 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %254, i32 0, i32 9
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @IEEE80211_NONQOS_TID, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %261 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %260, i32 0, i32 13
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  store i32 %259, i32* %263, align 4
  %264 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %265 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %264, i32 0, i32 8
  %266 = load i32*, i32** %265, align 8
  %267 = load i64, i64* @IEEE80211_NONQOS_TID, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %271 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %270, i32 0, i32 12
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 %269, i32* %273, align 4
  br label %274

274:                                              ; preds = %253, %238
  %275 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %276 = call i64 @ieee80211_node_is_authorized(%struct.ieee80211_node* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %274
  %279 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %280 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %283 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %282, i32 0, i32 8
  store i32 %281, i32* %283, align 8
  br label %315

284:                                              ; preds = %274
  %285 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %286 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %302, label %289

289:                                              ; preds = %284
  %290 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %291 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @IEEE80211_M_WDS, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %308

295:                                              ; preds = %289
  %296 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %297 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @IEEE80211_FEXT_WDSLEGACY, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %295, %284
  %303 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %304 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %307 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %306, i32 0, i32 8
  store i32 %305, i32* %307, align 8
  br label %314

308:                                              ; preds = %295, %289
  %309 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %310 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %313 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %312, i32 0, i32 8
  store i32 %311, i32* %313, align 8
  br label %314

314:                                              ; preds = %308, %302
  br label %315

315:                                              ; preds = %314, %278
  %316 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %317 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %316, i32 0, i32 8
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %320 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %318, %321
  %323 = load i32, i32* @IEEE80211_INACT_WAIT, align 4
  %324 = mul nsw i32 %322, %323
  %325 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %326 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %325, i32 0, i32 8
  store i32 %324, i32* %326, align 8
  %327 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %328 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %331 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %330, i32 0, i32 11
  store i32 %329, i32* %331, align 4
  %332 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %333 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %336 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %335, i32 0, i32 10
  store i32 %334, i32* %336, align 8
  %337 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %338 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %341 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %340, i32 0, i32 9
  store i32 %339, i32* %341, align 4
  %342 = load i64, i64* %8, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %359

344:                                              ; preds = %315
  %345 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %346 = bitcast %struct.ieee80211req_sta_info* %345 to i32*
  %347 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %348 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %346, i64 %350
  store i32* %351, i32** %10, align 8
  %352 = load i32*, i32** %10, align 8
  %353 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %354 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i64, i64* %8, align 8
  %358 = call i32 @memcpy(i32* %352, i32* %356, i64 %357)
  br label %359

359:                                              ; preds = %344, %315
  %360 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %7, align 8
  %361 = bitcast %struct.ieee80211req_sta_info* %360 to i32*
  %362 = load i64, i64* %9, align 8
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  %364 = bitcast i32* %363 to %struct.ieee80211req_sta_info*
  %365 = load %struct.stainforeq*, %struct.stainforeq** %5, align 8
  %366 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %365, i32 0, i32 1
  store %struct.ieee80211req_sta_info* %364, %struct.ieee80211req_sta_info** %366, align 8
  %367 = load i64, i64* %9, align 8
  %368 = load %struct.stainforeq*, %struct.stainforeq** %5, align 8
  %369 = getelementptr inbounds %struct.stainforeq, %struct.stainforeq* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = sub i64 %370, %367
  store i64 %371, i64* %369, align 8
  br label %372

372:                                              ; preds = %359, %43, %34, %27
  ret void
}

declare dso_local i64 @sta_space(%struct.ieee80211_node*, i64*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(%struct.TYPE_9__*) #1

declare dso_local i64 @ieee80211_node_is_authorized(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
