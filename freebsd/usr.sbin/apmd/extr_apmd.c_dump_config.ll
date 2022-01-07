; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_dump_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_dump_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.event_cmd* }
%struct.event_cmd = type { i8*, %struct.TYPE_3__*, %struct.event_cmd* }
%struct.TYPE_3__ = type { i32 (%struct.event_cmd*, i32)* }
%struct.battery_watch_event = type { i32, i64, i64, %struct.event_cmd*, %struct.battery_watch_event* }

@EVENT_MAX = common dso_local global i32 0, align 4
@events = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"apm_event %s {\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@battery_watch_list = common dso_local global %struct.battery_watch_event* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"apm_battery %d%s %s {\0A\00", align 1
@BATTERY_PERCENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@BATTERY_CHARGING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"discharging\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_config() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.battery_watch_event*, align 8
  %3 = alloca %struct.event_cmd*, align 8
  %4 = alloca %struct.event_cmd*, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %61, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @EVENT_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @events, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.event_cmd*, %struct.event_cmd** %14, align 8
  store %struct.event_cmd* %15, %struct.event_cmd** %3, align 8
  %16 = icmp ne %struct.event_cmd* %15, null
  br i1 %16, label %17, label %60

17:                                               ; preds = %9
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @events, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %53, %17
  %27 = load %struct.event_cmd*, %struct.event_cmd** %3, align 8
  %28 = icmp ne %struct.event_cmd* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load %struct.event_cmd*, %struct.event_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.event_cmd*, %struct.event_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.event_cmd*, i32)*, i32 (%struct.event_cmd*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.event_cmd*, i32)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load %struct.event_cmd*, %struct.event_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.event_cmd*, i32)*, i32 (%struct.event_cmd*, i32)** %45, align 8
  %47 = load %struct.event_cmd*, %struct.event_cmd** %3, align 8
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 %46(%struct.event_cmd* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %29
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50
  %54 = load %struct.event_cmd*, %struct.event_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %54, i32 0, i32 2
  %56 = load %struct.event_cmd*, %struct.event_cmd** %55, align 8
  store %struct.event_cmd* %56, %struct.event_cmd** %3, align 8
  br label %26

57:                                               ; preds = %26
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %9
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %5

64:                                               ; preds = %5
  %65 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  store %struct.battery_watch_event* %65, %struct.battery_watch_event** %2, align 8
  br label %66

66:                                               ; preds = %126, %64
  %67 = load %struct.battery_watch_event*, %struct.battery_watch_event** %2, align 8
  %68 = icmp ne %struct.battery_watch_event* %67, null
  br i1 %68, label %69, label %130

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = load %struct.battery_watch_event*, %struct.battery_watch_event** %2, align 8
  %72 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.battery_watch_event*, %struct.battery_watch_event** %2, align 8
  %75 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BATTERY_PERCENT, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %81 = load %struct.battery_watch_event*, %struct.battery_watch_event** %2, align 8
  %82 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @BATTERY_CHARGING, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %73, i8* %80, i8* %87)
  %89 = load %struct.battery_watch_event*, %struct.battery_watch_event** %2, align 8
  %90 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %89, i32 0, i32 3
  %91 = load %struct.event_cmd*, %struct.event_cmd** %90, align 8
  store %struct.event_cmd* %91, %struct.event_cmd** %4, align 8
  br label %92

92:                                               ; preds = %119, %69
  %93 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %94 = icmp ne %struct.event_cmd* %93, null
  br i1 %94, label %95, label %123

95:                                               ; preds = %92
  %96 = load i32, i32* @stderr, align 4
  %97 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %98 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  %101 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %102 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32 (%struct.event_cmd*, i32)*, i32 (%struct.event_cmd*, i32)** %104, align 8
  %106 = icmp ne i32 (%struct.event_cmd*, i32)* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %108, i32 0, i32 1
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32 (%struct.event_cmd*, i32)*, i32 (%struct.event_cmd*, i32)** %111, align 8
  %113 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 %112(%struct.event_cmd* %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %95
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116
  %120 = load %struct.event_cmd*, %struct.event_cmd** %4, align 8
  %121 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %120, i32 0, i32 2
  %122 = load %struct.event_cmd*, %struct.event_cmd** %121, align 8
  store %struct.event_cmd* %122, %struct.event_cmd** %4, align 8
  br label %92

123:                                              ; preds = %92
  %124 = load i32, i32* @stderr, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123
  %127 = load %struct.battery_watch_event*, %struct.battery_watch_event** %2, align 8
  %128 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %127, i32 0, i32 4
  %129 = load %struct.battery_watch_event*, %struct.battery_watch_event** %128, align 8
  store %struct.battery_watch_event* %129, %struct.battery_watch_event** %2, align 8
  br label %66

130:                                              ; preds = %66
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
