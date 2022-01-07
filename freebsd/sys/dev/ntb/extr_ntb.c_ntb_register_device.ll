; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_register_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.ntb_child*, i32*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"%d memory windows, %d scratchpads, %d doorbells\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"hint.%s.%d.config\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Not enough resources for config\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"ntb ctx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"%d \22%s\22:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" memory windows %d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"-%d\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c" scratchpads %d\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c" doorbells %d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_register_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_child**, align 8
  %5 = alloca %struct.ntb_child*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [128 x i8], align 16
  %17 = alloca [32 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.ntb_child** @device_get_softc(i32 %23)
  store %struct.ntb_child** %24, %struct.ntb_child*** %4, align 8
  %25 = bitcast [128 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 128, i1 false)
  store i32 0, i32* %8, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @NTB_MW_COUNT(i32 %26)
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @NTB_SPAD_COUNT(i32 %28)
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @NTB_DB_VALID_MASK(i32 %30)
  %32 = call i32 @flsll(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %39 = load i32, i32* %3, align 4
  %40 = call i8* @device_get_name(i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @device_get_unit(i32 %41)
  %43 = call i32 @snprintf(i8* %38, i32 32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %42)
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %46 = call i32 @TUNABLE_STR_FETCH(i8* %44, i8* %45, i32 128)
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  store i8* %47, i8** %18, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %256, %1
  %49 = call i8* @strsep(i8** %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %49, i8** %20, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %268

51:                                               ; preds = %48
  %52 = load i8*, i8** %20, align 8
  store i8* %52, i8** %19, align 8
  %53 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %53, i8** %22, align 8
  %54 = load i8*, i8** %22, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8*, i8** %22, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i8* null, i8** %22, align 8
  br label %63

63:                                               ; preds = %62, %56, %51
  %64 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %64, i8** %21, align 8
  %65 = load i8*, i8** %21, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i8*, i8** %21, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** %21, align 8
  %75 = call i32 @strtol(i8* %74, i32* null, i32 10)
  br label %80

76:                                               ; preds = %67, %63
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  store i32 %81, i32* %7, align 4
  %82 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %82, i8** %21, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i8*, i8** %21, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i8*, i8** %21, align 8
  %93 = call i32 @strtol(i8* %92, i32* null, i32 10)
  br label %98

94:                                               ; preds = %85, %80
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %95, %96
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i32 [ %93, %91 ], [ %97, %94 ]
  store i32 %99, i32* %10, align 4
  %100 = load i8*, i8** %19, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = load i8*, i8** %19, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i8*, i8** %19, align 8
  %110 = call i32 @strtol(i8* %109, i32* null, i32 10)
  br label %115

111:                                              ; preds = %102, %98
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sub nsw i32 %112, %113
  br label %115

115:                                              ; preds = %111, %108
  %116 = phi i32 [ %110, %108 ], [ %114, %111 ]
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub nsw i32 %118, %119
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %134, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = sub nsw i32 %124, %125
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %130, %131
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %128, %122, %115
  %135 = load i32, i32* %3, align 4
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %268

137:                                              ; preds = %128
  %138 = load i32, i32* @M_DEVBUF, align 4
  %139 = load i32, i32* @M_WAITOK, align 4
  %140 = load i32, i32* @M_ZERO, align 4
  %141 = or i32 %139, %140
  %142 = call %struct.ntb_child* @malloc(i32 56, i32 %138, i32 %141)
  store %struct.ntb_child* %142, %struct.ntb_child** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %145 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %148 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %151 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %154 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %157 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %160 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %163 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %162, i32 0, i32 6
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %13, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %137
  br label %172

167:                                              ; preds = %137
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 64, %168
  %170 = zext i32 %169 to i64
  %171 = lshr i64 -1, %170
  br label %172

172:                                              ; preds = %167, %166
  %173 = phi i64 [ 0, %166 ], [ %171, %167 ]
  %174 = trunc i64 %173 to i32
  %175 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %176 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  %177 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %178 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %177, i32 0, i32 10
  %179 = call i32 @rm_init(i32* %178, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %180 = load i32, i32* %3, align 4
  %181 = load i8*, i8** %22, align 8
  %182 = call i32* @device_add_child(i32 %180, i8* %181, i32 -1)
  %183 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %184 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %183, i32 0, i32 9
  store i32* %182, i32** %184, align 8
  %185 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %186 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %185, i32 0, i32 9
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %172
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @ntb_unregister_device(i32 %190)
  %192 = load i32, i32* @ENOMEM, align 4
  store i32 %192, i32* %2, align 4
  br label %271

193:                                              ; preds = %172
  %194 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %195 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %194, i32 0, i32 9
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %198 = call i32 @device_set_ivars(i32* %196, %struct.ntb_child* %197)
  %199 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %200 = load %struct.ntb_child**, %struct.ntb_child*** %4, align 8
  store %struct.ntb_child* %199, %struct.ntb_child** %200, align 8
  %201 = load %struct.ntb_child*, %struct.ntb_child** %5, align 8
  %202 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %201, i32 0, i32 8
  store %struct.ntb_child** %202, %struct.ntb_child*** %4, align 8
  %203 = load i64, i64* @bootverbose, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %256

205:                                              ; preds = %193
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* %6, align 4
  %208 = load i8*, i8** %22, align 8
  %209 = call i32 (i32, i8*, ...) @device_printf(i32 %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %207, i8* %208)
  %210 = load i32, i32* %7, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %205
  %213 = load i32, i32* %8, align 4
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %7, align 4
  %216 = icmp sgt i32 %215, 1
  br i1 %216, label %217, label %223

217:                                              ; preds = %212
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %218, %219
  %221 = sub nsw i32 %220, 1
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %217, %212
  br label %224

224:                                              ; preds = %223, %205
  %225 = load i32, i32* %10, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %224
  %228 = load i32, i32* %11, align 4
  %229 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* %10, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %233, %234
  %236 = sub nsw i32 %235, 1
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %236)
  br label %238

238:                                              ; preds = %232, %227
  br label %239

239:                                              ; preds = %238, %224
  %240 = load i32, i32* %13, align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %239
  %243 = load i32, i32* %14, align 4
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %243)
  %245 = load i32, i32* %13, align 4
  %246 = icmp sgt i32 %245, 1
  br i1 %246, label %247, label %253

247:                                              ; preds = %242
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %248, %249
  %251 = sub nsw i32 %250, 1
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %251)
  br label %253

253:                                              ; preds = %247, %242
  br label %254

254:                                              ; preds = %253, %239
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %193
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %8, align 4
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 %261, %260
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %14, align 4
  %265 = add nsw i32 %264, %263
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %6, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %6, align 4
  br label %48

268:                                              ; preds = %134, %48
  %269 = load i32, i32* %3, align 4
  %270 = call i32 @bus_generic_attach(i32 %269)
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %268, %189
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local %struct.ntb_child** @device_get_softc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @NTB_MW_COUNT(i32) #1

declare dso_local i32 @NTB_SPAD_COUNT(i32) #1

declare dso_local i32 @flsll(i32) #1

declare dso_local i32 @NTB_DB_VALID_MASK(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @TUNABLE_STR_FETCH(i8*, i8*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local %struct.ntb_child* @malloc(i32, i32, i32) #1

declare dso_local i32 @rm_init(i32*, i8*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @ntb_unregister_device(i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.ntb_child*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
