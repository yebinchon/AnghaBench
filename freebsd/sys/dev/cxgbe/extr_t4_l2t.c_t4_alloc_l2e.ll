; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_t4_alloc_l2e.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_t4_alloc_l2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i64, i64, %struct.l2t_entry*, %struct.l2t_entry*, i32 }
%struct.l2t_data = type { i64, %struct.l2t_entry*, i32, %struct.l2t_entry*, i32 }

@RA_WLOCKED = common dso_local global i32 0, align 4
@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@L2T_STATE_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_entry* @t4_alloc_l2e(%struct.l2t_data* %0) #0 {
  %2 = alloca %struct.l2t_entry*, align 8
  %3 = alloca %struct.l2t_data*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.l2t_entry**, align 8
  store %struct.l2t_data* %0, %struct.l2t_data** %3, align 8
  %7 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %8 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %7, i32 0, i32 4
  %9 = load i32, i32* @RA_WLOCKED, align 4
  %10 = call i32 @rw_assert(i32* %8, i32 %9)
  %11 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %12 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %11, i32 0, i32 2
  %13 = call i64 @atomic_load_acq_int(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.l2t_entry* null, %struct.l2t_entry** %2, align 8
  br label %104

16:                                               ; preds = %1
  %17 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %18 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %17, i32 0, i32 3
  %19 = load %struct.l2t_entry*, %struct.l2t_entry** %18, align 8
  store %struct.l2t_entry* %19, %struct.l2t_entry** %5, align 8
  %20 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %21 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %20, i32 0, i32 1
  %22 = load %struct.l2t_entry*, %struct.l2t_entry** %21, align 8
  %23 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %24 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %22, i64 %25
  store %struct.l2t_entry* %26, %struct.l2t_entry** %4, align 8
  br label %27

27:                                               ; preds = %38, %16
  %28 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %29 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %30 = icmp ne %struct.l2t_entry* %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %33 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %32, i32 0, i32 4
  %34 = call i64 @atomic_load_acq_int(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %55

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %40 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %39, i32 1
  store %struct.l2t_entry* %40, %struct.l2t_entry** %5, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %43 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %42, i32 0, i32 1
  %44 = load %struct.l2t_entry*, %struct.l2t_entry** %43, align 8
  store %struct.l2t_entry* %44, %struct.l2t_entry** %5, align 8
  br label %45

45:                                               ; preds = %51, %41
  %46 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %47 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %46, i32 0, i32 4
  %48 = call i64 @atomic_load_acq_int(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %53 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %52, i32 1
  store %struct.l2t_entry* %53, %struct.l2t_entry** %5, align 8
  br label %45

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %57 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %56, i64 1
  %58 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %59 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %58, i32 0, i32 3
  store %struct.l2t_entry* %57, %struct.l2t_entry** %59, align 8
  %60 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %61 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %60, i32 0, i32 2
  %62 = call i32 @atomic_subtract_int(i32* %61, i32 1)
  %63 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %64 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %55
  %69 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %70 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %69, i32 0, i32 1
  %71 = load %struct.l2t_entry*, %struct.l2t_entry** %70, align 8
  %72 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %73 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %71, i64 %74
  %76 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %75, i32 0, i32 3
  store %struct.l2t_entry** %76, %struct.l2t_entry*** %6, align 8
  br label %77

77:                                               ; preds = %94, %68
  %78 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %79 = load %struct.l2t_entry*, %struct.l2t_entry** %78, align 8
  %80 = icmp ne %struct.l2t_entry* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %83 = load %struct.l2t_entry*, %struct.l2t_entry** %82, align 8
  %84 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %85 = icmp eq %struct.l2t_entry* %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %88 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %87, i32 0, i32 2
  %89 = load %struct.l2t_entry*, %struct.l2t_entry** %88, align 8
  %90 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  store %struct.l2t_entry* %89, %struct.l2t_entry** %90, align 8
  %91 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %92 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %91, i32 0, i32 2
  store %struct.l2t_entry* null, %struct.l2t_entry** %92, align 8
  br label %98

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %96 = load %struct.l2t_entry*, %struct.l2t_entry** %95, align 8
  %97 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %96, i32 0, i32 2
  store %struct.l2t_entry** %97, %struct.l2t_entry*** %6, align 8
  br label %77

98:                                               ; preds = %86, %77
  br label %99

99:                                               ; preds = %98, %55
  %100 = load i64, i64* @L2T_STATE_UNUSED, align 8
  %101 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %102 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  store %struct.l2t_entry* %103, %struct.l2t_entry** %2, align 8
  br label %104

104:                                              ; preds = %99, %15
  %105 = load %struct.l2t_entry*, %struct.l2t_entry** %2, align 8
  ret %struct.l2t_entry* %105
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
