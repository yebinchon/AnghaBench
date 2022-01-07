; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_ng_uni_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_ng_uni_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ngm_uni_debug = type { i32* }
%struct.uni_config = type { i32 }
%struct.ngm_uni_set_config = type { i32, %struct.ngm_uni_config_mask }
%struct.ngm_uni_config_mask = type { i32, i32, i32 }

@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UNI_MAXFACILITY = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_uni_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_uni_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ngm_uni_debug*, align 8
  %13 = alloca %struct.ngm_uni_debug*, align 8
  %14 = alloca %struct.uni_config*, align 8
  %15 = alloca %struct.ngm_uni_set_config*, align 8
  %16 = alloca %struct.ngm_uni_config_mask*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.priv* @NG_NODE_PRIVATE(i32 %17)
  store %struct.priv* %18, %struct.priv** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %21 = call i32 @NGI_GET_MSG(i32 %19, %struct.ng_mesg* %20)
  %22 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %23 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %281 [
    i32 137, label %26
    i32 135, label %60
  ]

26:                                               ; preds = %3
  %27 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %28 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %57 [
    i32 136, label %31
  ]

31:                                               ; preds = %26
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %33 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %34 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %32, %struct.ng_mesg* %33, i32 %34, i32 %35)
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %38 = icmp eq %struct.ng_mesg* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %10, align 4
  br label %59

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.priv*, %struct.priv** %7, align 8
  %44 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %45 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %49 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @text_status(i32 %42, %struct.priv* %43, i8* %47, i32 %51)
  %53 = add nsw i32 %52, 1
  %54 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %55 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %59

57:                                               ; preds = %26
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %57, %41, %39
  br label %283

60:                                               ; preds = %3
  %61 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %62 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %278 [
    i32 129, label %65
    i32 132, label %99
    i32 130, label %132
    i32 128, label %159
    i32 133, label %203
    i32 134, label %221
    i32 131, label %243
  ]

65:                                               ; preds = %60
  %66 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %67 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ugt i64 %70, 8
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %10, align 4
  br label %280

74:                                               ; preds = %65
  %75 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %76 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.ngm_uni_debug*
  store %struct.ngm_uni_debug* %78, %struct.ngm_uni_debug** %12, align 8
  store i64 0, i64* %11, align 8
  br label %79

79:                                               ; preds = %95, %74
  %80 = load i64, i64* %11, align 8
  %81 = load i64, i64* @UNI_MAXFACILITY, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %79
  %84 = load %struct.priv*, %struct.priv** %7, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.ngm_uni_debug*, %struct.ngm_uni_debug** %12, align 8
  %89 = getelementptr inbounds %struct.ngm_uni_debug, %struct.ngm_uni_debug* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @uni_set_debug(i32 %86, i64 %87, i32 %93)
  br label %95

95:                                               ; preds = %83
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %79

98:                                               ; preds = %79
  br label %280

99:                                               ; preds = %60
  %100 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %101 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %102 = load i32, i32* @M_NOWAIT, align 4
  %103 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %100, %struct.ng_mesg* %101, i32 8, i32 %102)
  %104 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %105 = icmp eq %struct.ng_mesg* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @ENOMEM, align 4
  store i32 %107, i32* %10, align 4
  br label %280

108:                                              ; preds = %99
  %109 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %110 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.ngm_uni_debug*
  store %struct.ngm_uni_debug* %112, %struct.ngm_uni_debug** %13, align 8
  store i64 0, i64* %11, align 8
  br label %113

113:                                              ; preds = %128, %108
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* @UNI_MAXFACILITY, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load %struct.priv*, %struct.priv** %7, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @uni_get_debug(i32 %120, i64 %121)
  %123 = load %struct.ngm_uni_debug*, %struct.ngm_uni_debug** %13, align 8
  %124 = getelementptr inbounds %struct.ngm_uni_debug, %struct.ngm_uni_debug* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %122, i32* %127, align 4
  br label %128

128:                                              ; preds = %117
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %11, align 8
  br label %113

131:                                              ; preds = %113
  br label %280

132:                                              ; preds = %60
  %133 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %134 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %10, align 4
  br label %280

140:                                              ; preds = %132
  %141 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %142 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %143 = load i32, i32* @M_NOWAIT, align 4
  %144 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %141, %struct.ng_mesg* %142, i32 4, i32 %143)
  %145 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %146 = icmp eq %struct.ng_mesg* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @ENOMEM, align 4
  store i32 %148, i32* %10, align 4
  br label %280

149:                                              ; preds = %140
  %150 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %151 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to %struct.uni_config*
  store %struct.uni_config* %153, %struct.uni_config** %14, align 8
  %154 = load %struct.priv*, %struct.priv** %7, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.uni_config*, %struct.uni_config** %14, align 8
  %158 = call i32 @uni_get_config(i32 %156, %struct.uni_config* %157)
  br label %280

159:                                              ; preds = %60
  %160 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %161 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = icmp ne i64 %164, 16
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @EINVAL, align 4
  store i32 %167, i32* %10, align 4
  br label %280

168:                                              ; preds = %159
  %169 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %170 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to %struct.ngm_uni_set_config*
  store %struct.ngm_uni_set_config* %172, %struct.ngm_uni_set_config** %15, align 8
  %173 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %174 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %175 = load i32, i32* @M_NOWAIT, align 4
  %176 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %173, %struct.ng_mesg* %174, i32 12, i32 %175)
  %177 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %178 = icmp eq %struct.ng_mesg* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %168
  %180 = load i32, i32* @ENOMEM, align 4
  store i32 %180, i32* %10, align 4
  br label %280

181:                                              ; preds = %168
  %182 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %183 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to %struct.ngm_uni_config_mask*
  store %struct.ngm_uni_config_mask* %185, %struct.ngm_uni_config_mask** %16, align 8
  %186 = load %struct.ngm_uni_config_mask*, %struct.ngm_uni_config_mask** %16, align 8
  %187 = load %struct.ngm_uni_set_config*, %struct.ngm_uni_set_config** %15, align 8
  %188 = getelementptr inbounds %struct.ngm_uni_set_config, %struct.ngm_uni_set_config* %187, i32 0, i32 1
  %189 = bitcast %struct.ngm_uni_config_mask* %186 to i8*
  %190 = bitcast %struct.ngm_uni_config_mask* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %189, i8* align 4 %190, i64 12, i1 false)
  %191 = load %struct.priv*, %struct.priv** %7, align 8
  %192 = getelementptr inbounds %struct.priv, %struct.priv* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ngm_uni_set_config*, %struct.ngm_uni_set_config** %15, align 8
  %195 = getelementptr inbounds %struct.ngm_uni_set_config, %struct.ngm_uni_set_config* %194, i32 0, i32 0
  %196 = load %struct.ngm_uni_config_mask*, %struct.ngm_uni_config_mask** %16, align 8
  %197 = getelementptr inbounds %struct.ngm_uni_config_mask, %struct.ngm_uni_config_mask* %196, i32 0, i32 2
  %198 = load %struct.ngm_uni_config_mask*, %struct.ngm_uni_config_mask** %16, align 8
  %199 = getelementptr inbounds %struct.ngm_uni_config_mask, %struct.ngm_uni_config_mask* %198, i32 0, i32 1
  %200 = load %struct.ngm_uni_config_mask*, %struct.ngm_uni_config_mask** %16, align 8
  %201 = getelementptr inbounds %struct.ngm_uni_config_mask, %struct.ngm_uni_config_mask* %200, i32 0, i32 0
  %202 = call i32 @uni_set_config(i32 %193, i32* %195, i32* %197, i32* %199, i32* %201)
  br label %280

203:                                              ; preds = %60
  %204 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %205 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = load i32, i32* @EINVAL, align 4
  store i32 %210, i32* %10, align 4
  br label %280

211:                                              ; preds = %203
  %212 = load %struct.priv*, %struct.priv** %7, align 8
  %213 = getelementptr inbounds %struct.priv, %struct.priv* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  %217 = load i32, i32* @EISCONN, align 4
  store i32 %217, i32* %10, align 4
  br label %280

218:                                              ; preds = %211
  %219 = load %struct.priv*, %struct.priv** %7, align 8
  %220 = getelementptr inbounds %struct.priv, %struct.priv* %219, i32 0, i32 0
  store i32 1, i32* %220, align 4
  br label %280

221:                                              ; preds = %60
  %222 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %223 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = load i32, i32* @EINVAL, align 4
  store i32 %228, i32* %10, align 4
  br label %280

229:                                              ; preds = %221
  %230 = load %struct.priv*, %struct.priv** %7, align 8
  %231 = getelementptr inbounds %struct.priv, %struct.priv* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* @ENOTCONN, align 4
  store i32 %235, i32* %10, align 4
  br label %280

236:                                              ; preds = %229
  %237 = load %struct.priv*, %struct.priv** %7, align 8
  %238 = getelementptr inbounds %struct.priv, %struct.priv* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  %239 = load %struct.priv*, %struct.priv** %7, align 8
  %240 = getelementptr inbounds %struct.priv, %struct.priv* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @uni_reset(i32 %241)
  br label %280

243:                                              ; preds = %60
  %244 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %245 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  %250 = load i32, i32* @EINVAL, align 4
  store i32 %250, i32* %10, align 4
  br label %280

251:                                              ; preds = %243
  %252 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %253 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %254 = load i32, i32* @M_NOWAIT, align 4
  %255 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %252, %struct.ng_mesg* %253, i32 4, i32 %254)
  %256 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %257 = icmp eq %struct.ng_mesg* %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %251
  %259 = load i32, i32* @ENOMEM, align 4
  store i32 %259, i32* %10, align 4
  br label %280

260:                                              ; preds = %251
  %261 = load %struct.priv*, %struct.priv** %7, align 8
  %262 = getelementptr inbounds %struct.priv, %struct.priv* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.priv*, %struct.priv** %7, align 8
  %267 = getelementptr inbounds %struct.priv, %struct.priv* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @uni_getcustate(i32 %268)
  %270 = add nsw i32 %269, 1
  br label %272

271:                                              ; preds = %260
  br label %272

272:                                              ; preds = %271, %265
  %273 = phi i32 [ %270, %265 ], [ 0, %271 ]
  %274 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %275 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = inttoptr i64 %276 to i32*
  store i32 %273, i32* %277, align 4
  br label %280

278:                                              ; preds = %60
  %279 = load i32, i32* @EINVAL, align 4
  store i32 %279, i32* %10, align 4
  br label %280

280:                                              ; preds = %278, %272, %258, %249, %236, %234, %227, %218, %216, %209, %181, %179, %166, %149, %147, %138, %131, %106, %98, %72
  br label %283

281:                                              ; preds = %3
  %282 = load i32, i32* @EINVAL, align 4
  store i32 %282, i32* %10, align 4
  br label %283

283:                                              ; preds = %281, %280, %59
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %4, align 4
  %286 = load i32, i32* %5, align 4
  %287 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %288 = call i32 @NG_RESPOND_MSG(i32 %284, i32 %285, i32 %286, %struct.ng_mesg* %287)
  %289 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %290 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %289)
  %291 = load i32, i32* %10, align 4
  ret i32 %291
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @text_status(i32, %struct.priv*, i8*, i32) #1

declare dso_local i32 @uni_set_debug(i32, i64, i32) #1

declare dso_local i32 @uni_get_debug(i32, i64) #1

declare dso_local i32 @uni_get_config(i32, %struct.uni_config*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uni_set_config(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @uni_reset(i32) #1

declare dso_local i32 @uni_getcustate(i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
