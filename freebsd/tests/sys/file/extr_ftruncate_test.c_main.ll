; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/file/extr_ftruncate_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/file/extr_ftruncate_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@__const.main.path = private unnamed_addr constant [15 x i8] c"ftruncate_file\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"open(%s, O_RDWR|O_CREAT, 0600)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"open(%s, O_RDONLY)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ftruncate(fd, -1) succeeded unexpectedly\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"ftruncate(fd, -1) returned wrong error\00", align 1
@lengths_count = common dso_local global i32 0, align 4
@lengths = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"ftruncate(%jd) up\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"fstat with len=%jd returned len %jd up\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"pread on len %jd up\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"pread len %jd size %jd up\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"pread length %jd size %jd ch %d up\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ftruncate(%jd) down\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"fstat(%jd) returned %jd down\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"ftruncate(read_only_fd) succeeded\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"ftruncate(read_only_fd) returned wrong error\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"socket(PF_UNIX, SOCK_STREAM, 0)\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"ftruncate(socket) succeeded\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"ftruncate(socket) returned wrong error\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"ftruncate(pipe) succeeded\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"ftruncate(pipe) returned wrong error\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"ftruncate(kqueue) succeeded\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"ftruncate(kqueue) returned wrong error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [15 x i8], align 1
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  %12 = bitcast [15 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.main.path, i32 0, i32 0), i64 15, i1 false)
  %13 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 (i8*, i32, ...) @open(i8* %13, i32 %16, i32 384)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %22 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %0
  %24 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = call i32 (i8*, i32, ...) @open(i8* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %2, align 4
  %31 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %32 = call i32 @unlink(i8* %31)
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* @errno, align 4
  %34 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %35 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %29, %23
  %37 = getelementptr inbounds [15 x i8], [15 x i8]* %7, i64 0, i64 0
  %38 = call i32 @unlink(i8* %37)
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @ftruncate(i32 %39, i32 -1)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %117, %50
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @lengths_count, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %120

55:                                               ; preds = %51
  %56 = load i32*, i32** @lengths, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @ftruncate(i32 %61, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %55
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @fstat(i32 %69, %struct.stat* %8)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @pread(i32 %88, i8* %11, i32 1, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp ne i64 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i8, i8* %11, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i8, i8* %11, align 1
  %113 = sext i8 %112 to i32
  %114 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %110, i32 %111, i32 %113)
  br label %115

115:                                              ; preds = %109, %105
  br label %116

116:                                              ; preds = %115, %84
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %51

120:                                              ; preds = %51
  %121 = load i32, i32* @lengths_count, align 4
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %156, %120
  %124 = load i32, i32* %5, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %123
  %127 = load i32*, i32** @lengths, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @ftruncate(i32 %132, i32 %133)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load i32, i32* %10, align 4
  %138 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %136, %126
  %140 = load i32, i32* %3, align 4
  %141 = call i64 @fstat(i32 %140, %struct.stat* %8)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %139
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  %152 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %150, %145
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %5, align 4
  br label %123

159:                                              ; preds = %123
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @close(i32 %160)
  %162 = load i32, i32* %6, align 4
  %163 = call i64 @ftruncate(i32 %162, i32 0)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %159
  %168 = load i32, i32* @errno, align 4
  %169 = load i32, i32* @EINVAL, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @close(i32 %174)
  %176 = load i32, i32* @PF_UNIX, align 4
  %177 = load i32, i32* @SOCK_STREAM, align 4
  %178 = call i32 @socket(i32 %176, i32 %177, i32 0)
  store i32 %178, i32* %3, align 4
  %179 = load i32, i32* %3, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %173
  %184 = load i32, i32* %3, align 4
  %185 = call i64 @ftruncate(i32 %184, i32 0)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %183
  %190 = load i32, i32* @errno, align 4
  %191 = load i32, i32* @EINVAL, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %189
  %196 = load i32, i32* %3, align 4
  %197 = call i32 @close(i32 %196)
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %199 = call i64 @pipe(i32* %198)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %195
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @ftruncate(i32 %205, i32 0)
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %203
  %211 = load i32, i32* @errno, align 4
  %212 = load i32, i32* @EINVAL, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %210
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @close(i32 %218)
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @close(i32 %221)
  %223 = call i32 (...) @kqueue()
  store i32 %223, i32* %3, align 4
  %224 = load i32, i32* %3, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %216
  %227 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %216
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @ftruncate(i32 %230, i32 0)
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = call i32 (i32, i8*, ...) @errx(i32 -1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %228
  %236 = load i32, i32* @errno, align 4
  %237 = load i32, i32* @EINVAL, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0))
  br label %241

241:                                              ; preds = %239, %235
  %242 = load i32, i32* %3, align 4
  %243 = call i32 @close(i32 %242)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32, ...) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i64 @ftruncate(i32, i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @pread(i32, i8*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @kqueue(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
