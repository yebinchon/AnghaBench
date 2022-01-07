; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_send_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp_library.c_isp_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_46__ = type { i32*, %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_45__ = type { i32*, %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_42__ = type { i64, i64, i32* }
%struct.TYPE_41__ = type { i64, i64, i64, i32* }
%struct.TYPE_40__ = type { i64, i64, i64, i32* }
%struct.TYPE_57__ = type { i64, i64, i64, i32 }
%struct.TYPE_44__ = type { i64 }

@QENTRY_LEN = common dso_local global i32 0, align 4
@CMD_EAGAIN = common dso_local global i32 0, align 4
@ISP_NOXFR = common dso_local global i64 0, align 8
@CT2_NO_DATA = common dso_local global i64 0, align 8
@ISP_TO_DEVICE = common dso_local global i64 0, align 8
@REQFLAG_DATA_OUT = common dso_local global i64 0, align 8
@REQFLAG_DATA_IN = common dso_local global i64 0, align 8
@ISP_RQDSEG = common dso_local global i64 0, align 8
@ISP_RQDSEG_T2 = common dso_local global i64 0, align 8
@ISP_RQDSEG_T3 = common dso_local global i64 0, align 8
@FCP_CMND_DATA_WRITE = common dso_local global i64 0, align 8
@FCP_CMND_DATA_READ = common dso_local global i64 0, align 8
@CMD_COMPLETE = common dso_local global i32 0, align 4
@ISP_CDSEG64 = common dso_local global i64 0, align 8
@RQSTYPE_A64_CONT = common dso_local global i32 0, align 4
@ISP_CDSEG = common dso_local global i64 0, align 8
@RQSTYPE_DATASEG = common dso_local global i32 0, align 4
@ISP_LOGDEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"additional queue entry\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"first queue entry\00", align 1
@CMD_QUEUED = common dso_local global i32 0, align 4
@CT2_FLAG_MODE2 = common dso_local global i32 0, align 4
@CT7_FLAG_MODE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isp_send_cmd(%struct.TYPE_56__* %0, i8* %1, i8* %2, i64 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_56__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_46__*, align 8
  %32 = alloca %struct.TYPE_45__*, align 8
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %33 = load i32, i32* @QENTRY_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %16, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %17, align 8
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  %37 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %38 = call i8* @isp_getrqentry(%struct.TYPE_56__* %37)
  store i8* %38, i8** %28, align 8
  %39 = load i8*, i8** %28, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %7
  %42 = load i32, i32* @CMD_EAGAIN, align 4
  store i32 %42, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %499

43:                                               ; preds = %7
  %44 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %48 = call i32 @RQUEST_QUEUE_LEN(%struct.TYPE_56__* %47)
  %49 = call i64 @ISP_NXT_QENTRY(i64 %46, i32 %48)
  store i64 %49, i64* %23, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_43__*
  %52 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @ISP_NOXFR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %43
  %58 = load i32, i32* %18, align 4
  %59 = icmp eq i32 %58, 130
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %18, align 4
  %62 = icmp eq i32 %61, 129
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %57
  %64 = load i64, i64* @CT2_NO_DATA, align 8
  store i64 %64, i64* %25, align 8
  br label %66

65:                                               ; preds = %60
  store i64 0, i64* %25, align 8
  br label %66

66:                                               ; preds = %65, %63
  br label %361

67:                                               ; preds = %43
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i64, i64* %21, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i8*, i8** %11, align 8
  %74 = load i64, i64* %21, align 8
  %75 = call i32 @XS_NEED_DMA64_SEG(i8* %73, i64 %74)
  %76 = load i32, i32* %20, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %20, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %21, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %21, align 8
  br label %68

81:                                               ; preds = %68
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %81
  %85 = load i32, i32* %18, align 4
  %86 = icmp eq i32 %85, 130
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  store i32 129, i32* %18, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = bitcast i8* %88 to %struct.TYPE_43__*
  %90 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %89, i32 0, i32 0
  store i32 129, i32* %90, align 4
  br label %107

91:                                               ; preds = %84
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %92, 131
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  store i32 136, i32* %18, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to %struct.TYPE_43__*
  %97 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %96, i32 0, i32 0
  store i32 136, i32* %97, align 4
  br label %106

98:                                               ; preds = %91
  %99 = load i32, i32* %18, align 4
  %100 = icmp eq i32 %99, 134
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  store i32 133, i32* %18, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = bitcast i8* %102 to %struct.TYPE_43__*
  %104 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %103, i32 0, i32 0
  store i32 133, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %98
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i32, i32* %18, align 4
  switch i32 %109, label %193 [
    i32 131, label %110
    i32 135, label %125
    i32 130, label %135
    i32 136, label %150
    i32 129, label %165
    i32 128, label %180
  ]

110:                                              ; preds = %108
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* @ISP_TO_DEVICE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i64, i64* @REQFLAG_DATA_OUT, align 8
  br label %118

116:                                              ; preds = %110
  %117 = load i64, i64* @REQFLAG_DATA_IN, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  store i64 %119, i64* %25, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = bitcast i8* %120 to %struct.TYPE_42__*
  %122 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %26, align 8
  %124 = load i64, i64* @ISP_RQDSEG, align 8
  store i64 %124, i64* %22, align 8
  br label %195

125:                                              ; preds = %108
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* @ISP_TO_DEVICE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i64, i64* @REQFLAG_DATA_OUT, align 8
  br label %133

131:                                              ; preds = %125
  %132 = load i64, i64* @REQFLAG_DATA_IN, align 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i64 [ %130, %129 ], [ %132, %131 ]
  store i64 %134, i64* %25, align 8
  store i64 0, i64* %22, align 8
  br label %195

135:                                              ; preds = %108
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* @ISP_TO_DEVICE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i64, i64* @REQFLAG_DATA_OUT, align 8
  br label %143

141:                                              ; preds = %135
  %142 = load i64, i64* @REQFLAG_DATA_IN, align 8
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i64 [ %140, %139 ], [ %142, %141 ]
  store i64 %144, i64* %25, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = bitcast i8* %145 to %struct.TYPE_41__*
  %147 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %26, align 8
  %149 = load i64, i64* @ISP_RQDSEG_T2, align 8
  store i64 %149, i64* %22, align 8
  br label %195

150:                                              ; preds = %108
  %151 = load i64, i64* %14, align 8
  %152 = load i64, i64* @ISP_TO_DEVICE, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i64, i64* @REQFLAG_DATA_OUT, align 8
  br label %158

156:                                              ; preds = %150
  %157 = load i64, i64* @REQFLAG_DATA_IN, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i64 [ %155, %154 ], [ %157, %156 ]
  store i64 %159, i64* %25, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = bitcast i8* %160 to %struct.TYPE_40__*
  %162 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %27, align 8
  %164 = load i64, i64* @ISP_RQDSEG_T3, align 8
  store i64 %164, i64* %22, align 8
  br label %195

165:                                              ; preds = %108
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* @ISP_TO_DEVICE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i64, i64* @REQFLAG_DATA_OUT, align 8
  br label %173

171:                                              ; preds = %165
  %172 = load i64, i64* @REQFLAG_DATA_IN, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i64 [ %170, %169 ], [ %172, %171 ]
  store i64 %174, i64* %25, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = bitcast i8* %175 to %struct.TYPE_40__*
  %177 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %176, i32 0, i32 3
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %27, align 8
  %179 = load i64, i64* @ISP_RQDSEG_T3, align 8
  store i64 %179, i64* %22, align 8
  br label %195

180:                                              ; preds = %108
  %181 = load i64, i64* %14, align 8
  %182 = load i64, i64* @ISP_TO_DEVICE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i64, i64* @FCP_CMND_DATA_WRITE, align 8
  br label %188

186:                                              ; preds = %180
  %187 = load i64, i64* @FCP_CMND_DATA_READ, align 8
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i64 [ %185, %184 ], [ %187, %186 ]
  store i64 %189, i64* %25, align 8
  %190 = load i8*, i8** %10, align 8
  %191 = bitcast i8* %190 to %struct.TYPE_57__*
  %192 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %191, i32 0, i32 3
  store i32* %192, i32** %27, align 8
  store i64 1, i64* %22, align 8
  br label %195

193:                                              ; preds = %108
  %194 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %194, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %499

195:                                              ; preds = %188, %173, %158, %143, %133, %118
  %196 = load i64, i64* %22, align 8
  %197 = load i64, i64* %12, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %195
  %200 = load i64, i64* %12, align 8
  store i64 %200, i64* %22, align 8
  br label %201

201:                                              ; preds = %199, %195
  store i64 0, i64* %21, align 8
  br label %202

202:                                              ; preds = %227, %201
  %203 = load i64, i64* %21, align 8
  %204 = load i64, i64* %22, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %202
  %207 = load i32*, i32** %27, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load i32*, i32** %27, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %27, align 8
  %212 = ptrtoint i32* %210 to i32
  %213 = load i8*, i8** %11, align 8
  %214 = load i64, i64* %21, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %21, align 8
  %216 = trunc i64 %214 to i32
  %217 = call i32 @XS_GET_DMA64_SEG(i32 %212, i8* %213, i32 %216)
  br label %227

218:                                              ; preds = %206
  %219 = load i32*, i32** %26, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %26, align 8
  %221 = ptrtoint i32* %219 to i32
  %222 = load i8*, i8** %11, align 8
  %223 = load i64, i64* %21, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %21, align 8
  %225 = trunc i64 %223 to i32
  %226 = call i32 @XS_GET_DMA_SEG(i32 %221, i8* %222, i32 %225)
  br label %227

227:                                              ; preds = %218, %209
  br label %202

228:                                              ; preds = %202
  br label %229

229:                                              ; preds = %357, %228
  %230 = load i64, i64* %21, align 8
  %231 = load i64, i64* %12, align 8
  %232 = icmp slt i64 %230, %231
  br i1 %232, label %233, label %360

233:                                              ; preds = %229
  %234 = load i64, i64* %23, align 8
  %235 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %236 = call i32 @RQUEST_QUEUE_LEN(%struct.TYPE_56__* %235)
  %237 = call i64 @ISP_NXT_QENTRY(i64 %234, i32 %236)
  store i64 %237, i64* %24, align 8
  %238 = load i64, i64* %24, align 8
  %239 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %238, %241
  br i1 %242, label %243, label %259

243:                                              ; preds = %233
  %244 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %245 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i64 @ISP_READ(%struct.TYPE_56__* %244, i32 %247)
  %249 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  %251 = load i64, i64* %24, align 8
  %252 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %251, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %243
  %257 = load i32, i32* @CMD_EAGAIN, align 4
  store i32 %257, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %499

258:                                              ; preds = %243
  br label %259

259:                                              ; preds = %258, %233
  %260 = load i32, i32* @QENTRY_LEN, align 4
  %261 = call i32 @ISP_MEMZERO(i32* %36, i32 %260)
  %262 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load i64, i64* %23, align 8
  %266 = call i8* @ISP_QUEUE_ENTRY(i32 %264, i64 %265)
  store i8* %266, i8** %29, align 8
  %267 = load i64, i64* %24, align 8
  store i64 %267, i64* %23, align 8
  %268 = load i32*, i32** %27, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %283

270:                                              ; preds = %259
  %271 = bitcast i32* %36 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %271, %struct.TYPE_46__** %31, align 8
  %272 = load i64, i64* @ISP_CDSEG64, align 8
  store i64 %272, i64* %22, align 8
  %273 = load i32, i32* @RQSTYPE_A64_CONT, align 4
  %274 = load %struct.TYPE_46__*, %struct.TYPE_46__** %31, align 8
  %275 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %275, i32 0, i32 1
  store i32 %273, i32* %276, align 4
  %277 = load %struct.TYPE_46__*, %struct.TYPE_46__** %31, align 8
  %278 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %278, i32 0, i32 0
  store i32 1, i32* %279, align 8
  %280 = load %struct.TYPE_46__*, %struct.TYPE_46__** %31, align 8
  %281 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  store i32* %282, i32** %27, align 8
  br label %296

283:                                              ; preds = %259
  %284 = bitcast i32* %36 to %struct.TYPE_45__*
  store %struct.TYPE_45__* %284, %struct.TYPE_45__** %32, align 8
  %285 = load i64, i64* @ISP_CDSEG, align 8
  store i64 %285, i64* %22, align 8
  %286 = load i32, i32* @RQSTYPE_DATASEG, align 4
  %287 = load %struct.TYPE_45__*, %struct.TYPE_45__** %32, align 8
  %288 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %288, i32 0, i32 1
  store i32 %286, i32* %289, align 4
  %290 = load %struct.TYPE_45__*, %struct.TYPE_45__** %32, align 8
  %291 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %291, i32 0, i32 0
  store i32 1, i32* %292, align 8
  %293 = load %struct.TYPE_45__*, %struct.TYPE_45__** %32, align 8
  %294 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  store i32* %295, i32** %26, align 8
  br label %296

296:                                              ; preds = %283, %270
  %297 = load i64, i64* %21, align 8
  %298 = load i64, i64* %22, align 8
  %299 = add nsw i64 %298, %297
  store i64 %299, i64* %22, align 8
  %300 = load i64, i64* %22, align 8
  %301 = load i64, i64* %12, align 8
  %302 = icmp sgt i64 %300, %301
  br i1 %302, label %303, label %305

303:                                              ; preds = %296
  %304 = load i64, i64* %12, align 8
  store i64 %304, i64* %22, align 8
  br label %305

305:                                              ; preds = %303, %296
  br label %306

306:                                              ; preds = %331, %305
  %307 = load i64, i64* %21, align 8
  %308 = load i64, i64* %22, align 8
  %309 = icmp slt i64 %307, %308
  br i1 %309, label %310, label %332

310:                                              ; preds = %306
  %311 = load i32*, i32** %27, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %322

313:                                              ; preds = %310
  %314 = load i32*, i32** %27, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %27, align 8
  %316 = ptrtoint i32* %314 to i32
  %317 = load i8*, i8** %11, align 8
  %318 = load i64, i64* %21, align 8
  %319 = add nsw i64 %318, 1
  store i64 %319, i64* %21, align 8
  %320 = trunc i64 %318 to i32
  %321 = call i32 @XS_GET_DMA64_SEG(i32 %316, i8* %317, i32 %320)
  br label %331

322:                                              ; preds = %310
  %323 = load i32*, i32** %26, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %26, align 8
  %325 = ptrtoint i32* %323 to i32
  %326 = load i8*, i8** %11, align 8
  %327 = load i64, i64* %21, align 8
  %328 = add nsw i64 %327, 1
  store i64 %328, i64* %21, align 8
  %329 = trunc i64 %327 to i32
  %330 = call i32 @XS_GET_DMA_SEG(i32 %325, i8* %326, i32 %329)
  br label %331

331:                                              ; preds = %322, %313
  br label %306

332:                                              ; preds = %306
  %333 = load i32*, i32** %27, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %340

335:                                              ; preds = %332
  %336 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %337 = bitcast i32* %36 to %struct.TYPE_46__*
  %338 = load i8*, i8** %29, align 8
  %339 = call i32 @isp_put_cont64_req(%struct.TYPE_56__* %336, %struct.TYPE_46__* %337, i8* %338)
  br label %345

340:                                              ; preds = %332
  %341 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %342 = bitcast i32* %36 to %struct.TYPE_45__*
  %343 = load i8*, i8** %29, align 8
  %344 = call i32 @isp_put_cont_req(%struct.TYPE_56__* %341, %struct.TYPE_45__* %342, i8* %343)
  br label %345

345:                                              ; preds = %340, %335
  %346 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %345
  %353 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %354 = load i32, i32* @QENTRY_LEN, align 4
  %355 = load i8*, i8** %29, align 8
  %356 = call i32 @isp_print_bytes(%struct.TYPE_56__* %353, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %354, i8* %355)
  br label %357

357:                                              ; preds = %352, %345
  %358 = load i32, i32* %19, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %19, align 4
  br label %229

360:                                              ; preds = %229
  br label %361

361:                                              ; preds = %360, %66
  %362 = load i32, i32* %19, align 4
  %363 = load i8*, i8** %10, align 8
  %364 = bitcast i8* %363 to %struct.TYPE_43__*
  %365 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %364, i32 0, i32 1
  store i32 %362, i32* %365, align 4
  %366 = load i32, i32* %18, align 4
  switch i32 %366, label %480 [
    i32 131, label %367
    i32 135, label %386
    i32 130, label %405
    i32 136, label %434
    i32 129, label %434
    i32 128, label %463
  ]

367:                                              ; preds = %361
  %368 = load i64, i64* %25, align 8
  %369 = load i8*, i8** %10, align 8
  %370 = bitcast i8* %369 to %struct.TYPE_42__*
  %371 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = or i64 %372, %368
  store i64 %373, i64* %371, align 8
  %374 = load i64, i64* %12, align 8
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %367
  store i64 1, i64* %12, align 8
  br label %377

377:                                              ; preds = %376, %367
  %378 = load i64, i64* %12, align 8
  %379 = load i8*, i8** %10, align 8
  %380 = bitcast i8* %379 to %struct.TYPE_42__*
  %381 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %380, i32 0, i32 1
  store i64 %378, i64* %381, align 8
  %382 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %383 = load i8*, i8** %10, align 8
  %384 = load i8*, i8** %28, align 8
  %385 = call i32 @isp_put_request(%struct.TYPE_56__* %382, i8* %383, i8* %384)
  br label %482

386:                                              ; preds = %361
  %387 = load i64, i64* %25, align 8
  %388 = load i8*, i8** %10, align 8
  %389 = bitcast i8* %388 to %struct.TYPE_42__*
  %390 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = or i64 %391, %387
  store i64 %392, i64* %390, align 8
  %393 = load i64, i64* %12, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %386
  store i64 1, i64* %12, align 8
  br label %396

396:                                              ; preds = %395, %386
  %397 = load i64, i64* %12, align 8
  %398 = load i8*, i8** %10, align 8
  %399 = bitcast i8* %398 to %struct.TYPE_44__*
  %400 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %399, i32 0, i32 0
  store i64 %397, i64* %400, align 8
  %401 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %402 = load i8*, i8** %10, align 8
  %403 = load i8*, i8** %28, align 8
  %404 = call i32 @isp_put_extended_request(%struct.TYPE_56__* %401, i8* %402, i8* %403)
  br label %482

405:                                              ; preds = %361
  %406 = load i64, i64* %25, align 8
  %407 = load i8*, i8** %10, align 8
  %408 = bitcast i8* %407 to %struct.TYPE_41__*
  %409 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = or i64 %410, %406
  store i64 %411, i64* %409, align 8
  %412 = load i64, i64* %12, align 8
  %413 = load i8*, i8** %10, align 8
  %414 = bitcast i8* %413 to %struct.TYPE_41__*
  %415 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %414, i32 0, i32 2
  store i64 %412, i64* %415, align 8
  %416 = load i64, i64* %13, align 8
  %417 = load i8*, i8** %10, align 8
  %418 = bitcast i8* %417 to %struct.TYPE_41__*
  %419 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %418, i32 0, i32 1
  store i64 %416, i64* %419, align 8
  %420 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %421 = call i32 @ISP_CAP_2KLOGIN(%struct.TYPE_56__* %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %428

423:                                              ; preds = %405
  %424 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %425 = load i8*, i8** %10, align 8
  %426 = load i8*, i8** %28, align 8
  %427 = call i32 @isp_put_request_t2e(%struct.TYPE_56__* %424, i8* %425, i8* %426)
  br label %433

428:                                              ; preds = %405
  %429 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %430 = load i8*, i8** %10, align 8
  %431 = load i8*, i8** %28, align 8
  %432 = call i32 @isp_put_request_t2(%struct.TYPE_56__* %429, i8* %430, i8* %431)
  br label %433

433:                                              ; preds = %428, %423
  br label %482

434:                                              ; preds = %361, %361
  %435 = load i64, i64* %25, align 8
  %436 = load i8*, i8** %10, align 8
  %437 = bitcast i8* %436 to %struct.TYPE_40__*
  %438 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %437, i32 0, i32 0
  %439 = load i64, i64* %438, align 8
  %440 = or i64 %439, %435
  store i64 %440, i64* %438, align 8
  %441 = load i64, i64* %12, align 8
  %442 = load i8*, i8** %10, align 8
  %443 = bitcast i8* %442 to %struct.TYPE_40__*
  %444 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %443, i32 0, i32 2
  store i64 %441, i64* %444, align 8
  %445 = load i64, i64* %13, align 8
  %446 = load i8*, i8** %10, align 8
  %447 = bitcast i8* %446 to %struct.TYPE_40__*
  %448 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %447, i32 0, i32 1
  store i64 %445, i64* %448, align 8
  %449 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %450 = call i32 @ISP_CAP_2KLOGIN(%struct.TYPE_56__* %449)
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %434
  %453 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %454 = load i8*, i8** %10, align 8
  %455 = load i8*, i8** %28, align 8
  %456 = call i32 @isp_put_request_t3e(%struct.TYPE_56__* %453, i8* %454, i8* %455)
  br label %462

457:                                              ; preds = %434
  %458 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %459 = load i8*, i8** %10, align 8
  %460 = load i8*, i8** %28, align 8
  %461 = call i32 @isp_put_request_t3(%struct.TYPE_56__* %458, i8* %459, i8* %460)
  br label %462

462:                                              ; preds = %457, %452
  br label %482

463:                                              ; preds = %361
  %464 = load i64, i64* %25, align 8
  %465 = load i8*, i8** %10, align 8
  %466 = bitcast i8* %465 to %struct.TYPE_57__*
  %467 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %466, i32 0, i32 2
  store i64 %464, i64* %467, align 8
  %468 = load i64, i64* %12, align 8
  %469 = load i8*, i8** %10, align 8
  %470 = bitcast i8* %469 to %struct.TYPE_57__*
  %471 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %470, i32 0, i32 1
  store i64 %468, i64* %471, align 8
  %472 = load i64, i64* %13, align 8
  %473 = load i8*, i8** %10, align 8
  %474 = bitcast i8* %473 to %struct.TYPE_57__*
  %475 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %474, i32 0, i32 0
  store i64 %472, i64* %475, align 8
  %476 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %477 = load i8*, i8** %10, align 8
  %478 = load i8*, i8** %28, align 8
  %479 = call i32 @isp_put_request_t7(%struct.TYPE_56__* %476, i8* %477, i8* %478)
  br label %482

480:                                              ; preds = %361
  %481 = load i32, i32* @CMD_COMPLETE, align 4
  store i32 %481, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %499

482:                                              ; preds = %463, %462, %433, %396, %377
  %483 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %484 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %483, i32 0, i32 2
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %494

489:                                              ; preds = %482
  %490 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %491 = load i32, i32* @QENTRY_LEN, align 4
  %492 = load i8*, i8** %28, align 8
  %493 = call i32 @isp_print_bytes(%struct.TYPE_56__* %490, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %491, i8* %492)
  br label %494

494:                                              ; preds = %489, %482
  %495 = load %struct.TYPE_56__*, %struct.TYPE_56__** %9, align 8
  %496 = load i64, i64* %23, align 8
  %497 = call i32 @ISP_ADD_REQUEST(%struct.TYPE_56__* %495, i64 %496)
  %498 = load i32, i32* @CMD_QUEUED, align 4
  store i32 %498, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %499

499:                                              ; preds = %494, %480, %256, %193, %41
  %500 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %500)
  %501 = load i32, i32* %8, align 4
  ret i32 %501
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @isp_getrqentry(%struct.TYPE_56__*) #2

declare dso_local i64 @ISP_NXT_QENTRY(i64, i32) #2

declare dso_local i32 @RQUEST_QUEUE_LEN(%struct.TYPE_56__*) #2

declare dso_local i32 @XS_NEED_DMA64_SEG(i8*, i64) #2

declare dso_local i32 @XS_GET_DMA64_SEG(i32, i8*, i32) #2

declare dso_local i32 @XS_GET_DMA_SEG(i32, i8*, i32) #2

declare dso_local i64 @ISP_READ(%struct.TYPE_56__*, i32) #2

declare dso_local i32 @ISP_MEMZERO(i32*, i32) #2

declare dso_local i8* @ISP_QUEUE_ENTRY(i32, i64) #2

declare dso_local i32 @isp_put_cont64_req(%struct.TYPE_56__*, %struct.TYPE_46__*, i8*) #2

declare dso_local i32 @isp_put_cont_req(%struct.TYPE_56__*, %struct.TYPE_45__*, i8*) #2

declare dso_local i32 @isp_print_bytes(%struct.TYPE_56__*, i8*, i32, i8*) #2

declare dso_local i32 @isp_put_request(%struct.TYPE_56__*, i8*, i8*) #2

declare dso_local i32 @isp_put_extended_request(%struct.TYPE_56__*, i8*, i8*) #2

declare dso_local i32 @ISP_CAP_2KLOGIN(%struct.TYPE_56__*) #2

declare dso_local i32 @isp_put_request_t2e(%struct.TYPE_56__*, i8*, i8*) #2

declare dso_local i32 @isp_put_request_t2(%struct.TYPE_56__*, i8*, i8*) #2

declare dso_local i32 @isp_put_request_t3e(%struct.TYPE_56__*, i8*, i8*) #2

declare dso_local i32 @isp_put_request_t3(%struct.TYPE_56__*, i8*, i8*) #2

declare dso_local i32 @isp_put_request_t7(%struct.TYPE_56__*, i8*, i8*) #2

declare dso_local i32 @ISP_ADD_REQUEST(%struct.TYPE_56__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
