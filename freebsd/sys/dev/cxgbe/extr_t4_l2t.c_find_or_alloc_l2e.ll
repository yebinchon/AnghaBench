; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_find_or_alloc_l2e.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_l2t.c_find_or_alloc_l2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i64, i64, i64, i64, %struct.l2t_entry*, %struct.l2t_entry*, i32, i32 }
%struct.l2t_data = type { i64, %struct.l2t_entry* }

@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@L2T_STATE_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2t_entry* (%struct.l2t_data*, i64, i64, i64*)* @find_or_alloc_l2e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2t_entry* @find_or_alloc_l2e(%struct.l2t_data* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.l2t_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.l2t_entry*, align 8
  %11 = alloca %struct.l2t_entry*, align 8
  %12 = alloca %struct.l2t_entry**, align 8
  %13 = alloca %struct.l2t_entry*, align 8
  store %struct.l2t_data* %0, %struct.l2t_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.l2t_entry* null, %struct.l2t_entry** %13, align 8
  %14 = load %struct.l2t_data*, %struct.l2t_data** %6, align 8
  %15 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %14, i32 0, i32 1
  %16 = load %struct.l2t_entry*, %struct.l2t_entry** %15, align 8
  %17 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %16, i64 0
  store %struct.l2t_entry* %17, %struct.l2t_entry** %11, align 8
  %18 = load %struct.l2t_data*, %struct.l2t_data** %6, align 8
  %19 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %18, i32 0, i32 1
  %20 = load %struct.l2t_entry*, %struct.l2t_entry** %19, align 8
  %21 = load %struct.l2t_data*, %struct.l2t_data** %6, align 8
  %22 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %20, i64 %23
  store %struct.l2t_entry* %24, %struct.l2t_entry** %10, align 8
  br label %25

25:                                               ; preds = %70, %4
  %26 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %27 = load %struct.l2t_entry*, %struct.l2t_entry** %10, align 8
  %28 = icmp ne %struct.l2t_entry* %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %31 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %30, i32 0, i32 7
  %32 = call i64 @atomic_load_acq_int(i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.l2t_entry*, %struct.l2t_entry** %13, align 8
  %36 = icmp ne %struct.l2t_entry* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  store %struct.l2t_entry* %38, %struct.l2t_entry** %13, align 8
  br label %39

39:                                               ; preds = %37, %34
  br label %69

40:                                               ; preds = %29
  %41 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %42 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %48 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %52 = call i64 @memcmp(i32 %49, i64* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %56 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %62 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  store %struct.l2t_entry* %67, %struct.l2t_entry** %5, align 8
  br label %120

68:                                               ; preds = %60, %54, %46, %40
  br label %69

69:                                               ; preds = %68, %39
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %72 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %71, i32 1
  store %struct.l2t_entry* %72, %struct.l2t_entry** %11, align 8
  br label %25

73:                                               ; preds = %25
  %74 = load %struct.l2t_entry*, %struct.l2t_entry** %13, align 8
  %75 = icmp eq %struct.l2t_entry* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store %struct.l2t_entry* null, %struct.l2t_entry** %5, align 8
  br label %120

77:                                               ; preds = %73
  %78 = load %struct.l2t_entry*, %struct.l2t_entry** %13, align 8
  store %struct.l2t_entry* %78, %struct.l2t_entry** %11, align 8
  %79 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %80 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %77
  %85 = load %struct.l2t_data*, %struct.l2t_data** %6, align 8
  %86 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %85, i32 0, i32 1
  %87 = load %struct.l2t_entry*, %struct.l2t_entry** %86, align 8
  %88 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %89 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %87, i64 %90
  %92 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %91, i32 0, i32 5
  store %struct.l2t_entry** %92, %struct.l2t_entry*** %12, align 8
  br label %93

93:                                               ; preds = %110, %84
  %94 = load %struct.l2t_entry**, %struct.l2t_entry*** %12, align 8
  %95 = load %struct.l2t_entry*, %struct.l2t_entry** %94, align 8
  %96 = icmp ne %struct.l2t_entry* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.l2t_entry**, %struct.l2t_entry*** %12, align 8
  %99 = load %struct.l2t_entry*, %struct.l2t_entry** %98, align 8
  %100 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %101 = icmp eq %struct.l2t_entry* %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %104 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %103, i32 0, i32 4
  %105 = load %struct.l2t_entry*, %struct.l2t_entry** %104, align 8
  %106 = load %struct.l2t_entry**, %struct.l2t_entry*** %12, align 8
  store %struct.l2t_entry* %105, %struct.l2t_entry** %106, align 8
  %107 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %108 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %107, i32 0, i32 4
  store %struct.l2t_entry* null, %struct.l2t_entry** %108, align 8
  br label %114

109:                                              ; preds = %97
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.l2t_entry**, %struct.l2t_entry*** %12, align 8
  %112 = load %struct.l2t_entry*, %struct.l2t_entry** %111, align 8
  %113 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %112, i32 0, i32 4
  store %struct.l2t_entry** %113, %struct.l2t_entry*** %12, align 8
  br label %93

114:                                              ; preds = %102, %93
  br label %115

115:                                              ; preds = %114, %77
  %116 = load i64, i64* @L2T_STATE_UNUSED, align 8
  %117 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %118 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  store %struct.l2t_entry* %119, %struct.l2t_entry** %5, align 8
  br label %120

120:                                              ; preds = %115, %76, %66
  %121 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  ret %struct.l2t_entry* %121
}

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i64 @memcmp(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
