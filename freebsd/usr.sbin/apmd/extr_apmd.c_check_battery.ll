; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_check_battery.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_check_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.battery_watch_event = type { i32, i64, i32, i32, i64, %struct.battery_watch_event* }
%struct.apm_info = type { i32, i64 }

@check_battery.first_time = internal global i32 1, align 4
@check_battery.last_state = internal global i32 0, align 4
@battery_watch_list = common dso_local global %struct.battery_watch_event* null, align 8
@apmnorm_fd = common dso_local global i32 0, align 4
@APMIO_GETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot check battery state.\00", align 1
@AC_POWER_STATE = common dso_local global i32 0, align 4
@soft_power_state_change = common dso_local global i64 0, align 8
@events = common dso_local global i32* null, align 8
@PMEV_POWERSTATECHANGE = common dso_local global i64 0, align 8
@BATTERY_PERCENT = common dso_local global i64 0, align 8
@BATTERY_MINUTES = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Caught battery event: %s, %d%s\00", align 1
@BATTERY_CHARGING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"discharging\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" minutes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_battery() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.apm_info, align 8
  %3 = alloca %struct.battery_watch_event*, align 8
  %4 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  %5 = icmp eq %struct.battery_watch_event* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %144

7:                                                ; preds = %0
  %8 = load i32, i32* @check_battery.first_time, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32, i32* @apmnorm_fd, align 4
  %12 = load i32, i32* @APMIO_GETINFO, align 4
  %13 = call i64 @ioctl(i32 %11, i32 %12, %struct.apm_info* %2)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32, i32* @AC_POWER_STATE, align 4
  store i32 %18, i32* @check_battery.last_state, align 4
  store i32 0, i32* @check_battery.first_time, align 4
  br label %144

19:                                               ; preds = %7
  %20 = load i32, i32* @apmnorm_fd, align 4
  %21 = load i32, i32* @APMIO_GETINFO, align 4
  %22 = call i64 @ioctl(i32 %20, i32 %21, %struct.apm_info* %2)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i32, i32* @check_battery.last_state, align 4
  %28 = load i32, i32* @AC_POWER_STATE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load i64, i64* @soft_power_state_change, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = call i64 (...) @fork()
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32*, i32** @events, align 8
  %38 = load i64, i64* @PMEV_POWERSTATECHANGE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @exec_event_cmd(i32* %39)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @exit(i32 %41) #3
  unreachable

43:                                               ; preds = %33, %30
  %44 = load i32, i32* @AC_POWER_STATE, align 4
  store i32 %44, i32* @check_battery.last_state, align 4
  %45 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  store %struct.battery_watch_event* %45, %struct.battery_watch_event** %3, align 8
  br label %46

46:                                               ; preds = %52, %43
  %47 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %48 = icmp ne %struct.battery_watch_event* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %51 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49
  %53 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %54 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %53, i32 0, i32 5
  %55 = load %struct.battery_watch_event*, %struct.battery_watch_event** %54, align 8
  store %struct.battery_watch_event* %55, %struct.battery_watch_event** %3, align 8
  br label %46

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %26
  %58 = load %struct.battery_watch_event*, %struct.battery_watch_event** @battery_watch_list, align 8
  store %struct.battery_watch_event* %58, %struct.battery_watch_event** %3, align 8
  br label %59

59:                                               ; preds = %140, %57
  %60 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %61 = icmp ne %struct.battery_watch_event* %60, null
  br i1 %61, label %62, label %144

62:                                               ; preds = %59
  %63 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %64 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AC_POWER_STATE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %139

68:                                               ; preds = %62
  %69 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %70 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %139, label %73

73:                                               ; preds = %68
  %74 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %75 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BATTERY_PERCENT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %81 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %2, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %101, label %87

87:                                               ; preds = %79, %73
  %88 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %89 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BATTERY_MINUTES, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %139

93:                                               ; preds = %87
  %94 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %95 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %2, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sdiv i32 %98, 60
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %93, %79
  %102 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %103 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = load i64, i64* @verbose, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %101
  %109 = load i32, i32* @LOG_NOTICE, align 4
  %110 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %111 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @BATTERY_CHARGING, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %117 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %118 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %121 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @BATTERY_PERCENT, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %127 = call i32 @syslog(i32 %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %116, i32 %119, i8* %126)
  br label %128

128:                                              ; preds = %108, %101
  %129 = call i64 (...) @fork()
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %133 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @exec_run_cmd(i32 %134)
  store i32 %135, i32* %1, align 4
  %136 = load i32, i32* %1, align 4
  %137 = call i32 @exit(i32 %136) #3
  unreachable

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %93, %87, %68, %62
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.battery_watch_event*, %struct.battery_watch_event** %3, align 8
  %142 = getelementptr inbounds %struct.battery_watch_event, %struct.battery_watch_event* %141, i32 0, i32 5
  %143 = load %struct.battery_watch_event*, %struct.battery_watch_event** %142, align 8
  store %struct.battery_watch_event* %143, %struct.battery_watch_event** %3, align 8
  br label %59

144:                                              ; preds = %6, %17, %59
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.apm_info*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @exec_event_cmd(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @exec_run_cmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
