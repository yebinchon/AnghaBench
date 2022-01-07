; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipeselect.c_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipeselect.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@filetype = common dso_local global i64 0, align 8
@FT_FIFO = common dso_local global i64 0, align 8
@FIFONAME = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"open for read\00", align 1
@FD_SETSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"fd = %d too large for select()\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ppid = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"2a\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"6a\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"6b\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"6c\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"6d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* @filetype, align 8
  %11 = load i64, i64* @FT_FIFO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* @FIFONAME, align 4
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @open(i32 %14, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %13
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @FD_SETSIZE, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i64, i64* @filetype, align 8
  %33 = load i64, i64* @FT_FIFO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SETUP(i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i64 @select(i32 %42, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @FD_ISSET(i32 %50, i32* %5)
  %52 = call i32 @report(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %51)
  br label %53

53:                                               ; preds = %47, %31
  %54 = load i32, i32* @ppid, align 4
  %55 = load i32, i32* @SIGUSR1, align 4
  %56 = call i32 @kill(i32 %54, i32 %55)
  %57 = call i32 @usleep(i32 1)
  br label %58

58:                                               ; preds = %61, %53
  %59 = load i32, i32* @state, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %58

62:                                               ; preds = %58
  %63 = load i64, i64* @filetype, align 8
  %64 = load i64, i64* @FT_FIFO, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 4, i32* @state, align 4
  br label %170

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SETUP(i32 %68, i32 %69, i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i64 @select(i32 %74, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %67
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @FD_ISSET(i32 %82, i32* %5)
  %84 = call i32 @report(i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %83)
  %85 = load i32, i32* @ppid, align 4
  %86 = load i32, i32* @SIGUSR1, align 4
  %87 = call i32 @kill(i32 %85, i32 %86)
  %88 = call i32 @usleep(i32 1)
  br label %89

89:                                               ; preds = %92, %79
  %90 = load i32, i32* @state, align 4
  %91 = icmp ne i32 %90, 2
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %89

93:                                               ; preds = %89
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %5, align 4
  %96 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @SETUP(i32 %94, i32 %95, i32 %97)
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i64 @select(i32 %100, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %93
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @FD_ISSET(i32 %108, i32* %5)
  %110 = call i32 @report(i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 %109)
  %111 = load i32, i32* %3, align 4
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %113 = call i32 @read(i32 %111, i8* %112, i32 256)
  %114 = icmp ne i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %105
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %5, align 4
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @SETUP(i32 %118, i32 %119, i32 %121)
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i64 @select(i32 %124, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %117
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @FD_ISSET(i32 %132, i32* %5)
  %134 = call i32 @report(i32 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %133)
  %135 = load i32, i32* @ppid, align 4
  %136 = load i32, i32* @SIGUSR1, align 4
  %137 = call i32 @kill(i32 %135, i32 %136)
  %138 = call i32 @usleep(i32 1)
  br label %139

139:                                              ; preds = %142, %129
  %140 = load i32, i32* @state, align 4
  %141 = icmp ne i32 %140, 3
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %139

143:                                              ; preds = %139
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %5, align 4
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @SETUP(i32 %144, i32 %145, i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i64 @select(i32 %150, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %143
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @FD_ISSET(i32 %158, i32* %5)
  %160 = call i32 @report(i32 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1, i32 %159)
  %161 = load i32, i32* @ppid, align 4
  %162 = load i32, i32* @SIGUSR1, align 4
  %163 = call i32 @kill(i32 %161, i32 %162)
  %164 = call i32 @usleep(i32 1)
  br label %165

165:                                              ; preds = %168, %155
  %166 = load i32, i32* @state, align 4
  %167 = icmp ne i32 %166, 4
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %165

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169, %66
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %5, align 4
  %173 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @SETUP(i32 %171, i32 %172, i32 %174)
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i64 @select(i32 %177, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %170
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @FD_ISSET(i32 %185, i32* %5)
  %187 = call i32 @report(i32 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 %186)
  %188 = load i32, i32* @ppid, align 4
  %189 = load i32, i32* @SIGUSR1, align 4
  %190 = call i32 @kill(i32 %188, i32 %189)
  %191 = call i32 @usleep(i32 1)
  br label %192

192:                                              ; preds = %195, %182
  %193 = load i32, i32* @state, align 4
  %194 = icmp ne i32 %193, 5
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %192

196:                                              ; preds = %192
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* %5, align 4
  %199 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @SETUP(i32 %197, i32 %198, i32 %200)
  %202 = load i32, i32* %3, align 4
  %203 = add nsw i32 %202, 1
  %204 = call i64 @select(i32 %203, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %196
  %207 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %196
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  %211 = load i32, i32* %3, align 4
  %212 = call i32 @FD_ISSET(i32 %211, i32* %5)
  %213 = call i32 @report(i32 %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1, i32 %212)
  %214 = load i32, i32* @ppid, align 4
  %215 = load i32, i32* @SIGUSR1, align 4
  %216 = call i32 @kill(i32 %214, i32 %215)
  %217 = call i32 @usleep(i32 1)
  br label %218

218:                                              ; preds = %221, %208
  %219 = load i32, i32* @state, align 4
  %220 = icmp ne i32 %219, 6
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %218

222:                                              ; preds = %218
  %223 = load i32, i32* %3, align 4
  %224 = load i32, i32* %5, align 4
  %225 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @SETUP(i32 %223, i32 %224, i32 %226)
  %228 = load i32, i32* %3, align 4
  %229 = add nsw i32 %228, 1
  %230 = call i64 @select(i32 %229, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %231 = icmp slt i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %222
  %233 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %234

234:                                              ; preds = %232, %222
  %235 = load i32, i32* %4, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %4, align 4
  %237 = load i32, i32* %3, align 4
  %238 = call i32 @FD_ISSET(i32 %237, i32* %5)
  %239 = call i32 @report(i32 %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1, i32 %238)
  %240 = load i32, i32* %3, align 4
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %242 = call i32 @read(i32 %240, i8* %241, i32 256)
  %243 = icmp ne i32 %242, 1
  br i1 %243, label %244, label %246

244:                                              ; preds = %234
  %245 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %234
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* %5, align 4
  %249 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @SETUP(i32 %247, i32 %248, i32 %250)
  %252 = load i32, i32* %3, align 4
  %253 = add nsw i32 %252, 1
  %254 = call i64 @select(i32 %253, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %255 = icmp slt i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %246
  %257 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %246
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %4, align 4
  %261 = load i32, i32* %3, align 4
  %262 = call i32 @FD_ISSET(i32 %261, i32* %5)
  %263 = call i32 @report(i32 %259, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 1, i32 %262)
  %264 = load i64, i64* @filetype, align 8
  %265 = load i64, i64* @FT_FIFO, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %334

267:                                              ; preds = %258
  %268 = load i32, i32* @FIFONAME, align 4
  %269 = load i32, i32* @O_RDONLY, align 4
  %270 = load i32, i32* @O_NONBLOCK, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @open(i32 %268, i32 %271)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %267
  %276 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %267
  %278 = load i32, i32* %3, align 4
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %8, align 4
  store i32 %279, i32* %3, align 4
  %280 = load i32, i32* %3, align 4
  %281 = load i32, i32* %5, align 4
  %282 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @SETUP(i32 %280, i32 %281, i32 %283)
  %285 = load i32, i32* %3, align 4
  %286 = add nsw i32 %285, 1
  %287 = call i64 @select(i32 %286, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %288 = icmp slt i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %277
  %290 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %277
  %292 = load i32, i32* %4, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %4, align 4
  %294 = load i32, i32* %3, align 4
  %295 = call i32 @FD_ISSET(i32 %294, i32* %5)
  %296 = call i32 @report(i32 %292, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 1, i32 %295)
  %297 = load i32, i32* %7, align 4
  store i32 %297, i32* %3, align 4
  %298 = load i32, i32* %3, align 4
  %299 = load i32, i32* %5, align 4
  %300 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @SETUP(i32 %298, i32 %299, i32 %301)
  %303 = load i32, i32* %3, align 4
  %304 = add nsw i32 %303, 1
  %305 = call i64 @select(i32 %304, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %306 = icmp slt i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %291
  %308 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %309

309:                                              ; preds = %307, %291
  %310 = load i32, i32* %4, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %4, align 4
  %312 = load i32, i32* %3, align 4
  %313 = call i32 @FD_ISSET(i32 %312, i32* %5)
  %314 = call i32 @report(i32 %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 1, i32 %313)
  %315 = load i32, i32* %8, align 4
  %316 = call i32 @close(i32 %315)
  %317 = load i32, i32* %3, align 4
  %318 = load i32, i32* %5, align 4
  %319 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @SETUP(i32 %317, i32 %318, i32 %320)
  %322 = load i32, i32* %3, align 4
  %323 = add nsw i32 %322, 1
  %324 = call i64 @select(i32 %323, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %309
  %327 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %309
  %329 = load i32, i32* %4, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %4, align 4
  %331 = load i32, i32* %3, align 4
  %332 = call i32 @FD_ISSET(i32 %331, i32* %5)
  %333 = call i32 @report(i32 %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 1, i32 %332)
  br label %334

334:                                              ; preds = %328, %258
  %335 = load i32, i32* %3, align 4
  %336 = call i32 @close(i32 %335)
  %337 = load i32, i32* @ppid, align 4
  %338 = load i32, i32* @SIGUSR1, align 4
  %339 = call i32 @kill(i32 %337, i32 %338)
  %340 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @SETUP(i32, i32, i32) #1

declare dso_local i64 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @report(i32, i8*, i32, i32) #1

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
