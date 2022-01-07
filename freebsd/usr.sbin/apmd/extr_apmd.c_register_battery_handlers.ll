; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_register_battery_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_register_battery_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.battery_watch_event = type { i32, i32, i64, i32, i32, %struct.battery_watch_event* }
%struct.event_cmd = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@battery_watch_list = common dso_local global %struct.battery_watch_event* null, align 8
@BATTERY_MINUTES = common dso_local global i32 0, align 4
@BATTERY_PERCENT = common dso_local global i32 0, align 4
@BATTERY_DISCHARGING = common dso_local global i32 0, align 4
@BATTERY_CHARGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_battery_handlers(i32 %0, i32 %1, %struct.event_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_cmd*, align 8
  %8 = alloca %struct.battery_watch_event*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.event_cmd* %2, %struct.event_cmd** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 100
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %61

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @abs(i32 %13) #3
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %61

17:                                               ; preds = %12
  %18 = load %struct.event_cmd*, %struct.event_cmd** %7, align 8
  %19 = icmp ne %struct.event_cmd* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %17
  %21 = call %struct.battery_watch_event* @malloc(i32 32)
  store %struct.battery_watch_event* %21, %struct.battery_watch_event** %8, align 8
  %22 = icmp eq %struct.battery_watch_event* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  %27 = load %struct.battery_watch_event*, %struct.battery_watch_event** %8, align 8
  %28 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %27, i32 0, i32 5
  store %struct.battery_watch_event* %26, %struct.battery_watch_event** %28, align 8
  %29 = load %struct.battery_watch_event*, %struct.battery_watch_event** %8, align 8
  store %struct.battery_watch_event* %29, %struct.battery_watch_event** @battery_watch_list, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @abs(i32 %30) #3
  %32 = load %struct.battery_watch_event*, %struct.battery_watch_event** %8, align 8
  %33 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @BATTERY_MINUTES, align 4
  br label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @BATTERY_PERCENT, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.battery_watch_event*, %struct.battery_watch_event** %8, align 8
  %43 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @BATTERY_DISCHARGING, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @BATTERY_CHARGING, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.battery_watch_event*, %struct.battery_watch_event** %8, align 8
  %53 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.battery_watch_event*, %struct.battery_watch_event** %8, align 8
  %55 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.event_cmd*, %struct.event_cmd** %7, align 8
  %57 = call i32 @clone_event_cmd_list(%struct.event_cmd* %56)
  %58 = load %struct.battery_watch_event*, %struct.battery_watch_event** %8, align 8
  %59 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %17
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %16, %11
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local %struct.battery_watch_event* @malloc(i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @clone_event_cmd_list(%struct.event_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
