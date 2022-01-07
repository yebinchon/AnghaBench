; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/balloon/extr_balloon.c_decrease_reservation.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/balloon/extr_balloon.c_decrease_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.xen_memory_reservation = type { i64, i32, i32, i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@balloon_mutex = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@frame_list = common dso_local global i32* null, align 8
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ballooned_pages = common dso_local global i32 0, align 4
@plinks = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@bs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@XENMEM_decrease_reservation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"HYPERVISOR_memory_op failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @decrease_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrease_reservation(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_memory_reservation, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %5, align 4
  %8 = bitcast %struct.xen_memory_reservation* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %7, i32 0, i32 2
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
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %27 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_8__* @vm_page_alloc(i32* null, i32 0, i32 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %4, align 8
  %32 = icmp eq %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* %3, align 8
  store i64 %34, i64* %2, align 8
  store i32 1, i32* %5, align 4
  br label %61

35:                                               ; preds = %25
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PG_ZERO, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i32 @pmap_zero_page(%struct.TYPE_8__* %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__* %46)
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load i32*, i32** @frame_list, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @plinks, i32 0, i32 0), align 4
  %55 = call i32 @TAILQ_INSERT_HEAD(i32* @ballooned_pages, %struct.TYPE_8__* %53, i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bs, i32 0, i32 1), align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bs, i32 0, i32 1), align 8
  br label %58

58:                                               ; preds = %45
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %21

61:                                               ; preds = %33, %21
  %62 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %7, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** @frame_list, align 8
  %65 = call i32 @set_xen_guest_handle(i32 %63, i32* %64)
  %66 = load i64, i64* %2, align 8
  %67 = getelementptr inbounds %struct.xen_memory_reservation, %struct.xen_memory_reservation* %7, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* @XENMEM_decrease_reservation, align 4
  %69 = call i32 @HYPERVISOR_memory_op(i32 %68, %struct.xen_memory_reservation* %7)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %2, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @KASSERT(i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %76 = load i64, i64* %2, align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bs, i32 0, i32 0), align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @bs, i32 0, i32 0), align 8
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mtx_assert(i32*, i32) #2

declare dso_local i64 @nitems(i32*) #2

declare dso_local %struct.TYPE_8__* @vm_page_alloc(i32*, i32, i32) #2

declare dso_local i32 @pmap_zero_page(%struct.TYPE_8__*) #2

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__*) #2

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #2

declare dso_local i32 @HYPERVISOR_memory_op(i32, %struct.xen_memory_reservation*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
