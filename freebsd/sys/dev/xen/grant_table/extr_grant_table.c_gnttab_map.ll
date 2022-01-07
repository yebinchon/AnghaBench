; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/grant_table/extr_grant_table.c_gnttab_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_add_to_physmap = type { i32, i32, i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@XENMAPSPACE_grant_table = common dso_local global i32 0, align 4
@resume_frames = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@XENMEM_add_to_physmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"HYPERVISOR_memory_op failed to map gnttab\00", align 1
@shared = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"can't allocate VM space for grant table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gnttab_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnttab_map(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_add_to_physmap, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* @DOMID_SELF, align 4
  %11 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %5, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @XENMAPSPACE_grant_table, align 4
  %15 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %5, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @resume_frames, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = lshr i32 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %18, %19
  %21 = getelementptr inbounds %struct.xen_add_to_physmap, %struct.xen_add_to_physmap* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @XENMEM_add_to_physmap, align 4
  %23 = call i64 @HYPERVISOR_memory_op(i32 %22, %struct.xen_add_to_physmap* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %9
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %9, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** @shared, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 (...) @max_nr_grant_frames()
  %39 = mul i32 %37, %38
  %40 = call i64 @kva_alloc(i32 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @KASSERT(i64 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i64, i64* %7, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** @shared, align 8
  br label %45

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %65, %45
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %47
  %52 = load i32*, i32** @shared, align 8
  %53 = ptrtoint i32* %52 to i64
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = mul i32 %54, %55
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = load i32, i32* @resume_frames, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = mul i32 %60, %61
  %63 = add i32 %59, %62
  %64 = call i32 @pmap_kenter(i64 %58, i32 %63)
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %47

68:                                               ; preds = %47
  ret i32 0
}

declare dso_local i64 @HYPERVISOR_memory_op(i32, %struct.xen_add_to_physmap*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @kva_alloc(i32) #1

declare dso_local i32 @max_nr_grant_frames(...) #1

declare dso_local i32 @KASSERT(i64, i8*) #1

declare dso_local i32 @pmap_kenter(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
