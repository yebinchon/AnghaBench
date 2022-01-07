; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_ng_bt3c_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/drivers/bt3c/extr_ng_bt3c_pccard.c_ng_bt3c_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.ng_mesg = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@EHOSTDOWN = common dso_local global i32 0, align 4
@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Hook: %s\0AFlags: %#x\0ADebug: %d\0AState: %d\0AIncmQ: [len:%d,max:%d]\0AOutgQ: [len:%d,max:%d]\0A\00", align 1
@NG_BT3C_HOOK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ng_bt3c_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bt3c_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.ng_mesg*, align 8
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @NG_NODE_PRIVATE(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %9, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @NG_FREE_ITEM(i32 %19)
  %21 = load i32, i32* @EHOSTDOWN, align 4
  store i32 %21, i32* %4, align 4
  br label %302

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %25 = call i32 @NGI_GET_MSG(i32 %23, %struct.ng_mesg* %24)
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %291 [
    i32 129, label %30
    i32 140, label %87
  ]

30:                                               ; preds = %22
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %32 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %84 [
    i32 128, label %35
  ]

35:                                               ; preds = %30
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %37 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %38 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %39 = load i32, i32* @M_NOWAIT, align 4
  %40 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %36, %struct.ng_mesg* %37, i32 %38, i32 %39)
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %42 = icmp eq %struct.ng_mesg* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %11, align 4
  br label %83

45:                                               ; preds = %35
  %46 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %47 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i8*, i8** @NG_BT3C_HOOK, align 8
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %56 ]
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = call i32 @_IF_QLEN(%struct.TYPE_9__* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  %77 = call i32 @_IF_QLEN(%struct.TYPE_9__* %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @snprintf(i64 %48, i32 %49, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %74, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %57, %43
  br label %86

84:                                               ; preds = %30
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %84, %83
  br label %293

87:                                               ; preds = %22
  %88 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %89 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %288 [
    i32 135, label %92
    i32 131, label %110
    i32 138, label %128
    i32 137, label %146
    i32 130, label %197
    i32 136, label %246
    i32 132, label %263
    i32 139, label %268
  ]

92:                                               ; preds = %87
  %93 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %94 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %95 = load i32, i32* @M_NOWAIT, align 4
  %96 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %93, %struct.ng_mesg* %94, i32 4, i32 %95)
  %97 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %98 = icmp eq %struct.ng_mesg* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @ENOMEM, align 4
  store i32 %100, i32* %11, align 4
  br label %109

101:                                              ; preds = %92
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %106 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i32*
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %99
  br label %290

110:                                              ; preds = %87
  %111 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %112 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp ne i64 %115, 4
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @EMSGSIZE, align 4
  store i32 %118, i32* %11, align 4
  br label %127

119:                                              ; preds = %110
  %120 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %121 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %119, %117
  br label %290

128:                                              ; preds = %87
  %129 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %130 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %131 = load i32, i32* @M_NOWAIT, align 4
  %132 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %129, %struct.ng_mesg* %130, i32 4, i32 %131)
  %133 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %134 = icmp eq %struct.ng_mesg* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @ENOMEM, align 4
  store i32 %136, i32* %11, align 4
  br label %145

137:                                              ; preds = %128
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %142 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %137, %135
  br label %290

146:                                              ; preds = %87
  %147 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %148 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %149 = load i32, i32* @M_NOWAIT, align 4
  %150 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %147, %struct.ng_mesg* %148, i32 8, i32 %149)
  %151 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %152 = icmp eq %struct.ng_mesg* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = load i32, i32* @ENOMEM, align 4
  store i32 %154, i32* %11, align 4
  br label %290

155:                                              ; preds = %146
  %156 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %157 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to %struct.TYPE_7__*
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  switch i32 %161, label %192 [
    i32 134, label %162
    i32 133, label %177
  ]

162:                                              ; preds = %155
  %163 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %164 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.TYPE_7__*
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 134, i32* %167, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %173 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.TYPE_7__*
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store i32 %171, i32* %176, align 4
  br label %196

177:                                              ; preds = %155
  %178 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %179 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to %struct.TYPE_7__*
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  store i32 133, i32* %182, align 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %188 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to %struct.TYPE_7__*
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  store i32 %186, i32* %191, align 4
  br label %196

192:                                              ; preds = %155
  %193 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %194 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %193)
  %195 = load i32, i32* @EINVAL, align 4
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %192, %177, %162
  br label %290

197:                                              ; preds = %87
  %198 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %199 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = icmp ne i64 %202, 8
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @EMSGSIZE, align 4
  store i32 %205, i32* %11, align 4
  br label %290

206:                                              ; preds = %197
  %207 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %208 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.TYPE_7__*
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp sle i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %206
  %215 = load i32, i32* @EINVAL, align 4
  store i32 %215, i32* %11, align 4
  br label %290

216:                                              ; preds = %206
  %217 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %218 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to %struct.TYPE_7__*
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  switch i32 %222, label %243 [
    i32 134, label %223
    i32 133, label %233
  ]

223:                                              ; preds = %216
  %224 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %225 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to %struct.TYPE_7__*
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  store i32 %229, i32* %232, align 4
  br label %245

233:                                              ; preds = %216
  %234 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %235 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to %struct.TYPE_7__*
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  store i32 %239, i32* %242, align 8
  br label %245

243:                                              ; preds = %216
  %244 = load i32, i32* @EINVAL, align 4
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %243, %233, %223
  br label %290

246:                                              ; preds = %87
  %247 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %248 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %249 = load i32, i32* @M_NOWAIT, align 4
  %250 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %247, %struct.ng_mesg* %248, i32 4, i32 %249)
  %251 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %252 = icmp eq %struct.ng_mesg* %251, null
  br i1 %252, label %253, label %255

253:                                              ; preds = %246
  %254 = load i32, i32* @ENOMEM, align 4
  store i32 %254, i32* %11, align 4
  br label %262

255:                                              ; preds = %246
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 3
  %258 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %259 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @bcopy(i32* %257, i64 %260, i32 4)
  br label %262

262:                                              ; preds = %255, %253
  br label %290

263:                                              ; preds = %87
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @NG_BT3C_STAT_RESET(i32 %266)
  br label %290

268:                                              ; preds = %87
  %269 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %270 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = icmp ult i64 %273, 4
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = load i32, i32* @EMSGSIZE, align 4
  store i32 %276, i32* %11, align 4
  br label %287

277:                                              ; preds = %268
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %279 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %280 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %283 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @bt3c_download_firmware(%struct.TYPE_8__* %278, i64 %281, i32 %285)
  br label %287

287:                                              ; preds = %277, %275
  br label %290

288:                                              ; preds = %87
  %289 = load i32, i32* @EINVAL, align 4
  store i32 %289, i32* %11, align 4
  br label %290

290:                                              ; preds = %288, %287, %263, %262, %245, %214, %204, %196, %153, %145, %127, %109
  br label %293

291:                                              ; preds = %22
  %292 = load i32, i32* @EINVAL, align 4
  store i32 %292, i32* %11, align 4
  br label %293

293:                                              ; preds = %291, %290, %86
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* %6, align 4
  %297 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %298 = call i32 @NG_RESPOND_MSG(i32 %294, i32 %295, i32 %296, %struct.ng_mesg* %297)
  %299 = load %struct.ng_mesg*, %struct.ng_mesg** %9, align 8
  %300 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %299)
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %293, %18
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_ITEM(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @snprintf(i64, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_IF_QLEN(%struct.TYPE_9__*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

declare dso_local i32 @bcopy(i32*, i64, i32) #1

declare dso_local i32 @NG_BT3C_STAT_RESET(i32) #1

declare dso_local i32 @bt3c_download_firmware(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
