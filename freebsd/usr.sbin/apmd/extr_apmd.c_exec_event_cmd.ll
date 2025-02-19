; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_exec_event_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_exec_event_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_config = type { i64, i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"canceled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_event_cmd(%struct.event_config* %0) #0 {
  %2 = alloca %struct.event_config*, align 8
  %3 = alloca i32, align 4
  store %struct.event_config* %0, %struct.event_config** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.event_config*, %struct.event_config** %2, align 8
  %5 = getelementptr inbounds %struct.event_config, %struct.event_config* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @exec_run_cmd(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.event_config*, %struct.event_config** %2, align 8
  %12 = getelementptr inbounds %struct.event_config, %struct.event_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = call i32 @syslog(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @event_cmd_reject_act(i32* null)
  br label %19

19:                                               ; preds = %15, %10, %1
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @exec_run_cmd(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @event_cmd_reject_act(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
