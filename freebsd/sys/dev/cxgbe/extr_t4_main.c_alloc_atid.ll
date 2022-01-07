; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_alloc_atid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_alloc_atid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.tid_info }
%struct.tid_info = type { i32, i32, %union.aopen_entry*, %union.aopen_entry* }
%union.aopen_entry = type { i8* }

@M_TID_TID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_atid(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tid_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.aopen_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.tid_info* %9, %struct.tid_info** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %11 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 2
  %15 = load %union.aopen_entry*, %union.aopen_entry** %14, align 8
  %16 = icmp ne %union.aopen_entry* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 2
  %20 = load %union.aopen_entry*, %union.aopen_entry** %19, align 8
  store %union.aopen_entry* %20, %union.aopen_entry** %7, align 8
  %21 = load %union.aopen_entry*, %union.aopen_entry** %7, align 8
  %22 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %23 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %22, i32 0, i32 3
  %24 = load %union.aopen_entry*, %union.aopen_entry** %23, align 8
  %25 = ptrtoint %union.aopen_entry* %21 to i64
  %26 = ptrtoint %union.aopen_entry* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @M_TID_TID, align 4
  %32 = icmp sle i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load %union.aopen_entry*, %union.aopen_entry** %7, align 8
  %36 = bitcast %union.aopen_entry* %35 to %union.aopen_entry**
  %37 = load %union.aopen_entry*, %union.aopen_entry** %36, align 8
  %38 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %39 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %38, i32 0, i32 2
  store %union.aopen_entry* %37, %union.aopen_entry** %39, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load %union.aopen_entry*, %union.aopen_entry** %7, align 8
  %42 = bitcast %union.aopen_entry* %41 to i8**
  store i8* %40, i8** %42, align 8
  %43 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %44 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %17, %2
  %48 = load %struct.tid_info*, %struct.tid_info** %5, align 8
  %49 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %48, i32 0, i32 0
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
