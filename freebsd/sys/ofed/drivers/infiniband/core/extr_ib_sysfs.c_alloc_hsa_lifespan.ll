; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_alloc_hsa_lifespan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_alloc_hsa_lifespan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i8*, i32 }
%struct.hw_stats_attribute = type { %struct.attribute, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@show_stats_lifespan = common dso_local global i32 0, align 4
@set_stats_lifespan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute* (i8*, i32)* @alloc_hsa_lifespan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute* @alloc_hsa_lifespan(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.attribute*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_stats_attribute*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hw_stats_attribute* @kmalloc(i32 40, i32 %7)
  store %struct.hw_stats_attribute* %8, %struct.hw_stats_attribute** %6, align 8
  %9 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %10 = icmp ne %struct.hw_stats_attribute* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.attribute* null, %struct.attribute** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %15 = getelementptr inbounds %struct.hw_stats_attribute, %struct.hw_stats_attribute* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.attribute, %struct.attribute* %15, i32 0, i32 0
  store i8* %13, i8** %16, align 8
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = load i32, i32* @S_IRUGO, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %21 = getelementptr inbounds %struct.hw_stats_attribute, %struct.hw_stats_attribute* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.attribute, %struct.attribute* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @show_stats_lifespan, align 4
  %24 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %25 = getelementptr inbounds %struct.hw_stats_attribute, %struct.hw_stats_attribute* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @set_stats_lifespan, align 4
  %27 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %28 = getelementptr inbounds %struct.hw_stats_attribute, %struct.hw_stats_attribute* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %30 = getelementptr inbounds %struct.hw_stats_attribute, %struct.hw_stats_attribute* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %33 = getelementptr inbounds %struct.hw_stats_attribute, %struct.hw_stats_attribute* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hw_stats_attribute*, %struct.hw_stats_attribute** %6, align 8
  %35 = getelementptr inbounds %struct.hw_stats_attribute, %struct.hw_stats_attribute* %34, i32 0, i32 0
  store %struct.attribute* %35, %struct.attribute** %3, align 8
  br label %36

36:                                               ; preds = %12, %11
  %37 = load %struct.attribute*, %struct.attribute** %3, align 8
  ret %struct.attribute* %37
}

declare dso_local %struct.hw_stats_attribute* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
