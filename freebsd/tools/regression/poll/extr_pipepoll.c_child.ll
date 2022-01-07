; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipepoll.c_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/poll/extr_pipepoll.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@filetype = common dso_local global i64 0, align 8
@FT_FIFO = common dso_local global i64 0, align 8
@FIFONAME = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"open for read\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@ppid = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"2a\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@POLLHUP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"6a\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"6b\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"6c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"6d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @filetype, align 8
  %10 = load i64, i64* @FT_FIFO, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load i32, i32* @FIFONAME, align 4
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i32 %13, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %12
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @POLLIN, align 4
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i64, i64* @filetype, align 8
  %29 = load i64, i64* @FT_FIFO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @report(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %36, %23
  %44 = load i32, i32* @ppid, align 4
  %45 = load i32, i32* @SIGUSR1, align 4
  %46 = call i32 @kill(i32 %44, i32 %45)
  %47 = call i32 @usleep(i32 1)
  br label %48

48:                                               ; preds = %51, %43
  %49 = load i32, i32* @state, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %48

52:                                               ; preds = %48
  %53 = load i64, i64* @filetype, align 8
  %54 = load i64, i64* @FT_FIFO, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 4, i32* @state, align 4
  br label %138

57:                                               ; preds = %52
  %58 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %58, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @report(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %66, i32 %67, i32 0)
  %69 = load i32, i32* @ppid, align 4
  %70 = load i32, i32* @SIGUSR1, align 4
  %71 = call i32 @kill(i32 %69, i32 %70)
  %72 = call i32 @usleep(i32 1)
  br label %73

73:                                               ; preds = %76, %62
  %74 = load i32, i32* @state, align 4
  %75 = icmp ne i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %73

77:                                               ; preds = %73
  %78 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %78, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @POLLIN, align 4
  %86 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @report(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %87, i32 %88, i32 1)
  %90 = load i32, i32* %3, align 4
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %92 = call i32 @read(i32 %90, i8* %91, i32 256)
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %82
  %97 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %97, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  %104 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @report(i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %105, i32 %106, i32 0)
  %108 = load i32, i32* @ppid, align 4
  %109 = load i32, i32* @SIGUSR1, align 4
  %110 = call i32 @kill(i32 %108, i32 %109)
  %111 = call i32 @usleep(i32 1)
  br label %112

112:                                              ; preds = %115, %101
  %113 = load i32, i32* @state, align 4
  %114 = icmp ne i32 %113, 3
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %112

116:                                              ; preds = %112
  %117 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %117, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %116
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* @POLLHUP, align 4
  %125 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @report(i32 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %124, i32 %126, i32 %127, i32 1)
  %129 = load i32, i32* @ppid, align 4
  %130 = load i32, i32* @SIGUSR1, align 4
  %131 = call i32 @kill(i32 %129, i32 %130)
  %132 = call i32 @usleep(i32 1)
  br label %133

133:                                              ; preds = %136, %121
  %134 = load i32, i32* @state, align 4
  %135 = icmp ne i32 %134, 4
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %133

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %56
  %139 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %139, i32* %7, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %138
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  %146 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @report(i32 %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %147, i32 %148, i32 0)
  %150 = load i32, i32* @ppid, align 4
  %151 = load i32, i32* @SIGUSR1, align 4
  %152 = call i32 @kill(i32 %150, i32 %151)
  %153 = call i32 @usleep(i32 1)
  br label %154

154:                                              ; preds = %157, %143
  %155 = load i32, i32* @state, align 4
  %156 = icmp ne i32 %155, 5
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %154

158:                                              ; preds = %154
  %159 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %159, i32* %7, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %158
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* @POLLIN, align 4
  %167 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @report(i32 %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %166, i32 %168, i32 %169, i32 1)
  %171 = load i32, i32* @ppid, align 4
  %172 = load i32, i32* @SIGUSR1, align 4
  %173 = call i32 @kill(i32 %171, i32 %172)
  %174 = call i32 @usleep(i32 1)
  br label %175

175:                                              ; preds = %178, %163
  %176 = load i32, i32* @state, align 4
  %177 = icmp ne i32 %176, 6
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %175

179:                                              ; preds = %175
  %180 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %180, i32* %7, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %179
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* @POLLIN, align 4
  %188 = load i32, i32* @POLLHUP, align 4
  %189 = or i32 %187, %188
  %190 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @report(i32 %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %189, i32 %191, i32 %192, i32 1)
  %194 = load i32, i32* %3, align 4
  %195 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %196 = call i32 @read(i32 %194, i8* %195, i32 256)
  %197 = icmp ne i32 %196, 1
  br i1 %197, label %198, label %200

198:                                              ; preds = %184
  %199 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %184
  %201 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %201, i32* %7, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %200
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* @POLLHUP, align 4
  %209 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @report(i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %208, i32 %210, i32 %211, i32 1)
  %213 = load i64, i64* @filetype, align 8
  %214 = load i64, i64* @FT_FIFO, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %269

216:                                              ; preds = %205
  %217 = load i32, i32* @FIFONAME, align 4
  %218 = load i32, i32* @O_RDONLY, align 4
  %219 = load i32, i32* @O_NONBLOCK, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @open(i32 %217, i32 %220)
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %226

226:                                              ; preds = %224, %216
  %227 = load i32, i32* %6, align 4
  %228 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %227, i32* %228, align 4
  %229 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %229, i32* %7, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %226
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %4, align 4
  %236 = load i32, i32* @POLLHUP, align 4
  %237 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @report(i32 %234, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %236, i32 %238, i32 %239, i32 1)
  %241 = load i32, i32* %3, align 4
  %242 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %241, i32* %242, align 4
  %243 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %243, i32* %7, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %233
  %246 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %233
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* @POLLHUP, align 4
  %251 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @report(i32 %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %250, i32 %252, i32 %253, i32 1)
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @close(i32 %255)
  %257 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 0)
  store i32 %257, i32* %7, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %247
  %260 = call i32 @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %247
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %4, align 4
  %264 = load i32, i32* @POLLHUP, align 4
  %265 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %7, align 4
  %268 = call i32 @report(i32 %262, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %264, i32 %266, i32 %267, i32 1)
  br label %269

269:                                              ; preds = %261, %205
  %270 = load i32, i32* %3, align 4
  %271 = call i32 @close(i32 %270)
  %272 = load i32, i32* @ppid, align 4
  %273 = load i32, i32* @SIGUSR1, align 4
  %274 = call i32 @kill(i32 %272, i32 %273)
  %275 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @report(i32, i8*, i32, i32, i32, i32) #1

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
