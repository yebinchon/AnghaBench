; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_source.c_ng_source_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.ng_source_stats*, %struct.ng_source_stats, %struct.ng_source_stats, %struct.TYPE_12__*, %struct.TYPE_11__, i32 }
%struct.ng_source_stats = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ng_mesg = type { %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.ng_source_embed_info = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ng_source_embed_cnt_info = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@NGF_RESP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NG_SOURCE_ACTIVE = common dso_local global i32 0, align 4
@NG_SOURCE_COUNTERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_source_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_source_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ng_source_stats*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ng_source_embed_info*, align 8
  %16 = alloca %struct.ng_source_embed_info*, align 8
  %17 = alloca %struct.ng_source_embed_cnt_info*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ng_source_embed_cnt_info*, align 8
  %20 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.TYPE_14__* @NG_NODE_PRIVATE(i32 %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %25 = call i32 @NGI_GET_MSG(i32 %23, %struct.ng_mesg* %24)
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %339 [
    i32 138, label %30
    i32 142, label %300
  ]

30:                                               ; preds = %3
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NGF_RESP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %10, align 4
  br label %341

40:                                               ; preds = %30
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %297 [
    i32 135, label %45
    i32 139, label %45
    i32 137, label %45
    i32 129, label %120
    i32 128, label %138
    i32 140, label %141
    i32 133, label %144
    i32 132, label %160
    i32 130, label %179
    i32 134, label %198
    i32 131, label %217
    i32 136, label %264
  ]

45:                                               ; preds = %40, %40, %40
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 139
  br i1 %50, label %51, label %109

51:                                               ; preds = %45
  %52 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %53 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %54 = load i32, i32* @M_NOWAIT, align 4
  %55 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %52, %struct.ng_mesg* %53, i32 40, i32 %54)
  %56 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %57 = icmp eq %struct.ng_mesg* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %10, align 4
  br label %342

60:                                               ; preds = %51
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %65, i32 0, i32 7
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NG_SOURCE_ACTIVE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %60
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %84, i32 0, i32 5
  %86 = call i32 @timevalisset(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %90, i32 0, i32 4
  %92 = call i32 @getmicrotime(i32* %91)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %94, i32 0, i32 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %97, i32 0, i32 3
  %99 = call i32 @timevalsub(i32* %95, i32* %98)
  br label %100

100:                                              ; preds = %88, %82, %60
  %101 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %102 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.ng_source_stats*
  store %struct.ng_source_stats* %104, %struct.ng_source_stats** %11, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = load %struct.ng_source_stats*, %struct.ng_source_stats** %11, align 8
  %108 = call i32 @bcopy(%struct.ng_source_stats* %106, %struct.ng_source_stats* %107, i32 40)
  br label %109

109:                                              ; preds = %100, %45
  %110 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %111 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 135
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = call i32 @bzero(%struct.ng_source_stats* %117, i32 40)
  br label %119

119:                                              ; preds = %115, %109
  br label %299

120:                                              ; preds = %40
  %121 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %122 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ne i64 %125, 4
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %10, align 4
  br label %299

129:                                              ; preds = %120
  %130 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %131 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %12, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @ng_source_start(%struct.TYPE_14__* %135, i32 %136)
  store i32 %137, i32* %10, align 4
  br label %299

138:                                              ; preds = %40
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %140 = call i32 @ng_source_stop(%struct.TYPE_14__* %139)
  br label %299

141:                                              ; preds = %40
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = call i32 @ng_source_clr_data(%struct.TYPE_14__* %142)
  br label %299

144:                                              ; preds = %40
  %145 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %146 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  store i8* %148, i8** %13, align 8
  %149 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %150 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %152, 2
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = load i32, i32* @EINVAL, align 4
  store i32 %155, i32* %10, align 4
  br label %299

156:                                              ; preds = %144
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 @ng_source_store_output_ifp(%struct.TYPE_14__* %157, i8* %158)
  br label %299

160:                                              ; preds = %40
  %161 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %162 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp ne i64 %165, 4
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @EINVAL, align 4
  store i32 %168, i32* %10, align 4
  br label %299

169:                                              ; preds = %160
  %170 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %171 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to i32*
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %177, i32 0, i32 2
  store i32 %175, i32* %178, align 4
  br label %299

179:                                              ; preds = %40
  %180 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %181 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = icmp ne i64 %184, 40
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = load i32, i32* @EINVAL, align 4
  store i32 %187, i32* %10, align 4
  br label %342

188:                                              ; preds = %179
  %189 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %190 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.ng_source_embed_info*
  store %struct.ng_source_embed_info* %192, %struct.ng_source_embed_info** %15, align 8
  %193 = load %struct.ng_source_embed_info*, %struct.ng_source_embed_info** %15, align 8
  %194 = bitcast %struct.ng_source_embed_info* %193 to %struct.ng_source_stats*
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = call i32 @bcopy(%struct.ng_source_stats* %194, %struct.ng_source_stats* %196, i32 40)
  br label %299

198:                                              ; preds = %40
  %199 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %200 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %201 = load i32, i32* @M_NOWAIT, align 4
  %202 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %199, %struct.ng_mesg* %200, i32 40, i32 %201)
  %203 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %204 = icmp eq %struct.ng_mesg* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load i32, i32* @ENOMEM, align 4
  store i32 %206, i32* %10, align 4
  br label %342

207:                                              ; preds = %198
  %208 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %209 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to %struct.ng_source_embed_info*
  store %struct.ng_source_embed_info* %211, %struct.ng_source_embed_info** %16, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 1
  %214 = load %struct.ng_source_embed_info*, %struct.ng_source_embed_info** %16, align 8
  %215 = bitcast %struct.ng_source_embed_info* %214 to %struct.ng_source_stats*
  %216 = call i32 @bcopy(%struct.ng_source_stats* %213, %struct.ng_source_stats* %215, i32 40)
  br label %299

217:                                              ; preds = %40
  %218 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %219 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = icmp ne i64 %222, 40
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = load i32, i32* @EINVAL, align 4
  store i32 %225, i32* %10, align 4
  br label %342

226:                                              ; preds = %217
  %227 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %228 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to %struct.ng_source_embed_cnt_info*
  store %struct.ng_source_embed_cnt_info* %230, %struct.ng_source_embed_cnt_info** %17, align 8
  %231 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %17, align 8
  %232 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @NG_SOURCE_COUNTERS, align 8
  %235 = icmp uge i64 %233, %234
  br i1 %235, label %251, label %236

236:                                              ; preds = %226
  %237 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %17, align 8
  %238 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %253, label %241

241:                                              ; preds = %236
  %242 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %17, align 8
  %243 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %253, label %246

246:                                              ; preds = %241
  %247 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %17, align 8
  %248 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = icmp eq i32 %249, 4
  br i1 %250, label %253, label %251

251:                                              ; preds = %246, %226
  %252 = load i32, i32* @EINVAL, align 4
  store i32 %252, i32* %10, align 4
  br label %342

253:                                              ; preds = %246, %241, %236
  %254 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %17, align 8
  %255 = bitcast %struct.ng_source_embed_cnt_info* %254 to %struct.ng_source_stats*
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = load %struct.ng_source_stats*, %struct.ng_source_stats** %257, align 8
  %259 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %17, align 8
  %260 = getelementptr inbounds %struct.ng_source_embed_cnt_info, %struct.ng_source_embed_cnt_info* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %258, i64 %261
  %263 = call i32 @bcopy(%struct.ng_source_stats* %255, %struct.ng_source_stats* %262, i32 40)
  br label %299

264:                                              ; preds = %40
  %265 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %266 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %18, align 8
  %270 = load i64, i64* %18, align 8
  %271 = load i64, i64* @NG_SOURCE_COUNTERS, align 8
  %272 = icmp uge i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %264
  %274 = load i32, i32* @EINVAL, align 4
  store i32 %274, i32* %10, align 4
  br label %342

275:                                              ; preds = %264
  %276 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %277 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %278 = load i32, i32* @M_NOWAIT, align 4
  %279 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %276, %struct.ng_mesg* %277, i32 40, i32 %278)
  %280 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %281 = icmp eq %struct.ng_mesg* %280, null
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* @ENOMEM, align 4
  store i32 %283, i32* %10, align 4
  br label %342

284:                                              ; preds = %275
  %285 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %286 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = inttoptr i64 %287 to %struct.ng_source_embed_cnt_info*
  store %struct.ng_source_embed_cnt_info* %288, %struct.ng_source_embed_cnt_info** %19, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = load %struct.ng_source_stats*, %struct.ng_source_stats** %290, align 8
  %292 = load i64, i64* %18, align 8
  %293 = getelementptr inbounds %struct.ng_source_stats, %struct.ng_source_stats* %291, i64 %292
  %294 = load %struct.ng_source_embed_cnt_info*, %struct.ng_source_embed_cnt_info** %19, align 8
  %295 = bitcast %struct.ng_source_embed_cnt_info* %294 to %struct.ng_source_stats*
  %296 = call i32 @bcopy(%struct.ng_source_stats* %293, %struct.ng_source_stats* %295, i32 40)
  br label %299

297:                                              ; preds = %40
  %298 = load i32, i32* @EINVAL, align 4
  store i32 %298, i32* %10, align 4
  br label %299

299:                                              ; preds = %297, %284, %253, %207, %188, %169, %167, %156, %154, %141, %138, %129, %127, %119
  br label %341

300:                                              ; preds = %3
  %301 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %302 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @NGF_RESP, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %300
  %309 = load i32, i32* @EINVAL, align 4
  store i32 %309, i32* %10, align 4
  br label %341

310:                                              ; preds = %300
  %311 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %312 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  switch i32 %314, label %336 [
    i32 141, label %315
  ]

315:                                              ; preds = %310
  %316 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %317 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = inttoptr i64 %318 to i8*
  store i8* %319, i8** %20, align 8
  %320 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %321 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = icmp slt i32 %323, 2
  br i1 %324, label %325, label %327

325:                                              ; preds = %315
  %326 = load i32, i32* @EINVAL, align 4
  store i32 %326, i32* %10, align 4
  br label %338

327:                                              ; preds = %315
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %329 = load i8*, i8** %20, align 8
  %330 = call i32 @ng_source_store_output_ifp(%struct.TYPE_14__* %328, i8* %329)
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %327
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %334 = call i32 @ng_source_set_autosrc(%struct.TYPE_14__* %333, i32 0)
  br label %335

335:                                              ; preds = %332, %327
  br label %338

336:                                              ; preds = %310
  %337 = load i32, i32* @EINVAL, align 4
  store i32 %337, i32* %10, align 4
  br label %338

338:                                              ; preds = %336, %335, %325
  br label %341

339:                                              ; preds = %3
  %340 = load i32, i32* @EINVAL, align 4
  store i32 %340, i32* %10, align 4
  br label %341

341:                                              ; preds = %339, %338, %308, %299, %38
  br label %342

342:                                              ; preds = %341, %282, %273, %251, %224, %205, %186, %58
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %4, align 4
  %345 = load i32, i32* %5, align 4
  %346 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %347 = call i32 @NG_RESPOND_MSG(i32 %343, i32 %344, i32 %345, %struct.ng_mesg* %346)
  %348 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %349 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %348)
  %350 = load i32, i32* %10, align 4
  ret i32 %350
}

declare dso_local %struct.TYPE_14__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @timevalisset(i32*) #1

declare dso_local i32 @getmicrotime(i32*) #1

declare dso_local i32 @timevalsub(i32*, i32*) #1

declare dso_local i32 @bcopy(%struct.ng_source_stats*, %struct.ng_source_stats*, i32) #1

declare dso_local i32 @bzero(%struct.ng_source_stats*, i32) #1

declare dso_local i32 @ng_source_start(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ng_source_stop(%struct.TYPE_14__*) #1

declare dso_local i32 @ng_source_clr_data(%struct.TYPE_14__*) #1

declare dso_local i32 @ng_source_store_output_ifp(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @ng_source_set_autosrc(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
