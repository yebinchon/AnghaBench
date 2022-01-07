; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_t4_l2t_alloc_switching.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_t4_l2t_alloc_switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.adapter = type { %struct.TYPE_4__, %struct.l2t_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.l2t_data = type { i32, i32 }

@L2T_STATE_SWITCHING = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_entry* @t4_l2t_alloc_switching(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.l2t_data*, align 8
  %10 = alloca %struct.l2t_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = load %struct.l2t_data*, %struct.l2t_data** %13, align 8
  store %struct.l2t_data* %14, %struct.l2t_data** %9, align 8
  %15 = load %struct.l2t_data*, %struct.l2t_data** %9, align 8
  %16 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %15, i32 0, i32 0
  %17 = call i32 @rw_wlock(i32* %16)
  %18 = load %struct.l2t_data*, %struct.l2t_data** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.l2t_entry* @find_or_alloc_l2e(%struct.l2t_data* %18, i32 %19, i32 %20, i32* %21)
  store %struct.l2t_entry* %22, %struct.l2t_entry** %10, align 8
  %23 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %24 = icmp ne %struct.l2t_entry* %23, null
  br i1 %24, label %25, label %97

25:                                               ; preds = %4
  %26 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %27 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %26, i32 0, i32 0
  %28 = call i64 @atomic_load_acq_int(i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %78

30:                                               ; preds = %25
  %31 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %32 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %31, i32 0, i32 3
  %33 = call i32 @mtx_lock(i32* %32)
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %40 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %39, i32 0, i32 7
  store i32* %38, i32** %40, align 8
  %41 = load %struct.adapter*, %struct.adapter** %5, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %47 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @L2T_STATE_SWITCHING, align 4
  %49 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %50 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %53 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %56 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %58 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %62 = call i32 @memcpy(i32 %59, i32* %60, i32 %61)
  %63 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %64 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %63, i32 0, i32 0
  %65 = call i32 @atomic_store_rel_int(i32* %64, i32 1)
  %66 = load %struct.l2t_data*, %struct.l2t_data** %9, align 8
  %67 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %66, i32 0, i32 1
  %68 = call i32 @atomic_subtract_int(i32* %67, i32 1)
  %69 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %70 = call i32 @t4_write_l2e(%struct.l2t_entry* %69, i32 0)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %72 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %71, i32 0, i32 3
  %73 = call i32 @mtx_unlock(i32* %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %30
  store %struct.l2t_entry* null, %struct.l2t_entry** %10, align 8
  br label %77

77:                                               ; preds = %76, %30
  br label %96

78:                                               ; preds = %25
  %79 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %80 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @MPASS(i32 %84)
  %86 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %87 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @MPASS(i32 %91)
  %93 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %94 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %93, i32 0, i32 0
  %95 = call i32 @atomic_add_int(i32* %94, i32 1)
  br label %96

96:                                               ; preds = %78, %77
  br label %97

97:                                               ; preds = %96, %4
  %98 = load %struct.l2t_data*, %struct.l2t_data** %9, align 8
  %99 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %98, i32 0, i32 0
  %100 = call i32 @rw_wunlock(i32* %99)
  %101 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  ret %struct.l2t_entry* %101
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local %struct.l2t_entry* @find_or_alloc_l2e(%struct.l2t_data*, i32, i32, i32*) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @atomic_store_rel_int(i32*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @t4_write_l2e(%struct.l2t_entry*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
