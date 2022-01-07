; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/balloon/extr_balloon.c_increase_reservation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/balloon/extr_balloon.c_increase_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.xen_memory_reservation = type { i64, i32, i32, i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@balloon_mutex = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@frame_list = common dso_local global i32* null, align 8
@ballooned_pages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ballooned_pages list corrupt\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@XENMEM_populate_physmap = common dso_local global i32 0, align 4
@XENMEM_decrease_reservation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"HYPERVISOR_memory_op failed\00", align 1
@bs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to get ballooned page\00", align 1
@XENFEAT_auto_translated_physmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"auto translated physmap but mapping is valid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @increase_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @increase_reservation(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xen_memory_reservation, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = bitcast %struct.xen_memory_reservation* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %6, i32 0, i32 2
  %10 = load i32, i32* @DOMID_SELF, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* @balloon_mutex, i32 %11)
  %13 = load i64, i64* %2, align 8
  %14 = load i32*, i32** @frame_list, align 8
  %15 = call i64 @nitems(i32* %14)
  %16 = icmp ugt i64 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** @frame_list, align 8
  %19 = call i64 @nitems(i32* %18)
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = call i32* @TAILQ_FIRST(i32* @ballooned_pages)
  store i32* %21, i32** %4, align 8
  store i64 0, i64* %3, align 8
  br label %22

22:                                               ; preds = %38, %20
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @VM_PAGE_TO_PHYS(i32* %31)
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = load i32*, i32** @frame_list, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @plinks, i32 0, i32 0), align 4
  %43 = call i32* @TAILQ_NEXT(i32* %41, i32 %42)
  store i32* %43, i32** %4, align 8
  br label %22

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** @frame_list, align 8
  %48 = call i32 @set_xen_guest_handle(i32 %46, i32* %47)
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %6, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* @XENMEM_populate_physmap, align 4
  %52 = call i8* @HYPERVISOR_memory_op(i32 %51, %struct.xen_memory_reservation* %6)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %2, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %44
  %58 = load i64, i64* %5, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %6, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* @XENMEM_decrease_reservation, align 4
  %64 = call i8* @HYPERVISOR_memory_op(i32 %63, %struct.xen_memory_reservation* %6)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @KASSERT(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %60, %57
  %73 = load i64, i64* %5, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 0), align 8
  %77 = load i64, i64* %5, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 2), align 8
  %80 = sub nsw i64 %78, %79
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 3), align 8
  br label %81

81:                                               ; preds = %75, %72
  br label %110

82:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %83

83:                                               ; preds = %103, %82
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* %2, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = call i32* @TAILQ_FIRST(i32* @ballooned_pages)
  store i32* %88, i32** %4, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i32 @KASSERT(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @plinks, i32 0, i32 0), align 4
  %95 = call i32 @TAILQ_REMOVE(i32* @ballooned_pages, i32* %93, i32 %94)
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 1), align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 1), align 8
  %98 = load i32, i32* @XENFEAT_auto_translated_physmap, align 4
  %99 = call i32 @xen_feature(i32 %98)
  %100 = call i32 @KASSERT(i32 %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @vm_page_free(i32* %101)
  br label %103

103:                                              ; preds = %87
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %3, align 8
  br label %83

106:                                              ; preds = %83
  %107 = load i64, i64* %2, align 8
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 0), align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bs, i32 0, i32 0), align 8
  br label %110

110:                                              ; preds = %106, %81
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mtx_assert(i32*, i32) #2

declare dso_local i64 @nitems(i32*) #2

declare dso_local i32* @TAILQ_FIRST(i32*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #2

declare dso_local i32* @TAILQ_NEXT(i32*, i32) #2

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #2

declare dso_local i8* @HYPERVISOR_memory_op(i32, %struct.xen_memory_reservation*) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, i32*, i32) #2

declare dso_local i32 @xen_feature(i32) #2

declare dso_local i32 @vm_page_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
