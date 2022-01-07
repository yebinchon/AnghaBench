; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_5__*, %struct.ng_ppp_mp_state, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.ng_ppp_mp_state, i32, i32 }
%struct.ng_ppp_mp_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.ng_mesg = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ng_ppp_node_conf = type { i32*, i32 }
%struct.ng_ppp_link_stat64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.ng_ppp_link_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NG_PPP_MAX_LINKS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MP_NOSEQ = common dso_local global i32 0, align 4
@NG_PPP_BUNDLE_LINKNUM = common dso_local global i32 0, align 4
@HOOK_INDEX_VJC_IP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_ppp_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ng_mesg*, align 8
  %12 = alloca %struct.ng_ppp_node_conf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ng_ppp_node_conf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ng_ppp_mp_state*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ng_ppp_link_stat64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ng_ppp_link_stat*, align 8
  %21 = alloca %struct.ng_mesg*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %26 = call i32 @NGI_GET_MSG(i32 %24, %struct.ng_mesg* %25)
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %28 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %370 [
    i32 136, label %31
    i32 128, label %354
  ]

31:                                               ; preds = %3
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %33 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %351 [
    i32 129, label %36
    i32 133, label %89
    i32 130, label %132
    i32 132, label %194
    i32 137, label %194
    i32 135, label %194
    i32 131, label %194
    i32 134, label %194
  ]

36:                                               ; preds = %31
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %38 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ng_ppp_node_conf*
  store %struct.ng_ppp_node_conf* %40, %struct.ng_ppp_node_conf** %12, align 8
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = icmp ne i64 %45, 16
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = call i32 @ERROUT(i32 %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %12, align 8
  %53 = call i32 @ng_ppp_config_valid(i32 %51, %struct.ng_ppp_node_conf* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @ERROUT(i32 %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %12, align 8
  %60 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %83, %58
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %12, align 8
  %70 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i32 %75, i32* %82, align 4
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %64

86:                                               ; preds = %64
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ng_ppp_update(i32 %87, i32 1)
  br label %353

89:                                               ; preds = %31
  %90 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %91 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %92 = load i32, i32* @M_NOWAIT, align 4
  %93 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %90, %struct.ng_mesg* %91, i32 16, i32 %92)
  %94 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %95 = icmp eq %struct.ng_mesg* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = call i32 @ERROUT(i32 %97)
  br label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %101 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.ng_ppp_node_conf*
  store %struct.ng_ppp_node_conf* %103, %struct.ng_ppp_node_conf** %14, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %14, align 8
  %108 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %128, %99
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ng_ppp_node_conf*, %struct.ng_ppp_node_conf** %14, align 8
  %123 = getelementptr inbounds %struct.ng_ppp_node_conf, %struct.ng_ppp_node_conf* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  br label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %109

131:                                              ; preds = %109
  br label %353

132:                                              ; preds = %31
  %133 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %134 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %135 = load i32, i32* @M_NOWAIT, align 4
  %136 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %133, %struct.ng_mesg* %134, i32 48, i32 %135)
  %137 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %138 = icmp eq %struct.ng_mesg* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = call i32 @ERROUT(i32 %140)
  br label %142

142:                                              ; preds = %139, %132
  %143 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %144 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.ng_ppp_mp_state*
  store %struct.ng_ppp_mp_state* %146, %struct.ng_ppp_mp_state** %16, align 8
  %147 = load %struct.ng_ppp_mp_state*, %struct.ng_ppp_mp_state** %16, align 8
  %148 = call i32 @bzero(%struct.ng_ppp_mp_state* %147, i32 48)
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %180, %142
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %183

153:                                              ; preds = %149
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @MP_NOSEQ, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %153
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.ng_ppp_mp_state*, %struct.ng_ppp_mp_state** %16, align 8
  %174 = getelementptr inbounds %struct.ng_ppp_mp_state, %struct.ng_ppp_mp_state* %173, i32 0, i32 10
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %172, i32* %178, align 4
  br label %179

179:                                              ; preds = %164, %153
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %17, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %17, align 4
  br label %149

183:                                              ; preds = %149
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ng_ppp_mp_state*, %struct.ng_ppp_mp_state** %16, align 8
  %188 = getelementptr inbounds %struct.ng_ppp_mp_state, %struct.ng_ppp_mp_state* %187, i32 0, i32 9
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ng_ppp_mp_state*, %struct.ng_ppp_mp_state** %16, align 8
  %193 = getelementptr inbounds %struct.ng_ppp_mp_state, %struct.ng_ppp_mp_state* %192, i32 0, i32 8
  store i32 %191, i32* %193, align 8
  br label %353

194:                                              ; preds = %31, %31, %31, %31, %31
  %195 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %196 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = icmp ne i64 %199, 4
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load i32, i32* @EINVAL, align 4
  %203 = call i32 @ERROUT(i32 %202)
  br label %204

204:                                              ; preds = %201, %194
  %205 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %206 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i32*
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %19, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* @NG_PPP_BUNDLE_LINKNUM, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i32, i32* @EINVAL, align 4
  %219 = call i32 @ERROUT(i32 %218)
  br label %220

220:                                              ; preds = %217, %213, %204
  %221 = load i32, i32* %19, align 4
  %222 = load i32, i32* @NG_PPP_BUNDLE_LINKNUM, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  br label %235

227:                                              ; preds = %220
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 0
  br label %235

235:                                              ; preds = %227, %224
  %236 = phi %struct.ng_ppp_mp_state* [ %226, %224 ], [ %234, %227 ]
  %237 = bitcast %struct.ng_ppp_mp_state* %236 to %struct.ng_ppp_link_stat64*
  store %struct.ng_ppp_link_stat64* %237, %struct.ng_ppp_link_stat64** %18, align 8
  %238 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %239 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 131
  br i1 %242, label %249, label %243

243:                                              ; preds = %235
  %244 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %245 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 134
  br i1 %248, label %249, label %266

249:                                              ; preds = %243, %235
  %250 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %251 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %252 = load i32, i32* @M_NOWAIT, align 4
  %253 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %250, %struct.ng_mesg* %251, i32 48, i32 %252)
  %254 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %255 = icmp eq %struct.ng_mesg* %254, null
  br i1 %255, label %256, label %259

256:                                              ; preds = %249
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = call i32 @ERROUT(i32 %257)
  br label %259

259:                                              ; preds = %256, %249
  %260 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %261 = bitcast %struct.ng_ppp_link_stat64* %260 to %struct.ng_ppp_mp_state*
  %262 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %263 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @bcopy(%struct.ng_ppp_mp_state* %261, i64 %264, i32 48)
  br label %334

266:                                              ; preds = %243
  %267 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %268 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 132
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %274 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 135
  br i1 %277, label %278, label %333

278:                                              ; preds = %272, %266
  %279 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %280 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %281 = load i32, i32* @M_NOWAIT, align 4
  %282 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %279, %struct.ng_mesg* %280, i32 32, i32 %281)
  %283 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %284 = icmp eq %struct.ng_mesg* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = load i32, i32* @ENOMEM, align 4
  %287 = call i32 @ERROUT(i32 %286)
  br label %288

288:                                              ; preds = %285, %278
  %289 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %290 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = inttoptr i64 %291 to %struct.ng_ppp_link_stat*
  store %struct.ng_ppp_link_stat* %292, %struct.ng_ppp_link_stat** %20, align 8
  %293 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %294 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %297 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %296, i32 0, i32 7
  store i32 %295, i32* %297, align 4
  %298 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %299 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %302 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %301, i32 0, i32 6
  store i32 %300, i32* %302, align 4
  %303 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %304 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %307 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %306, i32 0, i32 5
  store i32 %305, i32* %307, align 4
  %308 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %309 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %312 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %311, i32 0, i32 4
  store i32 %310, i32* %312, align 4
  %313 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %314 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %317 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %316, i32 0, i32 3
  store i32 %315, i32* %317, align 4
  %318 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %319 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %322 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %321, i32 0, i32 2
  store i32 %320, i32* %322, align 4
  %323 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %324 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %327 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 4
  %328 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %329 = getelementptr inbounds %struct.ng_ppp_link_stat64, %struct.ng_ppp_link_stat64* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.ng_ppp_link_stat*, %struct.ng_ppp_link_stat** %20, align 8
  %332 = getelementptr inbounds %struct.ng_ppp_link_stat, %struct.ng_ppp_link_stat* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 4
  br label %333

333:                                              ; preds = %288, %272
  br label %334

334:                                              ; preds = %333, %259
  %335 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %336 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 132
  br i1 %339, label %340, label %350

340:                                              ; preds = %334
  %341 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %342 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 131
  br i1 %345, label %346, label %350

346:                                              ; preds = %340
  %347 = load %struct.ng_ppp_link_stat64*, %struct.ng_ppp_link_stat64** %18, align 8
  %348 = bitcast %struct.ng_ppp_link_stat64* %347 to %struct.ng_ppp_mp_state*
  %349 = call i32 @bzero(%struct.ng_ppp_mp_state* %348, i32 48)
  br label %350

350:                                              ; preds = %346, %340, %334
  br label %353

351:                                              ; preds = %31
  %352 = load i32, i32* @EINVAL, align 4
  store i32 %352, i32* %10, align 4
  br label %353

353:                                              ; preds = %351, %350, %183, %131, %86
  br label %372

354:                                              ; preds = %3
  %355 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  store %struct.ng_mesg* %355, %struct.ng_mesg** %21, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %11, align 8
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = load i64, i64* @HOOK_INDEX_VJC_IP, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %7, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %354
  %364 = load i32, i32* %10, align 4
  %365 = load %struct.ng_mesg*, %struct.ng_mesg** %21, align 8
  %366 = load i32, i32* %7, align 4
  %367 = call i32 @NG_FWD_ITEM_HOOK(i32 %364, %struct.ng_mesg* %365, i32 %366)
  br label %368

368:                                              ; preds = %363, %354
  %369 = load i32, i32* %10, align 4
  store i32 %369, i32* %4, align 4
  br label %382

370:                                              ; preds = %3
  %371 = load i32, i32* @EINVAL, align 4
  store i32 %371, i32* %10, align 4
  br label %372

372:                                              ; preds = %370, %353
  br label %373

373:                                              ; preds = %372
  %374 = load i32, i32* %10, align 4
  %375 = load i32, i32* %5, align 4
  %376 = load i32, i32* %6, align 4
  %377 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %378 = call i32 @NG_RESPOND_MSG(i32 %374, i32 %375, i32 %376, %struct.ng_mesg* %377)
  %379 = load %struct.ng_mesg*, %struct.ng_mesg** %11, align 8
  %380 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %379)
  %381 = load i32, i32* %10, align 4
  store i32 %381, i32* %4, align 4
  br label %382

382:                                              ; preds = %373, %368
  %383 = load i32, i32* %4, align 4
  ret i32 %383
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @ERROUT(i32) #1

declare dso_local i32 @ng_ppp_config_valid(i32, %struct.ng_ppp_node_conf*) #1

declare dso_local i32 @ng_ppp_update(i32, i32) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @bzero(%struct.ng_ppp_mp_state*, i32) #1

declare dso_local i32 @bcopy(%struct.ng_ppp_mp_state*, i64, i32) #1

declare dso_local i32 @NG_FWD_ITEM_HOOK(i32, %struct.ng_mesg*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
