; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xenpv.c_xenpv_free_physmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xenpv.c_xenpv_free_physmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*)* @xenpv_free_physmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenpv_free_physmem(i32 %0, i32 %1, i32 %2, %struct.resource* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.resource* %3, %struct.resource** %8, align 8
  %11 = load %struct.resource*, %struct.resource** %8, align 8
  %12 = call i64 @rman_get_start(%struct.resource* %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.resource*, %struct.resource** %8, align 8
  %14 = call i64 @rman_get_size(%struct.resource* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @vm_phys_fictitious_unreg_range(i64 %15, i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SYS_RES_MEMORY, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = call i32 @bus_release_resource(i32 %20, i32 %21, i32 %22, %struct.resource* %23)
  ret i32 %24
}

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @vm_phys_fictitious_unreg_range(i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
