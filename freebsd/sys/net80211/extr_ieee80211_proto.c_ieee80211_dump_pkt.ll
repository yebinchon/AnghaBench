; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_dump_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_proto.c_ieee80211_dump_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }
%struct.ieee80211_frame = type { i32*, i32*, i32*, i32* }
%struct.ieee80211_qosframe = type { i32* }

@IEEE80211_FC1_DIR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"NODS %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"->%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"TODS %s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"FRDS %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"DSDS %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"(%s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"->%s)\00", align 1
@IEEE80211_FC0_TYPE_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c" data\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" type#%d\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c" QoS [TID %u%s]\00", align 1
@IEEE80211_QOS_TID = common dso_local global i32 0, align 4
@IEEE80211_QOS_ACKPOLICY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c" ACM\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IEEE80211_FC1_PROTECTED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c" WEP [IV %.02x %.02x %.02x\00", align 1
@IEEE80211_WEP_IVLEN = common dso_local global i32 0, align 4
@IEEE80211_WEP_EXTIV = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c" %.02x %.02x %.02x\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c" KID %u]\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" %dM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" +%d\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_dump_pkt(%struct.ieee80211com* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_qosframe*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %16, %struct.ieee80211_frame** %11, align 8
  %17 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %18 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_FC1_DIR_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %93 [
    i32 129, label %24
    i32 128, label %40
    i32 130, label %56
    i32 131, label %72
  ]

24:                                               ; preds = %5
  %25 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %26 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i8* @ether_sprintf(i32* %27)
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %31 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i8* @ether_sprintf(i32* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i8* @ether_sprintf(i32* %37)
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %93

40:                                               ; preds = %5
  %41 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %42 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i8* @ether_sprintf(i32* %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i8* @ether_sprintf(i32* %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = call i8* @ether_sprintf(i32* %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %93

56:                                               ; preds = %5
  %57 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %58 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i8* @ether_sprintf(i32* %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  %62 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i8* @ether_sprintf(i32* %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @ether_sprintf(i32* %69)
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %93

72:                                               ; preds = %5
  %73 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %74 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %73, i64 1
  %75 = bitcast %struct.ieee80211_frame* %74 to i32*
  %76 = call i8* @ether_sprintf(i32* %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %79 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i8* @ether_sprintf(i32* %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %84 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i8* @ether_sprintf(i32* %85)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %86)
  %88 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i8* @ether_sprintf(i32* %90)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %5, %72, %56, %40, %24
  %94 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %95 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %100 = and i32 %98, %99
  switch i32 %100, label %111 [
    i32 133, label %101
    i32 132, label %103
  ]

101:                                              ; preds = %93
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %120

103:                                              ; preds = %93
  %104 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %105 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @ieee80211_mgt_subtype_name(i32 %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %109)
  br label %120

111:                                              ; preds = %93
  %112 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %113 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IEEE80211_FC0_TYPE_MASK, align 4
  %118 = and i32 %116, %117
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %111, %103, %101
  %121 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %122 = call i64 @IEEE80211_QOS_HAS_SEQ(%struct.ieee80211_frame* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load i32*, i32** %7, align 8
  %126 = bitcast i32* %125 to %struct.ieee80211_qosframe*
  store %struct.ieee80211_qosframe* %126, %struct.ieee80211_qosframe** %13, align 8
  %127 = load %struct.ieee80211_qosframe*, %struct.ieee80211_qosframe** %13, align 8
  %128 = getelementptr inbounds %struct.ieee80211_qosframe, %struct.ieee80211_qosframe* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @IEEE80211_QOS_TID, align 4
  %133 = and i32 %131, %132
  %134 = load %struct.ieee80211_qosframe*, %struct.ieee80211_qosframe** %13, align 8
  %135 = getelementptr inbounds %struct.ieee80211_qosframe, %struct.ieee80211_qosframe* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @IEEE80211_QOS_ACKPOLICY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %133, i8* %143)
  br label %145

145:                                              ; preds = %124, %120
  %146 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %147 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IEEE80211_FC1_PROTECTED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %217

154:                                              ; preds = %145
  %155 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %156 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %11, align 8
  %157 = call i32 @ieee80211_anyhdrspace(%struct.ieee80211com* %155, %struct.ieee80211_frame* %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 0
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %163, i32 %169, i32 %175)
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* @IEEE80211_WEP_IVLEN, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IEEE80211_WEP_EXTIV, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %154
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 5
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 6
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %193, i32 %199, i32 %205)
  br label %207

207:                                              ; preds = %187, %154
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @IEEE80211_WEP_IVLEN, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %208, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 6
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %207, %145
  %218 = load i32, i32* %9, align 4
  %219 = icmp sge i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32, i32* %9, align 4
  %222 = sdiv i32 %221, 2
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %220, %217
  %225 = load i32, i32* %10, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %10, align 4
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %232 = load i32, i32* %8, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %230
  store i32 0, i32* %12, align 4
  br label %235

235:                                              ; preds = %252, %234
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %8, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %255

239:                                              ; preds = %235
  %240 = load i32, i32* %12, align 4
  %241 = and i32 %240, 1
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %239
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %245
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  br label %235

255:                                              ; preds = %235
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %257

257:                                              ; preds = %255, %230
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ether_sprintf(i32*) #1

declare dso_local i8* @ieee80211_mgt_subtype_name(i32) #1

declare dso_local i64 @IEEE80211_QOS_HAS_SEQ(%struct.ieee80211_frame*) #1

declare dso_local i32 @ieee80211_anyhdrspace(%struct.ieee80211com*, %struct.ieee80211_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
