; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_destroy_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_destroy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.event_cmd* }
%struct.event_cmd = type { i32 }
%struct.battery_watch_event = type { %struct.battery_watch_event*, %struct.event_cmd* }

@EVENT_MAX = common dso_local global i32 0, align 4
@events = common dso_local global %struct.TYPE_2__* null, align 8
@apmctl_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot disable event 0x%x\00", align 1
@battery_watch_list = common dso_local global %struct.battery_watch_event* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.battery_watch_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_cmd*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %27, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @EVENT_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @events, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.event_cmd*, %struct.event_cmd** %14, align 8
  %16 = icmp ne %struct.event_cmd* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @apmctl_fd, align 4
  %20 = call i32 @write(i32 %19, i32* %3, i32 4)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %5

30:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @EVENT_MAX, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @events, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.event_cmd*, %struct.event_cmd** %40, align 8
  store %struct.event_cmd* %41, %struct.event_cmd** %4, align 8
  %42 = icmp ne %struct.event_cmd* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %45 = call i32 @free_event_cmd_list(%struct.event_cmd* %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @events, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.event_cmd* null, %struct.event_cmd** %51, align 8
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %31

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %70, %55
  %57 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  %58 = icmp ne %struct.battery_watch_event* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  %61 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %60, i32 0, i32 1
  %62 = load %struct.event_cmd*, %struct.event_cmd** %61, align 8
  %63 = call i32 @free_event_cmd_list(%struct.event_cmd* %62)
  %64 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  %65 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %64, i32 0, i32 0
  %66 = load %struct.battery_watch_event*, %struct.battery_watch_event** %65, align 8
  store %struct.battery_watch_event* %66, %struct.battery_watch_event** %2, align 8
  %67 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  %68 = call i32 @free(%struct.battery_watch_event* %67)
  %69 = load %struct.battery_watch_event*, %struct.battery_watch_event** %2, align 8
  store %struct.battery_watch_event* %69, %struct.battery_watch_event** @battery_watch_list, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  %72 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %71, i32 0, i32 0
  %73 = load %struct.battery_watch_event*, %struct.battery_watch_event** %72, align 8
  store %struct.battery_watch_event* %73, %struct.battery_watch_event** @battery_watch_list, align 8
  br label %56

74:                                               ; preds = %56
  ret void
}

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @free_event_cmd_list(%struct.event_cmd*) #1

declare dso_local i32 @free(%struct.battery_watch_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
