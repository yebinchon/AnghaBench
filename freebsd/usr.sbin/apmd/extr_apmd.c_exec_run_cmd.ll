; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_exec_run_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_exec_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_cmd = type { i32, %struct.TYPE_2__*, %struct.event_cmd* }
%struct.TYPE_2__ = type { {}* }

@verbose = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"action: %s\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"command finished with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_run_cmd(%struct.event_cmd* %0) #0 {
  %2 = alloca %struct.event_cmd*, align 8
  %3 = alloca i32, align 4
  store %struct.event_cmd* %0, %struct.event_cmd** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %6 = icmp ne %struct.event_cmd* %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %4
  %8 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.event_cmd*)**
  %13 = load i32 (%struct.event_cmd*)*, i32 (%struct.event_cmd*)** %12, align 8
  %14 = call i32 @assert(i32 (%struct.event_cmd*)* %13)
  %15 = load i64, i64* @verbose, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %7
  %18 = load i32, i32* @LOG_INFO, align 4
  %19 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @syslog(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %7
  %24 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.event_cmd*)**
  %29 = load i32 (%struct.event_cmd*)*, i32 (%struct.event_cmd*)** %28, align 8
  %30 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %31 = call i32 %29(%struct.event_cmd* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32, i32* @LOG_NOTICE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @syslog(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %43

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.event_cmd*, %struct.event_cmd** %2, align 8
  %41 = getelementptr inbounds %struct.event_cmd, %struct.event_cmd* %40, i32 0, i32 2
  %42 = load %struct.event_cmd*, %struct.event_cmd** %41, align 8
  store %struct.event_cmd* %42, %struct.event_cmd** %2, align 8
  br label %4

43:                                               ; preds = %34, %4
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i32 (%struct.event_cmd*)*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
