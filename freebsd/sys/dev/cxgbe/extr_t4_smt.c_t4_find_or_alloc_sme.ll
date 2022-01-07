; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_smt.c_t4_find_or_alloc_sme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_smt.c_t4_find_or_alloc_sme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smt_entry = type { i64, i32, i32 }
%struct.smt_data = type { i64, %struct.smt_entry*, i32 }

@RA_WLOCKED = common dso_local global i32 0, align 4
@SMT_STATE_SWITCHING = common dso_local global i64 0, align 8
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@SMT_STATE_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smt_entry* @t4_find_or_alloc_sme(%struct.smt_data* %0, i32* %1) #0 {
  %3 = alloca %struct.smt_entry*, align 8
  %4 = alloca %struct.smt_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smt_entry*, align 8
  %7 = alloca %struct.smt_entry*, align 8
  %8 = alloca %struct.smt_entry*, align 8
  store %struct.smt_data* %0, %struct.smt_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.smt_entry* null, %struct.smt_entry** %8, align 8
  %9 = load %struct.smt_data*, %struct.smt_data** %4, align 8
  %10 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %9, i32 0, i32 2
  %11 = load i32, i32* @RA_WLOCKED, align 4
  %12 = call i32 @rw_assert(i32* %10, i32 %11)
  %13 = load %struct.smt_data*, %struct.smt_data** %4, align 8
  %14 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %13, i32 0, i32 1
  %15 = load %struct.smt_entry*, %struct.smt_entry** %14, align 8
  %16 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %15, i64 0
  store %struct.smt_entry* %16, %struct.smt_entry** %7, align 8
  %17 = load %struct.smt_data*, %struct.smt_data** %4, align 8
  %18 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %17, i32 0, i32 1
  %19 = load %struct.smt_entry*, %struct.smt_entry** %18, align 8
  %20 = load %struct.smt_data*, %struct.smt_data** %4, align 8
  %21 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %19, i64 %22
  store %struct.smt_entry* %23, %struct.smt_entry** %6, align 8
  br label %24

24:                                               ; preds = %57, %2
  %25 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %26 = load %struct.smt_entry*, %struct.smt_entry** %6, align 8
  %27 = icmp ne %struct.smt_entry* %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %24
  %29 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %30 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %29, i32 0, i32 1
  %31 = call i64 @atomic_load_acq_int(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %35 = icmp ne %struct.smt_entry* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  store %struct.smt_entry* %37, %struct.smt_entry** %8, align 8
  br label %38

38:                                               ; preds = %36, %33
  br label %56

39:                                               ; preds = %28
  %40 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %41 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SMT_STATE_SWITCHING, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %47 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %51 = call i64 @memcmp(i32 %48, i32* %49, i32 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %70

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %59 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %58, i32 1
  store %struct.smt_entry* %59, %struct.smt_entry** %7, align 8
  br label %24

60:                                               ; preds = %24
  %61 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  %62 = icmp ne %struct.smt_entry* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load %struct.smt_entry*, %struct.smt_entry** %8, align 8
  store %struct.smt_entry* %64, %struct.smt_entry** %7, align 8
  br label %66

65:                                               ; preds = %60
  store %struct.smt_entry* null, %struct.smt_entry** %3, align 8
  br label %75

66:                                               ; preds = %63
  %67 = load i64, i64* @SMT_STATE_UNUSED, align 8
  %68 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %69 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %53
  %71 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %72 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %71, i32 0, i32 1
  %73 = call i32 @atomic_add_int(i32* %72, i32 1)
  %74 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  store %struct.smt_entry* %74, %struct.smt_entry** %3, align 8
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.smt_entry*, %struct.smt_entry** %3, align 8
  ret %struct.smt_entry* %76
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
