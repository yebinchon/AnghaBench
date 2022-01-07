; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_swrun_OS_get_procs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_swrun_OS_get_procs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64 }
%struct.swrun_entry = type { i32 }

@hr_kd = common dso_local global i32 0, align 4
@KERN_PROC_ALL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"kvm_getprocs() failed: %m\00", align 1
@HR_SWRUN_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @swrun_OS_get_procs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swrun_OS_get_procs() #0 {
  %1 = alloca %struct.kinfo_proc*, align 8
  %2 = alloca %struct.kinfo_proc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.swrun_entry*, align 8
  %6 = load i32, i32* @hr_kd, align 4
  %7 = load i32, i32* @KERN_PROC_ALL, align 4
  %8 = call %struct.kinfo_proc* @kvm_getprocs(i32 %6, i32 %7, i32 0, i32* %4)
  store %struct.kinfo_proc* %8, %struct.kinfo_proc** %1, align 8
  %9 = load %struct.kinfo_proc*, %struct.kinfo_proc** %1, align 8
  %10 = icmp eq %struct.kinfo_proc* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = call i32 @syslog(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %55

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  %18 = load %struct.kinfo_proc*, %struct.kinfo_proc** %1, align 8
  store %struct.kinfo_proc* %18, %struct.kinfo_proc** %2, align 8
  br label %19

19:                                               ; preds = %50, %17
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %25 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = call %struct.swrun_entry* @swrun_entry_find_by_index(i64 %27)
  store %struct.swrun_entry* %28, %struct.swrun_entry** %5, align 8
  %29 = load %struct.swrun_entry*, %struct.swrun_entry** %5, align 8
  %30 = icmp eq %struct.swrun_entry* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %33 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call %struct.swrun_entry* @swrun_entry_create(i64 %35)
  store %struct.swrun_entry* %36, %struct.swrun_entry** %5, align 8
  %37 = load %struct.swrun_entry*, %struct.swrun_entry** %5, align 8
  %38 = icmp eq %struct.swrun_entry* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %50

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* @HR_SWRUN_FOUND, align 4
  %43 = load %struct.swrun_entry*, %struct.swrun_entry** %5, align 8
  %44 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %48 = load %struct.swrun_entry*, %struct.swrun_entry** %5, align 8
  %49 = call i32 @kinfo_proc_to_swrun_entry(%struct.kinfo_proc* %47, %struct.swrun_entry* %48)
  br label %50

50:                                               ; preds = %41, %39
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  %53 = load %struct.kinfo_proc*, %struct.kinfo_proc** %2, align 8
  %54 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %53, i32 1
  store %struct.kinfo_proc* %54, %struct.kinfo_proc** %2, align 8
  br label %19

55:                                               ; preds = %14, %19
  ret void
}

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32, i32, i32, i32*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local %struct.swrun_entry* @swrun_entry_find_by_index(i64) #1

declare dso_local %struct.swrun_entry* @swrun_entry_create(i64) #1

declare dso_local i32 @kinfo_proc_to_swrun_entry(%struct.kinfo_proc*, %struct.swrun_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
