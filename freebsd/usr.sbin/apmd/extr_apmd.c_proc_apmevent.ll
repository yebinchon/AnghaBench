; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_proc_apmevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/apmd/extr_apmd.c_proc_apmevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.apm_event_info = type { i64, i32 }

@APMIO_NEXTEVENT = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"apmevent %04x index %d\0A\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"apm event: %s\00", align 1
@events = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_apmevent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apm_event_info, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @APMIO_NEXTEVENT, align 4
  %8 = call i64 @ioctl(i32 %6, i32 %7, %struct.apm_event_info* %3)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = load i32, i32* @LOG_NOTICE, align 4
  %12 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, i64, ...) @syslog(i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %15)
  %17 = load i32, i32* @LOG_INFO, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @events, align 8
  %19 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = call i32 (i32, i8*, i64, ...) @syslog(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = call i64 (...) @fork()
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %10
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @events, align 8
  %30 = getelementptr inbounds %struct.apm_event_info, %struct.apm_event_info* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = call i32 @exec_event_cmd(%struct.TYPE_3__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @exit(i32 %34) #3
  unreachable

36:                                               ; preds = %10
  br label %5

37:                                               ; preds = %5
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.apm_event_info*) #1

declare dso_local i32 @syslog(i32, i8*, i64, ...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @exec_event_cmd(%struct.TYPE_3__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
