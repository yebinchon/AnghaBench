; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_NewState.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_NewState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, i8*, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: State change %s --> %s\0A\00", align 1
@ST_STOPPED = common dso_local global i32 0, align 4
@TIMER_RUNNING = common dso_local global i64 0, align 8
@ST_INITIAL = common dso_local global i32 0, align 4
@ST_OPENED = common dso_local global i32 0, align 4
@StoppedTimeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, i32)* @NewState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NewState(%struct.fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca i32, align 4
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.fsm*, %struct.fsm** %3, align 8
  %6 = getelementptr inbounds %struct.fsm, %struct.fsm* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.fsm*, %struct.fsm** %3, align 8
  %9 = getelementptr inbounds %struct.fsm, %struct.fsm* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fsm*, %struct.fsm** %3, align 8
  %14 = getelementptr inbounds %struct.fsm, %struct.fsm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @State2Nam(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @State2Nam(i32 %17)
  %19 = call i32 @log_Printf(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %18)
  %20 = load %struct.fsm*, %struct.fsm** %3, align 8
  %21 = getelementptr inbounds %struct.fsm, %struct.fsm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ST_STOPPED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.fsm*, %struct.fsm** %3, align 8
  %27 = getelementptr inbounds %struct.fsm, %struct.fsm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TIMER_RUNNING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.fsm*, %struct.fsm** %3, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 1
  %35 = call i32 @timer_Stop(%struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %32, %25, %2
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.fsm*, %struct.fsm** %3, align 8
  %39 = getelementptr inbounds %struct.fsm, %struct.fsm* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ST_INITIAL, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ST_STOPPED, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @ST_OPENED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47, %43
  %52 = load %struct.fsm*, %struct.fsm** %3, align 8
  %53 = getelementptr inbounds %struct.fsm, %struct.fsm* %52, i32 0, i32 2
  %54 = call i32 @timer_Stop(%struct.TYPE_5__* %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @ST_STOPPED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %51
  %59 = load %struct.fsm*, %struct.fsm** %3, align 8
  %60 = getelementptr inbounds %struct.fsm, %struct.fsm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.fsm*, %struct.fsm** %3, align 8
  %66 = getelementptr inbounds %struct.fsm, %struct.fsm* %65, i32 0, i32 1
  %67 = call i32 @timer_Stop(%struct.TYPE_5__* %66)
  %68 = load i32, i32* @StoppedTimeout, align 4
  %69 = load %struct.fsm*, %struct.fsm** %3, align 8
  %70 = getelementptr inbounds %struct.fsm, %struct.fsm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load %struct.fsm*, %struct.fsm** %3, align 8
  %73 = bitcast %struct.fsm* %72 to i8*
  %74 = load %struct.fsm*, %struct.fsm** %3, align 8
  %75 = getelementptr inbounds %struct.fsm, %struct.fsm* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load %struct.fsm*, %struct.fsm** %3, align 8
  %78 = getelementptr inbounds %struct.fsm, %struct.fsm* %77, i32 0, i32 1
  %79 = call i32 @timer_Start(%struct.TYPE_5__* %78)
  br label %80

80:                                               ; preds = %64, %58, %51
  br label %81

81:                                               ; preds = %80, %47
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @State2Nam(i32) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_5__*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
