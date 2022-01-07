; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Found.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_Found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s%s.if\00", align 1
@_PATH_VARRUN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%d\0A\00", align 1
@TUN_NAME = common dso_local global i8* null, align 8
@LogALERT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Can't create %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"physical throughput\00", align 1
@OPT_THROUGHPUT = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"%s: Connected!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*)* @physical_Found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @physical_Found(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.physical* %0, %struct.physical** %2, align 8
  %6 = load i32, i32* @PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load %struct.physical*, %struct.physical** %2, align 8
  %11 = getelementptr inbounds %struct.physical, %struct.physical* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 47
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = trunc i64 %7 to i32
  %19 = load i8*, i8** @_PATH_VARRUN, align 8
  %20 = load %struct.physical*, %struct.physical** %2, align 8
  %21 = getelementptr inbounds %struct.physical, %struct.physical* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @snprintf(i8* %9, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %23)
  %25 = call i32* @ID0fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %3, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %17
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** @TUN_NAME, align 8
  %31 = load %struct.physical*, %struct.physical** %2, align 8
  %32 = getelementptr inbounds %struct.physical, %struct.physical* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @fclose(i32* %39)
  br label %50

41:                                               ; preds = %17
  %42 = load i32, i32* @LogALERT, align 4
  %43 = load %struct.physical*, %struct.physical** %2, align 8
  %44 = getelementptr inbounds %struct.physical, %struct.physical* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %46, i8* %9, i32 %48)
  br label %50

50:                                               ; preds = %41, %28
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.physical*, %struct.physical** %2, align 8
  %53 = getelementptr inbounds %struct.physical, %struct.physical* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.physical*, %struct.physical** %2, align 8
  %57 = getelementptr inbounds %struct.physical, %struct.physical* %56, i32 0, i32 3
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = load i32, i32* @OPT_THROUGHPUT, align 4
  %62 = call i32 @Enabled(%struct.TYPE_12__* %60, i32 %61)
  %63 = call i32 @throughput_start(i32* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load %struct.physical*, %struct.physical** %2, align 8
  %65 = getelementptr inbounds %struct.physical, %struct.physical* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.physical*, %struct.physical** %2, align 8
  %69 = getelementptr inbounds %struct.physical, %struct.physical* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @LogPHASE, align 4
  %72 = load %struct.physical*, %struct.physical** %2, align 8
  %73 = getelementptr inbounds %struct.physical, %struct.physical* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32* @ID0fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @throughput_start(i32*, i8*, i32) #2

declare dso_local i32 @Enabled(%struct.TYPE_12__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
