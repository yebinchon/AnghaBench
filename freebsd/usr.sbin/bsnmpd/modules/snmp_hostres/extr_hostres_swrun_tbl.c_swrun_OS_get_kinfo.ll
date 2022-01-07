; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_swrun_OS_get_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_swrun_OS_get_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swrun_entry = type { i32 }
%struct.kld_file_stat = type { i32, i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"kldstat() failed: %m\00", align 1
@NO_PID = common dso_local global i64 0, align 8
@HR_SWRUN_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @swrun_OS_get_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swrun_OS_get_kinfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.swrun_entry*, align 8
  %3 = alloca %struct.kld_file_stat, align 8
  %4 = call i32 @kldnext(i32 0)
  store i32 %4, i32* %1, align 4
  br label %5

5:                                                ; preds = %44, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %3, i32 0, i32 0
  store i32 16, i32* %9, align 8
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @kldstat(i32 %10, %struct.kld_file_stat* %3)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = call i32 @syslog(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %44

16:                                               ; preds = %8
  %17 = load i64, i64* @NO_PID, align 8
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %3, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %18, %20
  %22 = call %struct.swrun_entry* @swrun_entry_find_by_index(i64 %21)
  store %struct.swrun_entry* %22, %struct.swrun_entry** %2, align 8
  %23 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %24 = icmp eq %struct.swrun_entry* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load i64, i64* @NO_PID, align 8
  %27 = add nsw i64 %26, 1
  %28 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %3, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %27, %29
  %31 = call %struct.swrun_entry* @swrun_entry_create(i64 %30)
  store %struct.swrun_entry* %31, %struct.swrun_entry** %2, align 8
  %32 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %33 = icmp eq %struct.swrun_entry* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %44

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %16
  %37 = load i32, i32* @HR_SWRUN_FOUND, align 4
  %38 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %39 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %43 = call i32 @kld_file_stat_to_swrun(%struct.kld_file_stat* %3, %struct.swrun_entry* %42)
  br label %44

44:                                               ; preds = %36, %34, %13
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @kldnext(i32 %45)
  store i32 %46, i32* %1, align 4
  br label %5

47:                                               ; preds = %5
  ret void
}

declare dso_local i32 @kldnext(i32) #1

declare dso_local i64 @kldstat(i32, %struct.kld_file_stat*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local %struct.swrun_entry* @swrun_entry_find_by_index(i64) #1

declare dso_local %struct.swrun_entry* @swrun_entry_create(i64) #1

declare dso_local i32 @kld_file_stat_to_swrun(%struct.kld_file_stat*, %struct.swrun_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
