; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_node_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, i32, i32, i32, %struct.ieee80211vap*, %struct.ieee80211com* }
%struct.ieee80211vap = type { i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 (%struct.ieee80211_node*)* }
%struct.ieee80211com = type { i32, i32 (%struct.ieee80211_node.0*, i32)*, i32, i32 }
%struct.ieee80211_node.0 = type opaque

@.str = private unnamed_addr constant [14 x i8] c"no aid bitmap\00", align 1
@IEEE80211_STATUS_TOOMANY = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@IEEE80211_MSG_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"station associated at aid %d: %s preamble, %s slot time%s%s%s%s%s%s%s%s\00", align 1
@IEEE80211_F_SHPREAMBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@IEEE80211_F_SHSLOT = common dso_local global i32 0, align 4
@IEEE80211_F_USEPROT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c", protection\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IEEE80211_NODE_QOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c", QoS\00", align 1
@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c", HT40\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c", HT20\00", align 1
@IEEE80211_NODE_AMPDU = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c" (+AMPDU)\00", align 1
@IEEE80211_NODE_MIMO_RTS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c" (+SMPS-DYN)\00", align 1
@IEEE80211_NODE_MIMO_PS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c" (+SMPS)\00", align 1
@IEEE80211_NODE_RIFS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c" (+RIFS)\00", align 1
@IEEE80211_NODE_FF = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c", fast-frames\00", align 1
@IEEE80211_NODE_TURBOP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c", turbo\00", align 1
@IEEE80211_STATUS_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_FC0_SUBTYPE_ASSOC_RESP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_node_join(%struct.ieee80211_node* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 5
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %10, align 8
  store %struct.ieee80211com* %11, %struct.ieee80211com** %5, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 4
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %6, align 8
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %2
  %20 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %39, %19
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @IEEE80211_AID_ISSET(%struct.ieee80211vap* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %26

42:                                               ; preds = %37, %26
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @IEEE80211_STATUS_TOOMANY, align 4
  %52 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %49, i32 %50, i32 %51)
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %54 = call i32 @ieee80211_node_leave(%struct.ieee80211_node* %53)
  br label %263

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, 49152
  %58 = sext i32 %57 to i64
  %59 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @time_uptime, align 4
  %62 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %65 = call i32 @IEEE80211_LOCK(%struct.ieee80211com* %64)
  %66 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %67 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @IEEE80211_AID_SET(%struct.ieee80211vap* %66, i32 %70)
  %72 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %73 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @IEEE80211_IS_CHAN_HT(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %55
  %86 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %87 = call i32 @ieee80211_ht_node_join(%struct.ieee80211_node* %86)
  br label %88

88:                                               ; preds = %85, %55
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IEEE80211_IS_CHAN_VHT(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %96 = call i32 @ieee80211_vht_node_join(%struct.ieee80211_node* %95)
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %99 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @IEEE80211_IS_CHAN_ANYG(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %105 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @IEEE80211_IS_CHAN_FULL(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %111 = call i32 @ieee80211_node_join_11g(%struct.ieee80211_node* %110)
  br label %112

112:                                              ; preds = %109, %103, %97
  %113 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %114 = call i32 @IEEE80211_UNLOCK(%struct.ieee80211com* %113)
  store i32 1, i32* %7, align 4
  br label %116

115:                                              ; preds = %2
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %118 = load i32, i32* @IEEE80211_MSG_ASSOC, align 4
  %119 = load i32, i32* @IEEE80211_MSG_DEBUG, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %122 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %123 = call i32 @IEEE80211_NODE_AID(%struct.ieee80211_node* %122)
  %124 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %125 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @IEEE80211_F_SHPREAMBLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %132 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %133 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IEEE80211_F_SHSLOT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %140 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %141 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @IEEE80211_F_USEPROT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %148 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %149 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IEEE80211_NODE_QOS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %156 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %157 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %116
  %163 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %164 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 40
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  br label %170

169:                                              ; preds = %116
  br label %170

170:                                              ; preds = %169, %162
  %171 = phi i8* [ %168, %162 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %169 ]
  %172 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %173 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IEEE80211_NODE_AMPDU, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %180 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %181 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @IEEE80211_NODE_MIMO_RTS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %170
  br label %196

187:                                              ; preds = %170
  %188 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %189 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IEEE80211_NODE_MIMO_PS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %196

196:                                              ; preds = %187, %186
  %197 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), %186 ], [ %195, %187 ]
  %198 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %199 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @IEEE80211_NODE_RIFS, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %206 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %207 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %208 = load i32, i32* @IEEE80211_NODE_FF, align 4
  %209 = call i64 @IEEE80211_ATH_CAP(%struct.ieee80211vap* %206, %struct.ieee80211_node* %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %213 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %214 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %215 = load i32, i32* @IEEE80211_NODE_TURBOP, align 4
  %216 = call i64 @IEEE80211_ATH_CAP(%struct.ieee80211vap* %213, %struct.ieee80211_node* %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %220 = call i32 @IEEE80211_NOTE(%struct.ieee80211vap* %117, i32 %120, %struct.ieee80211_node* %121, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %123, i8* %131, i8* %139, i8* %147, i8* %155, i8* %171, i8* %179, i8* %197, i8* %205, i8* %212, i8* %219)
  %221 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %222 = call i32 @ieee80211_node_setuptxparms(%struct.ieee80211_node* %221)
  %223 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %224 = call i32 @ieee80211_ratectl_node_init(%struct.ieee80211_node* %223)
  %225 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %226 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %225, i32 0, i32 1
  %227 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %226, align 8
  %228 = icmp ne i32 (%struct.ieee80211_node.0*, i32)* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %196
  %230 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %231 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %230, i32 0, i32 1
  %232 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %231, align 8
  %233 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %234 = bitcast %struct.ieee80211_node* %233 to %struct.ieee80211_node.0*
  %235 = load i32, i32* %7, align 4
  %236 = call i32 %232(%struct.ieee80211_node.0* %234, i32 %235)
  br label %237

237:                                              ; preds = %229, %196
  %238 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @IEEE80211_STATUS_SUCCESS, align 4
  %241 = call i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node* %238, i32 %239, i32 %240)
  %242 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %243 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %242, i32 0, i32 1
  %244 = load %struct.TYPE_2__*, %struct.TYPE_2__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32 (%struct.ieee80211_node*)*, i32 (%struct.ieee80211_node*)** %245, align 8
  %247 = icmp ne i32 (%struct.ieee80211_node*)* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %237
  %249 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %250 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %249, i32 0, i32 1
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32 (%struct.ieee80211_node*)*, i32 (%struct.ieee80211_node*)** %252, align 8
  %254 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %255 = call i32 %253(%struct.ieee80211_node* %254)
  br label %256

256:                                              ; preds = %248, %237
  %257 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %258 = load i32, i32* %4, align 4
  %259 = load i32, i32* @IEEE80211_FC0_SUBTYPE_ASSOC_RESP, align 4
  %260 = icmp eq i32 %258, %259
  %261 = zext i1 %260 to i32
  %262 = call i32 @ieee80211_notify_node_join(%struct.ieee80211_node* %257, i32 %261)
  br label %263

263:                                              ; preds = %256, %48
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IEEE80211_AID_ISSET(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @IEEE80211_SEND_MGMT(%struct.ieee80211_node*, i32, i32) #1

declare dso_local i32 @ieee80211_node_leave(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_LOCK(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_AID_SET(%struct.ieee80211vap*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(i32) #1

declare dso_local i32 @ieee80211_ht_node_join(%struct.ieee80211_node*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT(i32) #1

declare dso_local i32 @ieee80211_vht_node_join(%struct.ieee80211_node*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_FULL(i32) #1

declare dso_local i32 @ieee80211_node_join_11g(%struct.ieee80211_node*) #1

declare dso_local i32 @IEEE80211_UNLOCK(%struct.ieee80211com*) #1

declare dso_local i32 @IEEE80211_NOTE(%struct.ieee80211vap*, i32, %struct.ieee80211_node*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @IEEE80211_NODE_AID(%struct.ieee80211_node*) #1

declare dso_local i64 @IEEE80211_ATH_CAP(%struct.ieee80211vap*, %struct.ieee80211_node*, i32) #1

declare dso_local i32 @ieee80211_node_setuptxparms(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_ratectl_node_init(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_notify_node_join(%struct.ieee80211_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
