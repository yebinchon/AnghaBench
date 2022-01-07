; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32, i32, i32, i32, i32*, i32* }
%struct.ng_mesg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sscop_param = type { i32 }
%struct.ng_sscop_setparam = type { i32, i32 }
%struct.ng_sscop_setparam_resp = type { i32, i32 }

@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ng_sscop_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sscop_rcvmsg(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.priv*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sscop_param*, align 8
  %12 = alloca %struct.ng_sscop_setparam*, align 8
  %13 = alloca %struct.ng_sscop_setparam_resp*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.priv* @NG_NODE_PRIVATE(i32 %14)
  store %struct.priv* %15, %struct.priv** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %18 = call i32 @NGI_GET_MSG(i32 %16, %struct.ng_mesg* %17)
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %20 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %289 [
    i32 137, label %23
    i32 138, label %57
    i32 136, label %88
  ]

23:                                               ; preds = %3
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %25 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %54 [
    i32 128, label %28
  ]

28:                                               ; preds = %23
  %29 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %30 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %31 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %29, %struct.ng_mesg* %30, i32 %31, i32 %32)
  %34 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %35 = icmp eq %struct.ng_mesg* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  store i32 %37, i32* %10, align 4
  br label %56

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.priv*, %struct.priv** %7, align 8
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %46 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @text_status(i32 %39, %struct.priv* %40, i8* %44, i32 %48)
  %50 = add nsw i32 %49, 1
  %51 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %52 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  br label %56

54:                                               ; preds = %23
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %54, %38, %36
  br label %291

57:                                               ; preds = %3
  %58 = load %struct.priv*, %struct.priv** %7, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load i32*, i32** %6, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.priv*, %struct.priv** %7, align 8
  %68 = getelementptr inbounds %struct.priv, %struct.priv* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %74 = call i32 @flow_upper(i32 %72, %struct.ng_mesg* %73)
  store i32 %74, i32* %10, align 4
  br label %86

75:                                               ; preds = %65
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.priv*, %struct.priv** %7, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %84 = call i32 @flow_lower(i32 %82, %struct.ng_mesg* %83)
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %75
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %62, %57
  br label %291

88:                                               ; preds = %3
  %89 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %90 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %286 [
    i32 132, label %93
    i32 129, label %112
    i32 134, label %161
    i32 135, label %184
    i32 133, label %206
    i32 130, label %232
    i32 131, label %251
  ]

93:                                               ; preds = %88
  %94 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %95 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %96 = load i32, i32* @M_NOWAIT, align 4
  %97 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %94, %struct.ng_mesg* %95, i32 4, i32 %96)
  %98 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %99 = icmp eq %struct.ng_mesg* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOMEM, align 4
  store i32 %101, i32* %10, align 4
  br label %288

102:                                              ; preds = %93
  %103 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %104 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.sscop_param*
  store %struct.sscop_param* %106, %struct.sscop_param** %11, align 8
  %107 = load %struct.priv*, %struct.priv** %7, align 8
  %108 = getelementptr inbounds %struct.priv, %struct.priv* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sscop_param*, %struct.sscop_param** %11, align 8
  %111 = call i32 @sscop_getparam(i32 %109, %struct.sscop_param* %110)
  br label %288

112:                                              ; preds = %88
  %113 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %114 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %117, 8
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %10, align 4
  br label %288

121:                                              ; preds = %112
  %122 = load %struct.priv*, %struct.priv** %7, align 8
  %123 = getelementptr inbounds %struct.priv, %struct.priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @EISCONN, align 4
  store i32 %127, i32* %10, align 4
  br label %288

128:                                              ; preds = %121
  %129 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %130 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.ng_sscop_setparam*
  store %struct.ng_sscop_setparam* %132, %struct.ng_sscop_setparam** %12, align 8
  %133 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %134 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %135 = load i32, i32* @M_NOWAIT, align 4
  %136 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %133, %struct.ng_mesg* %134, i32 8, i32 %135)
  %137 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %138 = icmp eq %struct.ng_mesg* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %128
  %140 = load i32, i32* @ENOMEM, align 4
  store i32 %140, i32* %10, align 4
  br label %288

141:                                              ; preds = %128
  %142 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %143 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to %struct.ng_sscop_setparam_resp*
  store %struct.ng_sscop_setparam_resp* %145, %struct.ng_sscop_setparam_resp** %13, align 8
  %146 = load %struct.ng_sscop_setparam*, %struct.ng_sscop_setparam** %12, align 8
  %147 = getelementptr inbounds %struct.ng_sscop_setparam, %struct.ng_sscop_setparam* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ng_sscop_setparam_resp*, %struct.ng_sscop_setparam_resp** %13, align 8
  %150 = getelementptr inbounds %struct.ng_sscop_setparam_resp, %struct.ng_sscop_setparam_resp* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.priv*, %struct.priv** %7, align 8
  %152 = getelementptr inbounds %struct.priv, %struct.priv* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ng_sscop_setparam*, %struct.ng_sscop_setparam** %12, align 8
  %155 = getelementptr inbounds %struct.ng_sscop_setparam, %struct.ng_sscop_setparam* %154, i32 0, i32 0
  %156 = load %struct.ng_sscop_setparam_resp*, %struct.ng_sscop_setparam_resp** %13, align 8
  %157 = getelementptr inbounds %struct.ng_sscop_setparam_resp, %struct.ng_sscop_setparam_resp* %156, i32 0, i32 0
  %158 = call i32 @sscop_setparam(i32 %153, i32* %155, i32* %157)
  %159 = load %struct.ng_sscop_setparam_resp*, %struct.ng_sscop_setparam_resp** %13, align 8
  %160 = getelementptr inbounds %struct.ng_sscop_setparam_resp, %struct.ng_sscop_setparam_resp* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %288

161:                                              ; preds = %88
  %162 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %163 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @EINVAL, align 4
  store i32 %168, i32* %10, align 4
  br label %288

169:                                              ; preds = %161
  %170 = load %struct.priv*, %struct.priv** %7, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* @EBUSY, align 4
  store i32 %175, i32* %10, align 4
  br label %288

176:                                              ; preds = %169
  %177 = load %struct.priv*, %struct.priv** %7, align 8
  %178 = getelementptr inbounds %struct.priv, %struct.priv* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load %struct.priv*, %struct.priv** %7, align 8
  %180 = getelementptr inbounds %struct.priv, %struct.priv* %179, i32 0, i32 1
  store i32 1, i32* %180, align 4
  %181 = load %struct.priv*, %struct.priv** %7, align 8
  %182 = getelementptr inbounds %struct.priv, %struct.priv* %181, i32 0, i32 3
  %183 = call i32 @memset(i32* %182, i32 0, i32 4)
  br label %288

184:                                              ; preds = %88
  %185 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %186 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @EINVAL, align 4
  store i32 %191, i32* %10, align 4
  br label %288

192:                                              ; preds = %184
  %193 = load %struct.priv*, %struct.priv** %7, align 8
  %194 = getelementptr inbounds %struct.priv, %struct.priv* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* @ENOTCONN, align 4
  store i32 %198, i32* %10, align 4
  br label %288

199:                                              ; preds = %192
  %200 = load %struct.priv*, %struct.priv** %7, align 8
  %201 = getelementptr inbounds %struct.priv, %struct.priv* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load %struct.priv*, %struct.priv** %7, align 8
  %203 = getelementptr inbounds %struct.priv, %struct.priv* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @sscop_reset(i32 %204)
  br label %288

206:                                              ; preds = %88
  %207 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %208 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* @EINVAL, align 4
  store i32 %213, i32* %10, align 4
  br label %288

214:                                              ; preds = %206
  %215 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %216 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %217 = load i32, i32* @M_NOWAIT, align 4
  %218 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %215, %struct.ng_mesg* %216, i32 4, i32 %217)
  %219 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %220 = icmp eq %struct.ng_mesg* %219, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = load i32, i32* @ENOMEM, align 4
  store i32 %222, i32* %10, align 4
  br label %288

223:                                              ; preds = %214
  %224 = load %struct.priv*, %struct.priv** %7, align 8
  %225 = getelementptr inbounds %struct.priv, %struct.priv* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @sscop_getdebug(i32 %226)
  %228 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %229 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = inttoptr i64 %230 to i32*
  store i32 %227, i32* %231, align 4
  br label %288

232:                                              ; preds = %88
  %233 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %234 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = icmp ne i64 %237, 4
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load i32, i32* @EINVAL, align 4
  store i32 %240, i32* %10, align 4
  br label %288

241:                                              ; preds = %232
  %242 = load %struct.priv*, %struct.priv** %7, align 8
  %243 = getelementptr inbounds %struct.priv, %struct.priv* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %246 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = inttoptr i64 %247 to i32*
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @sscop_setdebug(i32 %244, i32 %249)
  br label %288

251:                                              ; preds = %88
  %252 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %253 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = load i32, i32* @EINVAL, align 4
  store i32 %258, i32* %10, align 4
  br label %288

259:                                              ; preds = %251
  %260 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %261 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %262 = load i32, i32* @M_NOWAIT, align 4
  %263 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %260, %struct.ng_mesg* %261, i32 4, i32 %262)
  %264 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %265 = icmp eq %struct.ng_mesg* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %259
  %267 = load i32, i32* @ENOMEM, align 4
  store i32 %267, i32* %10, align 4
  br label %288

268:                                              ; preds = %259
  %269 = load %struct.priv*, %struct.priv** %7, align 8
  %270 = getelementptr inbounds %struct.priv, %struct.priv* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %268
  %274 = load %struct.priv*, %struct.priv** %7, align 8
  %275 = getelementptr inbounds %struct.priv, %struct.priv* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @sscop_getstate(i32 %276)
  %278 = add nsw i32 %277, 1
  br label %280

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279, %273
  %281 = phi i32 [ %278, %273 ], [ 0, %279 ]
  %282 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %283 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to i32*
  store i32 %281, i32* %285, align 4
  br label %288

286:                                              ; preds = %88
  %287 = load i32, i32* @EINVAL, align 4
  store i32 %287, i32* %10, align 4
  br label %288

288:                                              ; preds = %286, %280, %266, %257, %241, %239, %223, %221, %212, %199, %197, %190, %176, %174, %167, %141, %139, %126, %119, %102, %100
  br label %291

289:                                              ; preds = %3
  %290 = load i32, i32* @EINVAL, align 4
  store i32 %290, i32* %10, align 4
  br label %291

291:                                              ; preds = %289, %288, %87, %56
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* %4, align 4
  %294 = load i32, i32* %5, align 4
  %295 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %296 = call i32 @NG_RESPOND_MSG(i32 %292, i32 %293, i32 %294, %struct.ng_mesg* %295)
  %297 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %298 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %297)
  %299 = load i32, i32* %10, align 4
  ret i32 %299
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @text_status(i32, %struct.priv*, i8*, i32) #1

declare dso_local i32 @flow_upper(i32, %struct.ng_mesg*) #1

declare dso_local i32 @flow_lower(i32, %struct.ng_mesg*) #1

declare dso_local i32 @sscop_getparam(i32, %struct.sscop_param*) #1

declare dso_local i32 @sscop_setparam(i32, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sscop_reset(i32) #1

declare dso_local i32 @sscop_getdebug(i32) #1

declare dso_local i32 @sscop_setdebug(i32, i32) #1

declare dso_local i32 @sscop_getstate(i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
