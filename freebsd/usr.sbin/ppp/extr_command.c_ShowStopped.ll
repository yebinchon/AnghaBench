; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ShowStopped.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ShowStopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c" Stopped Timer:  LCP: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%ld secs\00", align 1
@SECTICKS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c", CCP: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @ShowStopped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShowStopped(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %3 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %4 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 1
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %21 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %26 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %29 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SECTICKS, align 4
  %40 = sdiv i32 %38, %39
  %41 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %24, %19
  %43 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %44 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %48 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %47, i32 0, i32 1
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %42
  %60 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %61 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %82

64:                                               ; preds = %42
  %65 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %66 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %69 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SECTICKS, align 4
  %80 = sdiv i32 %78, %79
  %81 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %64, %59
  %83 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %84 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @prompt_Printf(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @prompt_Printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
