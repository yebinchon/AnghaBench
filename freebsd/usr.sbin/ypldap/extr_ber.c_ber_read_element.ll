; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_read_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_read_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber = type { i32, i32, i32, i64 (%struct.ber_element*)* }
%struct.ber_element = type { i64, i32, i32, i32, i64, i32, %struct.ber_element*, %struct.ber_element*, i32* }

@.str = private unnamed_addr constant [36 x i8] c"ber read got class %d type %lu, %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"constructive\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"primitive\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ber read element size %zd\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@BER_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ber*, %struct.ber_element*)* @ber_read_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ber_read_element(%struct.ber* %0, %struct.ber_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ber*, align 8
  %5 = alloca %struct.ber_element*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ber_element*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ber* %0, %struct.ber** %4, align 8
  store %struct.ber_element* %1, %struct.ber_element** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.ber*, %struct.ber** %4, align 8
  %17 = call i32 @get_id(%struct.ber* %16, i64* %8, i32* %10, i32* %11)
  store i32 %17, i32* %13, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %269

20:                                               ; preds = %2
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %27 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22, i8* %26)
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ber*, %struct.ber** %4, align 8
  %32 = call i32 @get_len(%struct.ber* %31, i32* %12)
  store i32 %32, i32* %13, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %269

35:                                               ; preds = %20
  %36 = load i32, i32* %12, align 4
  %37 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %14, align 4
  %43 = load %struct.ber*, %struct.ber** %4, align 8
  %44 = getelementptr inbounds %struct.ber, %struct.ber* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %59

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.ber*, %struct.ber** %4, align 8
  %50 = getelementptr inbounds %struct.ber, %struct.ber* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ber*, %struct.ber** %4, align 8
  %53 = getelementptr inbounds %struct.ber, %struct.ber* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  %56 = icmp sgt i32 %48, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @ECANCELED, align 4
  store i32 %58, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %269

59:                                               ; preds = %47, %35
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %62 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %65 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %68 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %70 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %59
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %78 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %77, i32 0, i32 3
  store i32 129, i32* %78, align 8
  br label %107

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @BER_CLASS_UNIVERSAL, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i64, i64* %8, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %87 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  br label %106

88:                                               ; preds = %79
  %89 = load %struct.ber*, %struct.ber** %4, align 8
  %90 = getelementptr inbounds %struct.ber, %struct.ber* %89, i32 0, i32 3
  %91 = load i64 (%struct.ber_element*)*, i64 (%struct.ber_element*)** %90, align 8
  %92 = icmp ne i64 (%struct.ber_element*)* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.ber*, %struct.ber** %4, align 8
  %95 = getelementptr inbounds %struct.ber, %struct.ber* %94, i32 0, i32 3
  %96 = load i64 (%struct.ber_element*)*, i64 (%struct.ber_element*)** %95, align 8
  %97 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %98 = call i64 %96(%struct.ber_element* %97)
  %99 = trunc i64 %98 to i32
  %100 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %101 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  br label %105

102:                                              ; preds = %88
  %103 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %104 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %103, i32 0, i32 3
  store i32 132, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %93
  br label %106

106:                                              ; preds = %105, %83
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %59
  %109 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %110 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %267 [
    i32 134, label %112
    i32 136, label %113
    i32 133, label %113
    i32 135, label %113
    i32 137, label %157
    i32 130, label %180
    i32 131, label %180
    i32 132, label %211
    i32 129, label %216
    i32 128, label %216
  ]

112:                                              ; preds = %108
  br label %267

113:                                              ; preds = %108, %108, %108
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %114, 8
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 -1, i32* %3, align 4
  br label %269

117:                                              ; preds = %113
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %133, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.ber*, %struct.ber** %4, align 8
  %124 = call i32 @ber_getc(%struct.ber* %123, i64* %15)
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 -1, i32* %3, align 4
  br label %269

127:                                              ; preds = %122
  %128 = load i64, i64* %6, align 8
  %129 = shl i64 %128, 8
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %6, align 8
  %132 = or i64 %131, %130
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %118

136:                                              ; preds = %118
  %137 = load i64, i64* %6, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %138, 1
  %140 = mul nsw i32 %139, 8
  %141 = zext i32 %140 to i64
  %142 = ashr i64 %137, %141
  %143 = and i64 %142, 128
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = load i32, i32* @ULLONG_MAX, align 4
  %147 = load i32, i32* %9, align 4
  %148 = mul nsw i32 %147, 8
  %149 = shl i32 %146, %148
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %6, align 8
  %152 = or i64 %151, %150
  store i64 %152, i64* %6, align 8
  br label %153

153:                                              ; preds = %145, %136
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %156 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %155, i32 0, i32 4
  store i64 %154, i64* %156, align 8
  br label %267

157:                                              ; preds = %108
  %158 = load i32, i32* %12, align 4
  %159 = call i8* @malloc(i32 %158)
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %162 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %161, i32 0, i32 8
  store i32* %160, i32** %162, align 8
  %163 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %164 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %163, i32 0, i32 8
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  store i32 -1, i32* %3, align 4
  br label %269

168:                                              ; preds = %157
  %169 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %170 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %169, i32 0, i32 5
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %173 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ber*, %struct.ber** %4, align 8
  %175 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %176 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %175, i32 0, i32 8
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @ber_read(%struct.ber* %174, i32* %177, i32 %178)
  br label %267

180:                                              ; preds = %108, %108
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  %183 = call i8* @malloc(i32 %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %186 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %185, i32 0, i32 8
  store i32* %184, i32** %186, align 8
  %187 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %188 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %187, i32 0, i32 8
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  store i32 -1, i32* %3, align 4
  br label %269

192:                                              ; preds = %180
  %193 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %194 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %193, i32 0, i32 5
  store i32 1, i32* %194, align 8
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %197 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load %struct.ber*, %struct.ber** %4, align 8
  %199 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %200 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %199, i32 0, i32 8
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @ber_read(%struct.ber* %198, i32* %201, i32 %202)
  %204 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %205 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %204, i32 0, i32 8
  %206 = load i32*, i32** %205, align 8
  %207 = bitcast i32* %206 to i64*
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  store i64 0, i64* %210, align 8
  br label %267

211:                                              ; preds = %108
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 -1, i32* %3, align 4
  br label %269

215:                                              ; preds = %211
  br label %267

216:                                              ; preds = %108, %108
  %217 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %218 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %217, i32 0, i32 7
  %219 = load %struct.ber_element*, %struct.ber_element** %218, align 8
  %220 = icmp eq %struct.ber_element* %219, null
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = call i8* @ber_get_element(i32 0)
  %223 = bitcast i8* %222 to %struct.ber_element*
  %224 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %225 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %224, i32 0, i32 7
  store %struct.ber_element* %223, %struct.ber_element** %225, align 8
  %226 = icmp eq %struct.ber_element* %223, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i32 -1, i32* %3, align 4
  br label %269

228:                                              ; preds = %221
  br label %229

229:                                              ; preds = %228, %216
  %230 = load %struct.ber_element*, %struct.ber_element** %5, align 8
  %231 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %230, i32 0, i32 7
  %232 = load %struct.ber_element*, %struct.ber_element** %231, align 8
  store %struct.ber_element* %232, %struct.ber_element** %7, align 8
  br label %233

233:                                              ; preds = %262, %229
  %234 = load i32, i32* %12, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %266

236:                                              ; preds = %233
  %237 = load %struct.ber*, %struct.ber** %4, align 8
  %238 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %239 = call i32 @ber_read_element(%struct.ber* %237, %struct.ber_element* %238)
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i32 -1, i32* %3, align 4
  br label %269

243:                                              ; preds = %236
  %244 = load i32, i32* %13, align 4
  %245 = load i32, i32* %12, align 4
  %246 = sub nsw i32 %245, %244
  store i32 %246, i32* %12, align 4
  %247 = load i32, i32* %12, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %243
  %250 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %251 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %250, i32 0, i32 6
  %252 = load %struct.ber_element*, %struct.ber_element** %251, align 8
  %253 = icmp eq %struct.ber_element* %252, null
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = call i8* @ber_get_element(i32 0)
  %256 = bitcast i8* %255 to %struct.ber_element*
  %257 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %258 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %257, i32 0, i32 6
  store %struct.ber_element* %256, %struct.ber_element** %258, align 8
  %259 = icmp eq %struct.ber_element* %256, null
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  store i32 -1, i32* %3, align 4
  br label %269

261:                                              ; preds = %254
  br label %262

262:                                              ; preds = %261, %249, %243
  %263 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %264 = getelementptr inbounds %struct.ber_element, %struct.ber_element* %263, i32 0, i32 6
  %265 = load %struct.ber_element*, %struct.ber_element** %264, align 8
  store %struct.ber_element* %265, %struct.ber_element** %7, align 8
  br label %233

266:                                              ; preds = %233
  br label %267

267:                                              ; preds = %108, %266, %215, %192, %168, %153, %112
  %268 = load i32, i32* %14, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %267, %260, %242, %227, %214, %191, %167, %126, %116, %57, %34, %19
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @get_id(%struct.ber*, i64*, i32*, i32*) #1

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @get_len(%struct.ber*, i32*) #1

declare dso_local i32 @ber_getc(%struct.ber*, i64*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ber_read(%struct.ber*, i32*, i32) #1

declare dso_local i8* @ber_get_element(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
