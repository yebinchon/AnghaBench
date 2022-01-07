; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xenpv.c_xenpv_alloc_physmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xenpv.c_xenpv_alloc_physmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@LOW_MEM_LIMIT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32*, i64)* @xenpv_alloc_physmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @xenpv_alloc_physmem(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @LOW_MEM_LIMIT, align 4
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = call %struct.resource* @bus_alloc_resource(i32 %13, i32 %14, i32* %15, i32 %16, i32 -1, i64 %17, i32 %18)
  store %struct.resource* %19, %struct.resource** %10, align 8
  %20 = load %struct.resource*, %struct.resource** %10, align 8
  %21 = icmp eq %struct.resource* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %43

23:                                               ; preds = %4
  %24 = load %struct.resource*, %struct.resource** %10, align 8
  %25 = call i64 @rman_get_start(%struct.resource* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %27, %28
  %30 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %31 = call i32 @vm_phys_fictitious_reg_range(i64 %26, i64 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SYS_RES_MEMORY, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %10, align 8
  %40 = call i32 @bus_release_resource(i32 %35, i32 %36, i32 %38, %struct.resource* %39)
  store %struct.resource* null, %struct.resource** %5, align 8
  br label %43

41:                                               ; preds = %23
  %42 = load %struct.resource*, %struct.resource** %10, align 8
  store %struct.resource* %42, %struct.resource** %5, align 8
  br label %43

43:                                               ; preds = %41, %34, %22
  %44 = load %struct.resource*, %struct.resource** %5, align 8
  ret %struct.resource* %44
}

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i64, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @vm_phys_fictitious_reg_range(i64, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
