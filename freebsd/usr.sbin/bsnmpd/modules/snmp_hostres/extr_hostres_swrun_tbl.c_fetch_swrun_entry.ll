; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_fetch_swrun_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swrun_tbl.c_fetch_swrun_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swrun_entry = type { i64, i8* }
%struct.kinfo_proc = type { i32 }
%struct.kld_file_stat = type { i32 }

@NO_PID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"missing item with kid=%d\00", align 1
@SRS_INVALID = common dso_local global i64 0, align 8
@hr_kd = common dso_local global i32* null, align 8
@KERN_PROC_PID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"missing item with PID=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swrun_entry*)* @fetch_swrun_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_swrun_entry(%struct.swrun_entry* %0) #0 {
  %2 = alloca %struct.swrun_entry*, align 8
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kld_file_stat, align 4
  store %struct.swrun_entry* %0, %struct.swrun_entry** %2, align 8
  %6 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %7 = icmp ne %struct.swrun_entry* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %11 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NO_PID, align 8
  %14 = add nsw i64 %13, 1
  %15 = icmp sge i64 %12, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.kld_file_stat, %struct.kld_file_stat* %5, i32 0, i32 0
  store i32 4, i32* %17, align 4
  %18 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %19 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NO_PID, align 8
  %22 = sub nsw i64 %20, %21
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @kldstat(i64 %23, %struct.kld_file_stat* %5)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %28 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NO_PID, align 8
  %31 = sub nsw i64 %29, %30
  %32 = sub nsw i64 %31, 1
  %33 = call i32 @HRDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* @SRS_INVALID, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %37 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %41

38:                                               ; preds = %16
  %39 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %40 = call i32 @kld_file_stat_to_swrun(%struct.kld_file_stat* %5, %struct.swrun_entry* %39)
  br label %41

41:                                               ; preds = %38, %26
  br label %74

42:                                               ; preds = %1
  %43 = load i32*, i32** @hr_kd, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** @hr_kd, align 8
  %48 = load i32, i32* @KERN_PROC_PID, align 4
  %49 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %50 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %51, 1
  %53 = call %struct.kinfo_proc* @kvm_getprocs(i32* %47, i32 %48, i64 %52, i32* %4)
  store %struct.kinfo_proc* %53, %struct.kinfo_proc** %3, align 8
  %54 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %55 = icmp eq %struct.kinfo_proc* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %56, %42
  %60 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %61 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  %64 = call i32 @HRDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* @SRS_INVALID, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %68 = getelementptr inbounds %struct.swrun_entry, %struct.swrun_entry* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %73

69:                                               ; preds = %56
  %70 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %71 = load %struct.swrun_entry*, %struct.swrun_entry** %2, align 8
  %72 = call i32 @kinfo_proc_to_swrun_entry(%struct.kinfo_proc* %70, %struct.swrun_entry* %71)
  br label %73

73:                                               ; preds = %69, %59
  br label %74

74:                                               ; preds = %73, %41
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kldstat(i64, %struct.kld_file_stat*) #1

declare dso_local i32 @HRDBG(i8*, i64) #1

declare dso_local i32 @kld_file_stat_to_swrun(%struct.kld_file_stat*, %struct.swrun_entry*) #1

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32*, i32, i64, i32*) #1

declare dso_local i32 @kinfo_proc_to_swrun_entry(%struct.kinfo_proc*, %struct.swrun_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
