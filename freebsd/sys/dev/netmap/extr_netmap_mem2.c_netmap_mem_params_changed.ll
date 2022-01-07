; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_params_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_params_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_params = type { i64, i64, i64, i64 }

@NETMAP_POOLS_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_obj_params*)* @netmap_mem_params_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_mem_params_changed(%struct.netmap_obj_params* %0) #0 {
  %2 = alloca %struct.netmap_obj_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.netmap_obj_params* %0, %struct.netmap_obj_params** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %61, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NETMAP_POOLS_NR, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %5
  %10 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %10, i64 %12
  %14 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %16, i64 %18
  %20 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %15, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %9
  %24 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %24, i64 %26
  %28 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %30, i64 %32
  %34 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %29, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %23, %9
  %38 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %38, i64 %40
  %42 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %44, i64 %46
  %48 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %47, i32 0, i32 0
  store i64 %43, i64* %48, align 8
  %49 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %49, i64 %51
  %53 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.netmap_obj_params*, %struct.netmap_obj_params** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %55, i64 %57
  %59 = getelementptr inbounds %struct.netmap_obj_params, %struct.netmap_obj_params* %58, i32 0, i32 2
  store i64 %54, i64* %59, align 8
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %37, %23
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %5

64:                                               ; preds = %5
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
