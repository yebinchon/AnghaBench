; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_nm_mem_assign_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_nm_mem_assign_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { i32, i32 }
%struct.device = type { i32 }

@netmap_debug = common dso_local global i32 0, align 4
@NM_DEBUG_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"iommu_group %d\00", align 1
@netmap_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"iommu group mismatch: %u vs %u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_mem_d*, %struct.device*)* @nm_mem_assign_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_mem_assign_group(%struct.netmap_mem_d* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.netmap_mem_d*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i32 @nm_iommu_group_id(%struct.device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @netmap_debug, align 4
  %10 = load i32, i32* @NM_DEBUG_MEM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @nm_prinf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %18 = call i32 @NMA_LOCK(%struct.netmap_mem_d* %17)
  %19 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %20 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %26 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %29 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i64, i64* @netmap_verbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %38 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %5, align 4
  %44 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %45 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %48 = call i32 @NMA_UNLOCK(%struct.netmap_mem_d* %47)
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @nm_iommu_group_id(%struct.device*) #1

declare dso_local i32 @nm_prinf(i8*, i32) #1

declare dso_local i32 @NMA_LOCK(%struct.netmap_mem_d*) #1

declare dso_local i32 @nm_prerr(i8*, i32, i32) #1

declare dso_local i32 @NMA_UNLOCK(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
