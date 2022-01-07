; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_cdev_pager_free_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_cdev_pager_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@OBJT_MGTDEVICE = common dso_local global i64 0, align 8
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unmanaged %p\00", align 1
@OBJT_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdev_pager_free_page(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_12__* %5)
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OBJT_MGTDEVICE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VPO_UNMANAGED, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = bitcast %struct.TYPE_11__* %20 to i8*
  %22 = call i32 @KASSERT(i32 %19, i8* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call i32 @pmap_remove_all(%struct.TYPE_11__* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call i32 @vm_page_remove(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = call i32 @vm_page_xunbusy(%struct.TYPE_11__* %27)
  br label %40

29:                                               ; preds = %2
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OBJT_DEVICE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = call i32 @dev_pager_free_page(%struct.TYPE_12__* %36, %struct.TYPE_11__* %37)
  br label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %12
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_12__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_remove_all(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_page_remove(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_pager_free_page(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
