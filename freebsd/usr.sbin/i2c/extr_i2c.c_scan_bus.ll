; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_scan_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iiccmd = type { i32, i32, i32, %struct.iic_msg*, i64 }
%struct.iic_msg = type { i32, i32, i32, i32* }
%struct.iic_rdwr_data = type { i32, i32, i32, %struct.iic_msg*, i64 }
%struct.skip_range = type { i32, i32, i32, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Error opening I2C controller (%s) for scanning: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error allocating tokens buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Skip address out of range\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Scanning I2C devices on %s: \00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"Hardware may not support START/STOP scanning; trying less-reliable read method.\0A\00", align 1
@I2CRSTCARD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Controller reset failed\0A\00", align 1
@IIC_M_RD = common dso_local global i32 0, align 4
@I2CRDWR = common dso_local global i32 0, align 4
@I2CSTART = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@I2CSTOP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"<none found>\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Error scanning I2C controller (%s): %s\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iiccmd*, i8*, i32, i8*)* @scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_bus(%struct.iiccmd* byval(%struct.iiccmd) align 8 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iic_msg, align 8
  %10 = alloca %struct.iic_rdwr_data, align 8
  %11 = alloca %struct.skip_range, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.skip_range, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %25 = bitcast %struct.skip_range* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 16, i1 false)
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @O_RDWR, align 4
  %28 = call i32 @open(i8* %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %4
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* @errno, align 8
  %35 = call i8* @strerror(i64 %34)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %35)
  %37 = load i32, i32* @EX_NOINPUT, align 4
  store i32 %37, i32* %5, align 4
  br label %254

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %18, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32* @strstr(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i8*, i8** %8, align 8
  %49 = call { i64, i64 } @skip_get_range(i8* %48)
  %50 = bitcast %struct.skip_range* %24 to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = extractvalue { i64, i64 } %49, 0
  store i64 %52, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = extractvalue { i64, i64 } %49, 1
  store i64 %54, i64* %53, align 4
  %55 = bitcast %struct.skip_range* %11 to i8*
  %56 = bitcast %struct.skip_range* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 16, i1 false)
  store i32 0, i32* %20, align 4
  br label %78

57:                                               ; preds = %41
  %58 = load i32, i32* %18, align 4
  %59 = sdiv i32 %58, 2
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i64 @malloc(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %231

71:                                               ; preds = %57
  %72 = load i8*, i8** %8, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sdiv i32 %74, 2
  %76 = add nsw i32 %75, 1
  %77 = call i32 @skip_get_tokens(i8* %72, i32* %73, i32 %76)
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %71, %47
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.skip_range, %struct.skip_range* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.skip_range, %struct.skip_range* %11, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %83, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %231

90:                                               ; preds = %81, %78
  br label %91

91:                                               ; preds = %90, %38
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %223, %200, %91
  %95 = load i32, i32* %22, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %94
  store i32 1, i32* %15, align 4
  br label %101

101:                                              ; preds = %214, %100
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 127
  br i1 %103, label %104, label %217

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.skip_range, %struct.skip_range* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.skip_range, %struct.skip_range* %11, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %107
  %114 = load i32, i32* %15, align 4
  %115 = getelementptr inbounds %struct.skip_range, %struct.skip_range* %11, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %114, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* %15, align 4
  %120 = getelementptr inbounds %struct.skip_range, %struct.skip_range* %11, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sle i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %214

124:                                              ; preds = %118, %113
  br label %151

125:                                              ; preds = %107, %104
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load i32, i32* %20, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %128
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %146, %131
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %132
  %137 = load i32*, i32** %12, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 1, i32* %19, align 4
  br label %149

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  br label %132

149:                                              ; preds = %144, %132
  br label %150

150:                                              ; preds = %149, %128, %125
  br label %151

151:                                              ; preds = %150, %124
  %152 = load i32, i32* %19, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 0, i32* %19, align 4
  br label %214

155:                                              ; preds = %151
  %156 = load i32, i32* %15, align 4
  %157 = shl i32 %156, 1
  %158 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %0, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %0, i32 0, i32 1
  store i32 1, i32* %159, align 4
  %160 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %0, i32 0, i32 4
  store i64 0, i64* %160, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @I2CRSTCARD, align 4
  %163 = call i32 (i32, i32, ...) @ioctl(i32 %161, i32 %162, %struct.iiccmd* %0)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %155
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %231

169:                                              ; preds = %155
  %170 = load i32, i32* %22, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 3
  store i32* %23, i32** %173, align 8
  %174 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 0
  store i32 1, i32* %174, align 8
  %175 = load i32, i32* @IIC_M_RD, align 4
  %176 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 2
  store i32 %175, i32* %176, align 8
  %177 = load i32, i32* %15, align 4
  %178 = shl i32 %177, 1
  %179 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %9, i32 0, i32 1
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.iic_rdwr_data, %struct.iic_rdwr_data* %10, i32 0, i32 3
  store %struct.iic_msg* %9, %struct.iic_msg** %180, align 8
  %181 = getelementptr inbounds %struct.iic_rdwr_data, %struct.iic_rdwr_data* %10, i32 0, i32 2
  store i32 1, i32* %181, align 8
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* @I2CRDWR, align 4
  %184 = call i32 (i32, i32, ...) @ioctl(i32 %182, i32 %183, %struct.iic_rdwr_data* %10)
  store i32 %184, i32* %14, align 4
  br label %205

185:                                              ; preds = %169
  %186 = load i32, i32* %15, align 4
  %187 = shl i32 %186, 1
  %188 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %0, i32 0, i32 0
  store i32 %187, i32* %188, align 8
  %189 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %0, i32 0, i32 1
  store i32 1, i32* %189, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @I2CSTART, align 4
  %192 = call i32 (i32, i32, ...) @ioctl(i32 %190, i32 %191, %struct.iiccmd* %0)
  store i32 %192, i32* %14, align 4
  %193 = load i64, i64* @errno, align 8
  %194 = load i64, i64* @ENODEV, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %185
  %197 = load i64, i64* @errno, align 8
  %198 = load i64, i64* @EOPNOTSUPP, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %196, %185
  store i32 1, i32* %22, align 4
  br label %94

201:                                              ; preds = %196
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @I2CSTOP, align 4
  %204 = call i32 (i32, i32, ...) @ioctl(i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %201, %172
  %206 = load i32, i32* %14, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %15, align 4
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  br label %213

213:                                              ; preds = %208, %205
  br label %214

214:                                              ; preds = %213, %154, %123
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %15, align 4
  br label %101

217:                                              ; preds = %101
  %218 = load i32, i32* %21, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load i32, i32* %22, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %220
  store i32 1, i32* %22, align 4
  br label %94

224:                                              ; preds = %220
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %217
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @I2CRSTCARD, align 4
  %230 = call i32 (i32, i32, ...) @ioctl(i32 %228, i32 %229, %struct.iiccmd* %0)
  store i32 %230, i32* %14, align 4
  br label %231

231:                                              ; preds = %226, %166, %87, %68
  %232 = load i32, i32* %13, align 4
  %233 = call i32 @close(i32 %232)
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load i32, i32* %20, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32*, i32** %12, align 8
  %241 = call i32 @free(i32* %240)
  br label %242

242:                                              ; preds = %239, %236, %231
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load i32, i32* @stderr, align 4
  %247 = load i8*, i8** %6, align 8
  %248 = load i64, i64* @errno, align 8
  %249 = call i8* @strerror(i64 %248)
  %250 = call i32 (i32, i8*, ...) @fprintf(i32 %246, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %247, i8* %249)
  %251 = load i32, i32* @EX_NOINPUT, align 4
  store i32 %251, i32* %5, align 4
  br label %254

252:                                              ; preds = %242
  %253 = load i32, i32* @EX_OK, align 4
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %252, %245, %31
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local { i64, i64 } @skip_get_range(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @skip_get_tokens(i8*, i32*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @ioctl(i32, i32, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
