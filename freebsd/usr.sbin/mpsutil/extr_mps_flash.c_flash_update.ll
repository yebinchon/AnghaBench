; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_flash.c_flash_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_flash.c_flash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [48 x i8] c"missing argument: expecting 'firmware' or bios'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bios\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Invalid argument '%s', expecting 'firmware' or 'bios'\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"update firmware: extra arguments\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"no firmware specified\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"mmap\00", align 1
@mps_unit = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"mps_open\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"could not get controller IOCFacts\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Invalid bios: no boot record magic number\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"Invalid bios: size not a multiple of 512\00", align 1
@MPI2_MFGPAGE_VENDORID_LSI = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"Invalid firmware:\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"  Expected Vendor ID: %04x\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"  Image Vendor ID: %04x\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Invalid image:\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"  Expected Product ID: %04x\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"  Image Product ID: %04x\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Updating %s...\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Fail to update %s\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%s successfully updated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @flash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_update(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %245

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  br label %37

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36, %24
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %245

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %3, align 4
  br label %245

49:                                               ; preds = %43
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @stat(i8* %52, %struct.stat* %9)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @errno, align 4
  store i32 %56, i32* %6, align 4
  %57 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %245

59:                                               ; preds = %49
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @O_RDONLY, align 4
  %64 = call i32 @open(i8* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @errno, align 4
  store i32 %68, i32* %6, align 4
  %69 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %245

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PROT_READ, align 4
  %75 = load i32, i32* @MAP_PRIVATE, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @mmap(i32* null, i32 %73, i32 %74, i32 %75, i32 %76, i32 0)
  store i8* %77, i8** %8, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** @MAP_FAILED, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32, i32* @errno, align 4
  store i32 %82, i32* %6, align 4
  %83 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %245

87:                                               ; preds = %71
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @close(i32 %88)
  %90 = load i32, i32* @mps_unit, align 4
  %91 = call i32 @mps_open(i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load i32, i32* @errno, align 4
  store i32 %95, i32* %6, align 4
  %96 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @munmap(i8* %97, i32 %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %245

102:                                              ; preds = %87
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.TYPE_5__* @mps_get_iocfacts(i32 %103)
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %12, align 8
  %105 = icmp eq %struct.TYPE_5__* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @munmap(i8* %108, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @close(i32 %112)
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %3, align 4
  br label %245

115:                                              ; preds = %102
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %156

118:                                              ; preds = %115
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl i32 %122, 8
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %123, %127
  %129 = icmp ne i32 %128, 43605
  br i1 %129, label %130, label %140

130:                                              ; preds = %118
  %131 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @munmap(i8* %132, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @close(i32 %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %139 = call i32 @free(%struct.TYPE_5__* %138)
  store i32 1, i32* %3, align 4
  br label %245

140:                                              ; preds = %118
  %141 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = srem i32 %142, 512
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @munmap(i8* %147, i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @close(i32 %151)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = call i32 @free(%struct.TYPE_5__* %153)
  store i32 1, i32* %3, align 4
  br label %245

155:                                              ; preds = %140
  br label %207

156:                                              ; preds = %115
  %157 = load i8*, i8** %8, align 8
  %158 = bitcast i8* %157 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %158, %struct.TYPE_6__** %11, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** @MPI2_MFGPAGE_VENDORID_LSI, align 8
  %163 = icmp ne i8* %161, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %156
  %165 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %166 = load i8*, i8** @MPI2_MFGPAGE_VENDORID_LSI, align 8
  %167 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %166)
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %170)
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @munmap(i8* %172, i32 %174)
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @close(i32 %176)
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %179 = call i32 @free(%struct.TYPE_5__* %178)
  store i32 1, i32* %3, align 4
  br label %245

180:                                              ; preds = %156
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %183, %186
  br i1 %187, label %188, label %206

188:                                              ; preds = %180
  %189 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %192)
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %196)
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @munmap(i8* %198, i32 %200)
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @close(i32 %202)
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %205 = call i32 @free(%struct.TYPE_5__* %204)
  store i32 1, i32* %3, align 4
  br label %245

206:                                              ; preds = %180
  br label %207

207:                                              ; preds = %206, %155
  %208 = load i8**, i8*** %5, align 8
  %209 = getelementptr inbounds i8*, i8** %208, i64 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %210)
  %212 = load i32, i32* %7, align 4
  %213 = load i8*, i8** %8, align 8
  %214 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %10, align 4
  %217 = call i64 @mps_firmware_send(i32 %212, i8* %213, i32 %215, i32 %216)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %207
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8* %222)
  %224 = load i8*, i8** %8, align 8
  %225 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @munmap(i8* %224, i32 %226)
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @close(i32 %228)
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %231 = call i32 @free(%struct.TYPE_5__* %230)
  store i32 1, i32* %3, align 4
  br label %245

232:                                              ; preds = %207
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @munmap(i8* %233, i32 %235)
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @close(i32 %237)
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %240 = call i32 @free(%struct.TYPE_5__* %239)
  %241 = load i8**, i8*** %5, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8* %243)
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %232, %219, %188, %164, %145, %130, %106, %94, %81, %67, %55, %46, %40, %15
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @mps_open(i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local %struct.TYPE_5__* @mps_get_iocfacts(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @mps_firmware_send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
