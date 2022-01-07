; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_init_shared_info_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_hvm.c_xen_hvm_init_shared_info_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_add_to_physmap = type { i32, i32, i64, i32 }

@HYPERVISOR_shared_info = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_XENHVM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate Xen shared info page\00", align 1
@DOMID_SELF = common dso_local global i32 0, align 4
@XENMAPSPACE_shared_info = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@XENMEM_add_to_physmap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"HYPERVISOR_memory_op failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_hvm_init_shared_info_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_hvm_init_shared_info_page() #0 {
  %1 = alloca %struct.xen_add_to_physmap, align 8
  %2 = call i64 (...) @xen_pv_domain()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %34

5:                                                ; preds = %0
  %6 = load i32*, i32** @HYPERVISOR_shared_info, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = load i32, i32* @M_XENHVM, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = call i32* @malloc(i32 %9, i32 %10, i32 %11)
  store i32* %12, i32** @HYPERVISOR_shared_info, align 8
  %13 = load i32*, i32** @HYPERVISOR_shared_info, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %8
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, i32* @DOMID_SELF, align 4
  %20 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @XENMAPSPACE_shared_info, align 4
  %23 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** @HYPERVISOR_shared_info, align 8
  %25 = call i32 @vtophys(i32* %24)
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %1, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @XENMEM_add_to_physmap, align 4
  %30 = call i64 @HYPERVISOR_memory_op(i32 %29, %struct.xen_add_to_physmap* %1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %4, %32, %18
  ret void
}

declare dso_local i64 @xen_pv_domain(...) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i64 @HYPERVISOR_memory_op(i32, %struct.xen_add_to_physmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
