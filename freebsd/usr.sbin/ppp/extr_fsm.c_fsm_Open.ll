; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i8*, i32 (%struct.fsm.0*)* }
%struct.fsm.0 = type opaque
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_6__ = type { i32 (%struct.fsm*)* }

@ST_STARTING = common dso_local global i32 0, align 4
@OPEN_PASSIVE = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Entering STOPPED state for %d seconds\0A\00", align 1
@SECTICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Open(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = getelementptr inbounds %struct.fsm, %struct.fsm* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %93 [
    i32 132, label %6
    i32 134, label %29
    i32 129, label %89
    i32 130, label %89
    i32 136, label %89
    i32 135, label %89
    i32 131, label %89
    i32 133, label %90
    i32 128, label %90
  ]

6:                                                ; preds = %1
  %7 = load %struct.fsm*, %struct.fsm** %2, align 8
  %8 = load i32, i32* @ST_STARTING, align 4
  %9 = call i32 @NewState(%struct.fsm* %7, i32 %8)
  %10 = load %struct.fsm*, %struct.fsm** %2, align 8
  %11 = getelementptr inbounds %struct.fsm, %struct.fsm* %10, i32 0, i32 5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %13, align 8
  %15 = load %struct.fsm*, %struct.fsm** %2, align 8
  %16 = call i32 %14(%struct.fsm* %15)
  %17 = load %struct.fsm*, %struct.fsm** %2, align 8
  %18 = getelementptr inbounds %struct.fsm, %struct.fsm* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %20, align 8
  %22 = load %struct.fsm*, %struct.fsm** %2, align 8
  %23 = getelementptr inbounds %struct.fsm, %struct.fsm* %22, i32 0, i32 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fsm*, %struct.fsm** %2, align 8
  %28 = call i32 %21(i32 %26, %struct.fsm* %27)
  br label %93

29:                                               ; preds = %1
  %30 = load %struct.fsm*, %struct.fsm** %2, align 8
  %31 = getelementptr inbounds %struct.fsm, %struct.fsm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OPEN_PASSIVE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.fsm*, %struct.fsm** %2, align 8
  %37 = call i32 @NewState(%struct.fsm* %36, i32 129)
  br label %88

38:                                               ; preds = %29
  %39 = load %struct.fsm*, %struct.fsm** %2, align 8
  %40 = getelementptr inbounds %struct.fsm, %struct.fsm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %38
  %44 = load %struct.fsm*, %struct.fsm** %2, align 8
  %45 = getelementptr inbounds %struct.fsm, %struct.fsm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* @LogPHASE, align 4
  %50 = load %struct.fsm*, %struct.fsm** %2, align 8
  %51 = getelementptr inbounds %struct.fsm, %struct.fsm* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fsm*, %struct.fsm** %2, align 8
  %56 = getelementptr inbounds %struct.fsm, %struct.fsm* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @log_Printf(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %43
  %60 = load %struct.fsm*, %struct.fsm** %2, align 8
  %61 = call i32 @NewState(%struct.fsm* %60, i32 129)
  %62 = load %struct.fsm*, %struct.fsm** %2, align 8
  %63 = getelementptr inbounds %struct.fsm, %struct.fsm* %62, i32 0, i32 2
  %64 = call i32 @timer_Stop(%struct.TYPE_9__* %63)
  %65 = load %struct.fsm*, %struct.fsm** %2, align 8
  %66 = getelementptr inbounds %struct.fsm, %struct.fsm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SECTICKS, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load %struct.fsm*, %struct.fsm** %2, align 8
  %71 = getelementptr inbounds %struct.fsm, %struct.fsm* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.fsm*, %struct.fsm** %2, align 8
  %74 = getelementptr inbounds %struct.fsm, %struct.fsm* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i32 (%struct.fsm.0*)* bitcast (i32 (%struct.fsm*)* @FsmOpenNow to i32 (%struct.fsm.0*)*), i32 (%struct.fsm.0*)** %75, align 8
  %76 = load %struct.fsm*, %struct.fsm** %2, align 8
  %77 = bitcast %struct.fsm* %76 to i8*
  %78 = load %struct.fsm*, %struct.fsm** %2, align 8
  %79 = getelementptr inbounds %struct.fsm, %struct.fsm* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.fsm*, %struct.fsm** %2, align 8
  %82 = getelementptr inbounds %struct.fsm, %struct.fsm* %81, i32 0, i32 2
  %83 = call i32 @timer_Start(%struct.TYPE_9__* %82)
  br label %87

84:                                               ; preds = %38
  %85 = load %struct.fsm*, %struct.fsm** %2, align 8
  %86 = call i32 @FsmOpenNow(%struct.fsm* %85)
  br label %87

87:                                               ; preds = %84, %59
  br label %88

88:                                               ; preds = %87, %35
  br label %93

89:                                               ; preds = %1, %1, %1, %1, %1
  br label %93

90:                                               ; preds = %1, %1
  %91 = load %struct.fsm*, %struct.fsm** %2, align 8
  %92 = call i32 @NewState(%struct.fsm* %91, i32 128)
  br label %93

93:                                               ; preds = %1, %90, %89, %88, %6
  ret void
}

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_9__*) #1

declare dso_local i32 @FsmOpenNow(%struct.fsm*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
