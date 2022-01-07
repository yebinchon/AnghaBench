; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_free_atid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_free_atid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.tid_info }
%struct.tid_info = type { i32, i32, %union.aopen_entry*, %union.aopen_entry* }
%union.aopen_entry = type { %union.aopen_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_atid(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca %union.aopen_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.tid_info* %8, %struct.tid_info** %5, align 8
  %9 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %10 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %9, i32 0, i32 3
  %11 = load %union.aopen_entry*, %union.aopen_entry** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %union.aopen_entry, %union.aopen_entry* %11, i64 %13
  store %union.aopen_entry* %14, %union.aopen_entry** %6, align 8
  %15 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %16 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 2
  %20 = load %union.aopen_entry*, %union.aopen_entry** %19, align 8
  %21 = load %union.aopen_entry*, %union.aopen_entry** %6, align 8
  %22 = bitcast %union.aopen_entry* %21 to %union.aopen_entry**
  store %union.aopen_entry* %20, %union.aopen_entry** %22, align 8
  %23 = load %union.aopen_entry*, %union.aopen_entry** %6, align 8
  %24 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %25 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %24, i32 0, i32 2
  store %union.aopen_entry* %23, %union.aopen_entry** %25, align 8
  %26 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %27 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %31 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %30, i32 0, i32 0
  %32 = call i32 @mtx_unlock(i32* %31)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
