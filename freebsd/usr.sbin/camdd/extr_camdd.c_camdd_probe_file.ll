; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_probe_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_probe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_dev = type { i64, i64, i32, i32, i32, i32*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.camdd_dev_file }
%struct.camdd_dev_file = type { i32, i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.camdd_io_opts = type { i64, i64, i32, i32 }

@CAMDD_DEV_FILE = common dso_local global i32 0, align 4
@CAMDD_FILE_DEFAULT_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Queue depth %ju for %s ignored, only 1 outstanding command supported\00", align 1
@CAMDD_FILE_DEFAULT_DEPTH = common dso_local global i32 0, align 4
@camdd_file_run = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Cannot stat %s\00", align 1
@FIODTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"FIODTYPE ioctl failed on %s\00", align 1
@D_TAPE = common dso_local global i32 0, align 4
@D_DISK = common dso_local global i32 0, align 4
@D_MEM = common dso_local global i32 0, align 4
@D_TTY = common dso_local global i32 0, align 4
@CAMDD_FILE_TTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot operate on directory %s\00", align 1
@CAMDD_FILE_PIPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Cannot determine file type for %s\00", align 1
@CAMDD_FF_CAN_SEEK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Unable to probe tape %s\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Blocksize %u too big for %s, limiting to %ju\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Blocksize %u too small for %s, increasing to %ju\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Blocksize %u for %s not a multiple of %d, adjusting to %d\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Unable to derive valid blocksize for %s\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"DIOCGSECTORSIZE ioctl failed on %s\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"DIOCGSECTORSIZE ioctl returned invalid sector size %u for %s\00", align 1
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"DIOCGMEDIASIZE ioctl failed on %s\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"DIOCGMEDIASIZE ioctl returned invalid media size %ju for %s\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"%s blocksize %u not a multiple of sector size %u\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Offset %ju specified for %s, but we cannot seek on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.camdd_dev* @camdd_probe_file(i32 %0, %struct.camdd_io_opts* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.camdd_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.camdd_io_opts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.camdd_dev*, align 8
  %11 = alloca %struct.camdd_dev_file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.camdd_io_opts* %1, %struct.camdd_io_opts** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.camdd_dev* null, %struct.camdd_dev** %10, align 8
  %21 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %22 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* @CAMDD_DEV_FILE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.camdd_dev* @camdd_alloc_dev(i32 %24, i32* null, i32 0, i32 %25, i32 %26)
  store %struct.camdd_dev* %27, %struct.camdd_dev** %10, align 8
  %28 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %29 = icmp eq %struct.camdd_dev* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %450

31:                                               ; preds = %4
  %32 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %33 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.camdd_dev_file* %34, %struct.camdd_dev_file** %11, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %37 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %39 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %42 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @strlcpy(i64 %40, i64 %43, i32 8)
  %45 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %46 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %49 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @strlcpy(i64 %47, i64 %50, i32 8)
  %52 = load i64, i64* %12, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %31
  %55 = load i64, i64* @CAMDD_FILE_DEFAULT_BLOCK, align 8
  %56 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %57 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %62

58:                                               ; preds = %31
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %61 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %64 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %69 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %74 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %77 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, i32, i64, ...) @warnx(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %78)
  br label %80

80:                                               ; preds = %72, %67, %62
  %81 = load i32, i32* @CAMDD_FILE_DEFAULT_DEPTH, align 4
  %82 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %83 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @camdd_file_run, align 4
  %85 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %86 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %88 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %87, i32 0, i32 5
  store i32* null, i32** %88, align 8
  %89 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %90 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @STDIN_FILENO, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %426

94:                                               ; preds = %80
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @STDOUT_FILENO, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %426

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %101 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %100, i32 0, i32 4
  %102 = call i32 @fstat(i32 %99, %struct.TYPE_4__* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %107 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  br label %452

110:                                              ; preds = %98
  %111 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %112 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @S_ISREG(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %119 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %118, i32 0, i32 2
  store i32 129, i32* %119, align 8
  br label %206

120:                                              ; preds = %110
  %121 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %122 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @S_ISCHR(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %175

127:                                              ; preds = %120
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @FIODTYPE, align 4
  %130 = call i32 (i32, i32, ...) @ioctl(i32 %128, i32 %129, i32* %14)
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %134 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %135)
  br label %174

137:                                              ; preds = %127
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @D_TAPE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %144 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %143, i32 0, i32 2
  store i32 128, i32* %144, align 8
  br label %173

145:                                              ; preds = %137
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @D_DISK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %152 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %151, i32 0, i32 2
  store i32 131, i32* %152, align 8
  br label %172

153:                                              ; preds = %145
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @D_MEM, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %160 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %159, i32 0, i32 2
  store i32 130, i32* %160, align 8
  br label %171

161:                                              ; preds = %153
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @D_TTY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i32, i32* @CAMDD_FILE_TTY, align 4
  %168 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %169 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %166, %161
  br label %171

171:                                              ; preds = %170, %158
  br label %172

172:                                              ; preds = %171, %150
  br label %173

173:                                              ; preds = %172, %142
  br label %174

174:                                              ; preds = %173, %132
  br label %205

175:                                              ; preds = %120
  %176 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %177 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @S_ISDIR(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %175
  %183 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %184 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %185)
  br label %204

187:                                              ; preds = %175
  %188 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %189 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @S_ISFIFO(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i32, i32* @CAMDD_FILE_PIPE, align 4
  %196 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %197 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %203

198:                                              ; preds = %187
  %199 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %200 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %201)
  br label %203

203:                                              ; preds = %198, %194
  br label %204

204:                                              ; preds = %203, %182
  br label %205

205:                                              ; preds = %204, %174
  br label %206

206:                                              ; preds = %205, %117
  %207 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %208 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  switch i32 %209, label %424 [
    i32 129, label %210
    i32 128, label %233
    i32 131, label %346
    i32 130, label %418
  ]

210:                                              ; preds = %206
  %211 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %212 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %210
  %217 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %218 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %223 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  br label %227

224:                                              ; preds = %210
  %225 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %226 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %225, i32 0, i32 4
  store i32 0, i32* %226, align 8
  br label %227

227:                                              ; preds = %224, %216
  %228 = load i32, i32* @CAMDD_FF_CAN_SEEK, align 4
  %229 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %230 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %425

233:                                              ; preds = %206
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %236 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = call i32 @camdd_probe_tape(i32 %234, i64 %237, i64* %15, i64* %16, i64* %17, i64* %18)
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %13, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %233
  %242 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %243 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %244)
  br label %246

246:                                              ; preds = %241, %233
  %247 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %248 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* %15, align 8
  %251 = icmp sgt i64 %249, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %246
  %253 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %254 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %258 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %15, align 8
  %261 = call i32 (i8*, i32, i64, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %256, i64 %259, i64 %260)
  %262 = load i64, i64* %15, align 8
  %263 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %264 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  br label %265

265:                                              ; preds = %252, %246
  %266 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %267 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* %17, align 8
  %270 = icmp slt i64 %268, %269
  br i1 %270, label %271, label %284

271:                                              ; preds = %265
  %272 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %273 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = trunc i64 %274 to i32
  %276 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %277 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* %17, align 8
  %280 = call i32 (i8*, i32, i64, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %275, i64 %278, i64 %279)
  %281 = load i64, i64* %17, align 8
  %282 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %283 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %282, i32 0, i32 1
  store i64 %281, i64* %283, align 8
  br label %284

284:                                              ; preds = %271, %265
  %285 = load i64, i64* %18, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %329

287:                                              ; preds = %284
  %288 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %289 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* %18, align 8
  %292 = trunc i64 %291 to i32
  %293 = shl i32 1, %292
  %294 = sext i32 %293 to i64
  %295 = srem i64 %290, %294
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %329

297:                                              ; preds = %287
  %298 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %299 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %303 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* %18, align 8
  %306 = trunc i64 %305 to i32
  %307 = shl i32 1, %306
  %308 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %309 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* %18, align 8
  %312 = trunc i64 %311 to i32
  %313 = shl i32 1, %312
  %314 = sub nsw i32 %313, 1
  %315 = xor i32 %314, -1
  %316 = sext i32 %315 to i64
  %317 = and i64 %310, %316
  %318 = call i32 (i8*, i32, i64, ...) @warnx(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i32 %301, i64 %304, i32 %307, i64 %317)
  %319 = load i64, i64* %18, align 8
  %320 = trunc i64 %319 to i32
  %321 = shl i32 1, %320
  %322 = sub nsw i32 %321, 1
  %323 = xor i32 %322, -1
  %324 = sext i32 %323 to i64
  %325 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %326 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = and i64 %327, %324
  store i64 %328, i64* %326, align 8
  br label %329

329:                                              ; preds = %297, %287, %284
  %330 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %331 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %329
  %335 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %336 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %337)
  br label %339

339:                                              ; preds = %334, %329
  %340 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %341 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = trunc i64 %342 to i32
  %344 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %345 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %344, i32 0, i32 2
  store i32 %343, i32* %345, align 8
  br label %425

346:                                              ; preds = %206
  %347 = load i32, i32* @CAMDD_FF_CAN_SEEK, align 4
  %348 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %349 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 4
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %354 = call i32 (i32, i32, ...) @ioctl(i32 %352, i32 %353, i32* %20)
  %355 = icmp eq i32 %354, -1
  br i1 %355, label %356, label %361

356:                                              ; preds = %346
  %357 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %358 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %359)
  br label %361

361:                                              ; preds = %356, %346
  %362 = load i32, i32* %20, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load i32, i32* %20, align 4
  %366 = zext i32 %365 to i64
  %367 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %368 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i64 %366, i64 %369)
  br label %371

371:                                              ; preds = %364, %361
  %372 = load i32, i32* %6, align 4
  %373 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %374 = call i32 (i32, i32, ...) @ioctl(i32 %372, i32 %373, i32* %19)
  %375 = icmp eq i32 %374, -1
  br i1 %375, label %376, label %381

376:                                              ; preds = %371
  %377 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %378 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i64 %379)
  br label %381

381:                                              ; preds = %376, %371
  %382 = load i32, i32* %19, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %381
  %385 = load i32, i32* %19, align 4
  %386 = sext i32 %385 to i64
  %387 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %388 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i64 %386, i64 %389)
  br label %391

391:                                              ; preds = %384, %381
  %392 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %393 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = load i32, i32* %20, align 4
  %396 = zext i32 %395 to i64
  %397 = srem i64 %394, %396
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %391
  %400 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %401 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %404 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = load i32, i32* %20, align 4
  %407 = call i32 (i32, i8*, i64, ...) @errx(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i64 %402, i64 %405, i32 %406)
  br label %408

408:                                              ; preds = %399, %391
  %409 = load i32, i32* %20, align 4
  %410 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %411 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %410, i32 0, i32 2
  store i32 %409, i32* %411, align 8
  %412 = load i32, i32* %19, align 4
  %413 = load i32, i32* %20, align 4
  %414 = udiv i32 %412, %413
  %415 = sub i32 %414, 1
  %416 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %417 = getelementptr inbounds %struct.camdd_dev, %struct.camdd_dev* %416, i32 0, i32 4
  store i32 %415, i32* %417, align 8
  br label %425

418:                                              ; preds = %206
  %419 = load i32, i32* @CAMDD_FF_CAN_SEEK, align 4
  %420 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %421 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = or i32 %422, %419
  store i32 %423, i32* %421, align 4
  br label %425

424:                                              ; preds = %206
  br label %425

425:                                              ; preds = %424, %418, %408, %339, %227
  br label %426

426:                                              ; preds = %425, %94, %80
  %427 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %428 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %449

431:                                              ; preds = %426
  %432 = load %struct.camdd_dev_file*, %struct.camdd_dev_file** %11, align 8
  %433 = getelementptr inbounds %struct.camdd_dev_file, %struct.camdd_dev_file* %432, i32 0, i32 3
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @CAMDD_FF_CAN_SEEK, align 4
  %436 = and i32 %434, %435
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %449

438:                                              ; preds = %431
  %439 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %440 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %443 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.camdd_io_opts*, %struct.camdd_io_opts** %7, align 8
  %446 = getelementptr inbounds %struct.camdd_io_opts, %struct.camdd_io_opts* %445, i32 0, i32 1
  %447 = load i64, i64* %446, align 8
  %448 = call i32 (i8*, i32, i64, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0), i32 %441, i64 %444, i64 %447)
  br label %452

449:                                              ; preds = %431, %426
  br label %450

450:                                              ; preds = %449, %30
  %451 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  store %struct.camdd_dev* %451, %struct.camdd_dev** %5, align 8
  br label %455

452:                                              ; preds = %438, %105
  %453 = load %struct.camdd_dev*, %struct.camdd_dev** %10, align 8
  %454 = call i32 @camdd_free_dev(%struct.camdd_dev* %453)
  store %struct.camdd_dev* null, %struct.camdd_dev** %5, align 8
  br label %455

455:                                              ; preds = %452, %450
  %456 = load %struct.camdd_dev*, %struct.camdd_dev** %5, align 8
  ret %struct.camdd_dev* %456
}

declare dso_local %struct.camdd_dev* @camdd_alloc_dev(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @strlcpy(i64, i64, i32) #1

declare dso_local i32 @warnx(i8*, i32, i64, ...) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @warn(i8*, i64) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @ioctl(i32, i32, ...) #1

declare dso_local i32 @err(i32, i8*, i64) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @errx(i32, i8*, i64, ...) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i32 @camdd_probe_tape(i32, i64, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @camdd_free_dev(%struct.camdd_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
