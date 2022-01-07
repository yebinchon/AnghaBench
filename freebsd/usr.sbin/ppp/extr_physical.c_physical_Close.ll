; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_10__*, i64 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 (%struct.physical*)*, i32 (%struct.physical*)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.utmpx = type { i32, i32, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s: Close\0A\00", align 1
@DEAD_PROCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%xppp\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: HUPing %ld\0A\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%s%s.if\00", align 1
@_PATH_VARRUN = common dso_local global i8* null, align 8
@LogALERT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: Can't remove %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @physical_Close(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.utmpx, align 4
  %7 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %2, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.physical*, %struct.physical** %2, align 8
  %13 = getelementptr inbounds %struct.physical, %struct.physical* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %194

17:                                               ; preds = %1
  %18 = load i32, i32* @LogDEBUG, align 4
  %19 = load %struct.physical*, %struct.physical** %2, align 8
  %20 = getelementptr inbounds %struct.physical, %struct.physical* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.physical*, %struct.physical** %2, align 8
  %25 = getelementptr inbounds %struct.physical, %struct.physical* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load %struct.physical*, %struct.physical** %2, align 8
  %30 = getelementptr inbounds %struct.physical, %struct.physical* %29, i32 0, i32 3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32 (%struct.physical*)*, i32 (%struct.physical*)** %32, align 8
  %34 = icmp ne i32 (%struct.physical*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.physical*, %struct.physical** %2, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32 (%struct.physical*)*, i32 (%struct.physical*)** %39, align 8
  %41 = load %struct.physical*, %struct.physical** %2, align 8
  %42 = call i32 %40(%struct.physical* %41)
  br label %43

43:                                               ; preds = %35, %28, %17
  %44 = load %struct.physical*, %struct.physical** %2, align 8
  %45 = call i32 @physical_StopDeviceTimer(%struct.physical* %44)
  %46 = load %struct.physical*, %struct.physical** %2, align 8
  %47 = getelementptr inbounds %struct.physical, %struct.physical* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = call i32 @memset(%struct.utmpx* %6, i32 0, i32 12)
  %52 = load i32, i32* @DEAD_PROCESS, align 4
  %53 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 1
  %55 = call i32 @gettimeofday(i32* %54, i32* null)
  %56 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i64 (...) @getpid()
  %61 = trunc i64 %60 to i32
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %59, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = call i32 @ID0logout(%struct.utmpx* %6)
  %64 = load %struct.physical*, %struct.physical** %2, align 8
  %65 = getelementptr inbounds %struct.physical, %struct.physical* %64, i32 0, i32 6
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %50, %43
  %67 = load %struct.physical*, %struct.physical** %2, align 8
  %68 = getelementptr inbounds %struct.physical, %struct.physical* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @tcgetpgrp(i32 %69)
  %71 = call i64 (...) @getpgrp()
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  %74 = load %struct.physical*, %struct.physical** %2, align 8
  %75 = getelementptr inbounds %struct.physical, %struct.physical* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @close(i32 %76)
  %78 = load %struct.physical*, %struct.physical** %2, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  %80 = load %struct.physical*, %struct.physical** %2, align 8
  %81 = getelementptr inbounds %struct.physical, %struct.physical* %80, i32 0, i32 5
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = call i32 @log_SetTtyCommandMode(%struct.TYPE_10__* %82)
  %84 = load %struct.physical*, %struct.physical** %2, align 8
  %85 = getelementptr inbounds %struct.physical, %struct.physical* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = call i32 @throughput_stop(i32* %87)
  %89 = load %struct.physical*, %struct.physical** %2, align 8
  %90 = getelementptr inbounds %struct.physical, %struct.physical* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* @LogPHASE, align 4
  %94 = load %struct.physical*, %struct.physical** %2, align 8
  %95 = getelementptr inbounds %struct.physical, %struct.physical* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @throughput_log(i32* %92, i32 %93, i32 %97)
  %99 = load %struct.physical*, %struct.physical** %2, align 8
  %100 = getelementptr inbounds %struct.physical, %struct.physical* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, -1
  br i1 %102, label %103, label %120

103:                                              ; preds = %66
  %104 = load i32, i32* @LogPHASE, align 4
  %105 = load %struct.physical*, %struct.physical** %2, align 8
  %106 = getelementptr inbounds %struct.physical, %struct.physical* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.physical*, %struct.physical** %2, align 8
  %110 = getelementptr inbounds %struct.physical, %struct.physical* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %108, i64 %111)
  %113 = load %struct.physical*, %struct.physical** %2, align 8
  %114 = getelementptr inbounds %struct.physical, %struct.physical* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @SIGHUP, align 4
  %117 = call i32 @ID0kill(i64 %115, i32 %116)
  %118 = load %struct.physical*, %struct.physical** %2, align 8
  %119 = getelementptr inbounds %struct.physical, %struct.physical* %118, i32 0, i32 1
  store i64 -1, i64* %119, align 8
  br label %120

120:                                              ; preds = %103, %66
  %121 = load i32, i32* %3, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.physical*, %struct.physical** %2, align 8
  %125 = getelementptr inbounds %struct.physical, %struct.physical* %124, i32 0, i32 5
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @bundle_setsid(i32 %128, i32 0)
  br label %130

130:                                              ; preds = %123, %120
  %131 = load %struct.physical*, %struct.physical** %2, align 8
  %132 = getelementptr inbounds %struct.physical, %struct.physical* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 47
  br i1 %137, label %138, label %158

138:                                              ; preds = %130
  %139 = trunc i64 %9 to i32
  %140 = load i8*, i8** @_PATH_VARRUN, align 8
  %141 = load %struct.physical*, %struct.physical** %2, align 8
  %142 = getelementptr inbounds %struct.physical, %struct.physical* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %11, i32 %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %140, i8* %144)
  %146 = call i32 @ID0unlink(i8* %11)
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %157

148:                                              ; preds = %138
  %149 = load i32, i32* @LogALERT, align 4
  %150 = load %struct.physical*, %struct.physical** %2, align 8
  %151 = getelementptr inbounds %struct.physical, %struct.physical* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @errno, align 4
  %155 = call i32 @strerror(i32 %154)
  %156 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %153, i8* %11, i32 %155)
  br label %157

157:                                              ; preds = %148, %138
  br label %158

158:                                              ; preds = %157, %130
  %159 = load %struct.physical*, %struct.physical** %2, align 8
  %160 = call i32 @physical_Unlock(%struct.physical* %159)
  %161 = load %struct.physical*, %struct.physical** %2, align 8
  %162 = getelementptr inbounds %struct.physical, %struct.physical* %161, i32 0, i32 3
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = icmp ne %struct.TYPE_8__* %163, null
  br i1 %164, label %165, label %180

165:                                              ; preds = %158
  %166 = load %struct.physical*, %struct.physical** %2, align 8
  %167 = getelementptr inbounds %struct.physical, %struct.physical* %166, i32 0, i32 3
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32 (%struct.physical*)*, i32 (%struct.physical*)** %169, align 8
  %171 = icmp ne i32 (%struct.physical*)* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %165
  %173 = load %struct.physical*, %struct.physical** %2, align 8
  %174 = getelementptr inbounds %struct.physical, %struct.physical* %173, i32 0, i32 3
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32 (%struct.physical*)*, i32 (%struct.physical*)** %176, align 8
  %178 = load %struct.physical*, %struct.physical** %2, align 8
  %179 = call i32 %177(%struct.physical* %178)
  br label %180

180:                                              ; preds = %172, %165, %158
  %181 = load %struct.physical*, %struct.physical** %2, align 8
  %182 = getelementptr inbounds %struct.physical, %struct.physical* %181, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %182, align 8
  %183 = load %struct.physical*, %struct.physical** %2, align 8
  %184 = getelementptr inbounds %struct.physical, %struct.physical* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.physical*, %struct.physical** %2, align 8
  %188 = getelementptr inbounds %struct.physical, %struct.physical* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i8* %186, i8** %189, align 8
  %190 = load %struct.physical*, %struct.physical** %2, align 8
  %191 = getelementptr inbounds %struct.physical, %struct.physical* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  store i8 0, i8* %193, align 1
  store i32 0, i32* %7, align 4
  br label %194

194:                                              ; preds = %180, %16
  %195 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %7, align 4
  switch i32 %196, label %198 [
    i32 0, label %197
    i32 1, label %197
  ]

197:                                              ; preds = %194, %194
  ret void

198:                                              ; preds = %194
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #2

declare dso_local i32 @physical_StopDeviceTimer(%struct.physical*) #2

declare dso_local i32 @memset(%struct.utmpx*, i32, i32) #2

declare dso_local i32 @gettimeofday(i32*, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i64 @getpid(...) #2

declare dso_local i32 @ID0logout(%struct.utmpx*) #2

declare dso_local i64 @tcgetpgrp(i32) #2

declare dso_local i64 @getpgrp(...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @log_SetTtyCommandMode(%struct.TYPE_10__*) #2

declare dso_local i32 @throughput_stop(i32*) #2

declare dso_local i32 @throughput_log(i32*, i32, i32) #2

declare dso_local i32 @ID0kill(i64, i32) #2

declare dso_local i32 @bundle_setsid(i32, i32) #2

declare dso_local i32 @ID0unlink(i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @physical_Unlock(%struct.physical*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
