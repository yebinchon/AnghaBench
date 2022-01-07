; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem2_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, i32, %struct.netmap_obj_pool*, i64 }
%struct.netmap_obj_pool = type { i64, i64 }

@NETMAP_MEM_FINALIZED = common dso_local global i32 0, align 4
@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_mem_d*, i64*, i32*, i32*)* @netmap_mem2_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem2_get_info(%struct.netmap_mem_d* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.netmap_mem_d*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netmap_obj_pool*, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %13 = call i32 @netmap_mem_config(%struct.netmap_mem_d* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %77

17:                                               ; preds = %4
  %18 = load i64*, i64** %6, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %60

20:                                               ; preds = %17
  %21 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %22 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NETMAP_MEM_FINALIZED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %29 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %6, align 8
  store i64 %30, i64* %31, align 8
  br label %59

32:                                               ; preds = %20
  %33 = load i64*, i64** %6, align 8
  store i64 0, i64* %33, align 8
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %55, %32
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %40 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %39, i32 0, i32 2
  %41 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %41, i64 %43
  store %struct.netmap_obj_pool* %44, %struct.netmap_obj_pool** %11, align 8
  %45 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %11, align 8
  %46 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %11, align 8
  %49 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 %47, %50
  %52 = load i64*, i64** %6, align 8
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %38
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %34

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %27
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %65 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %73 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %16
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @netmap_mem_config(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
