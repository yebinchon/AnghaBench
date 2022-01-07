; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_lmi.c_nglmi_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_lmi.c_nglmi_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32*, i32, i32, i32 }
%struct.ng_mesg = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.nglmistat = type { i32, i32, i32*, i32*, i32, i32 }

@NG_TEXTRESPONSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"protocol %s \00", align 1
@SCF_FIXED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"fixed\0A\00", align 1
@SCF_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"auto-detecting\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"auto on dlci %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"keepalive period: %d seconds\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"unacknowledged keepalives: %ld\0A\00", align 1
@MAXDLCI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"dlci %d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @nglmi_rcvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nglmi_rcvmsg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.ng_mesg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ng_mesg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nglmistat*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %20 = call i32 @NGI_GET_MSG(i32 %18, %struct.ng_mesg* %19)
  %21 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %22 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %270 [
    i32 131, label %25
    i32 130, label %169
  ]

25:                                               ; preds = %3
  %26 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %27 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %166 [
    i32 128, label %30
  ]

30:                                               ; preds = %25
  %31 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %32 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %33 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %31, %struct.ng_mesg* %32, i32 %33, i32 %34)
  %36 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %37 = icmp eq %struct.ng_mesg* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %9, align 4
  br label %168

40:                                               ; preds = %30
  %41 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %42 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SCF_FIXED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %40
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %96

63:                                               ; preds = %40
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SCF_AUTO, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %95

78:                                               ; preds = %63
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 0, i32 1023
  %92 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %78, %70
  br label %96

96:                                               ; preds = %95, %55
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %157, %96
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @MAXDLCI, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @NG_TEXTRESPONSE, align 4
  %124 = sub nsw i32 %123, 20
  %125 = icmp slt i32 %122, %124
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi i1 [ false, %117 ], [ %125, %121 ]
  br i1 %127, label %128, label %160

128:                                              ; preds = %126
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %128
  %138 = load i8*, i8** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 132
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %142, i8* %152)
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %137, %128
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %117

160:                                              ; preds = %126
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  %163 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %164 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  br label %168

166:                                              ; preds = %25
  %167 = load i32, i32* @EINVAL, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %160, %38
  br label %272

169:                                              ; preds = %3
  %170 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %171 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  switch i32 %173, label %267 [
    i32 129, label %174
  ]

174:                                              ; preds = %169
  %175 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %176 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %177 = load i32, i32* @M_NOWAIT, align 4
  %178 = call i32 @NG_MKRESPONSE(%struct.ng_mesg* %175, %struct.ng_mesg* %176, i32 32, i32 %177)
  %179 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %180 = icmp ne %struct.ng_mesg* %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %174
  %182 = load i32, i32* @ENOMEM, align 4
  store i32 %182, i32* %9, align 4
  br label %269

183:                                              ; preds = %174
  %184 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %185 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = bitcast i8* %186 to %struct.nglmistat*
  store %struct.nglmistat* %187, %struct.nglmistat** %14, align 8
  %188 = load %struct.nglmistat*, %struct.nglmistat** %14, align 8
  %189 = getelementptr inbounds %struct.nglmistat, %struct.nglmistat* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @strncpy(i32 %190, i8* %193, i32 3)
  %195 = load %struct.nglmistat*, %struct.nglmistat** %14, align 8
  %196 = getelementptr inbounds %struct.nglmistat, %struct.nglmistat* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @strncpy(i32 %197, i8* %200, i32 3)
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @SCF_AUTO, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  %211 = load %struct.nglmistat*, %struct.nglmistat** %14, align 8
  %212 = getelementptr inbounds %struct.nglmistat, %struct.nglmistat* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @SCF_FIXED, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = load %struct.nglmistat*, %struct.nglmistat** %14, align 8
  %223 = getelementptr inbounds %struct.nglmistat, %struct.nglmistat* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  store i32 0, i32* %15, align 4
  br label %224

224:                                              ; preds = %263, %183
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* @MAXDLCI, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %266

228:                                              ; preds = %224
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  switch i32 %235, label %262 [
    i32 132, label %236
    i32 133, label %249
  ]

236:                                              ; preds = %228
  %237 = load i32, i32* %15, align 4
  %238 = srem i32 %237, 8
  %239 = shl i32 1, %238
  %240 = load %struct.nglmistat*, %struct.nglmistat** %14, align 8
  %241 = getelementptr inbounds %struct.nglmistat, %struct.nglmistat* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sdiv i32 %243, 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %239
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %228, %236
  %250 = load i32, i32* %15, align 4
  %251 = srem i32 %250, 8
  %252 = shl i32 1, %251
  %253 = load %struct.nglmistat*, %struct.nglmistat** %14, align 8
  %254 = getelementptr inbounds %struct.nglmistat, %struct.nglmistat* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sdiv i32 %256, 8
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %252
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %228, %249
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %15, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %15, align 4
  br label %224

266:                                              ; preds = %224
  br label %269

267:                                              ; preds = %169
  %268 = load i32, i32* @EINVAL, align 4
  store i32 %268, i32* %9, align 4
  br label %269

269:                                              ; preds = %267, %266, %181
  br label %272

270:                                              ; preds = %3
  %271 = load i32, i32* @EINVAL, align 4
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %270, %269, %168
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %4, align 4
  %275 = load i32, i32* %5, align 4
  %276 = load %struct.ng_mesg*, %struct.ng_mesg** %8, align 8
  %277 = call i32 @NG_RESPOND_MSG(i32 %273, i32 %274, i32 %275, %struct.ng_mesg* %276)
  %278 = load %struct.ng_mesg*, %struct.ng_mesg** %10, align 8
  %279 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %278)
  %280 = load i32, i32* %9, align 4
  ret i32 %280
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NGI_GET_MSG(i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_MKRESPONSE(%struct.ng_mesg*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @NG_RESPOND_MSG(i32, i32, i32, %struct.ng_mesg*) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
