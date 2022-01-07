; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_swrun_OS_get_proc_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_swrun_OS_get_proc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }

@SRS_INVALID = common dso_local global i32 0, align 4
@SRS_NOT_RUNNABLE = common dso_local global i32 0, align 4
@SRS_RUNNABLE = common dso_local global i32 0, align 4
@SRS_RUNNING = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown process state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kinfo_proc*)* @swrun_OS_get_proc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swrun_OS_get_proc_status(%struct.kinfo_proc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kinfo_proc*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %3, align 8
  %4 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %5 = icmp ne %struct.kinfo_proc* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %9 = icmp eq %struct.kinfo_proc* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @SRS_INVALID, align 4
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %14 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %24 [
    i32 130, label %16
    i32 129, label %18
    i32 133, label %18
    i32 131, label %18
    i32 128, label %20
    i32 134, label %22
    i32 132, label %22
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @SRS_NOT_RUNNABLE, align 4
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %12, %12, %12
  %19 = load i32, i32* @SRS_RUNNABLE, align 4
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %12
  %21 = load i32, i32* @SRS_INVALID, align 4
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %12, %12
  %23 = load i32, i32* @SRS_RUNNING, align 4
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %12
  %25 = load i32, i32* @LOG_ERR, align 4
  %26 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %27 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @syslog(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @SRS_INVALID, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %22, %20, %18, %16, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
