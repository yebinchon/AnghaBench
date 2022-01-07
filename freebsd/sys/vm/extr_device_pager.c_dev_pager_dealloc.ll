; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_dev_pager_dealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_dev_pager_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32)* }

@dev_pager_mtx = common dso_local global i32 0, align 4
@dev_pager_object_list = common dso_local global i32 0, align 4
@pager_object_list = common dso_local global i32 0, align 4
@OBJT_DEVICE = common dso_local global i64 0, align 8
@OBJT_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @dev_pager_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_pager_dealloc(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__* %4)
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 %12(i32 %17)
  %19 = call i32 @mtx_lock(i32* @dev_pager_mtx)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = load i32, i32* @pager_object_list, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* @dev_pager_object_list, %struct.TYPE_13__* %20, i32 %21)
  %23 = call i32 @mtx_unlock(i32* @dev_pager_mtx)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %25 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__* %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OBJT_DEVICE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %1
  br label %32

32:                                               ; preds = %39, %31
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = call i32* @TAILQ_FIRST(i32* %36)
  store i32* %37, i32** %3, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @dev_pager_free_page(%struct.TYPE_13__* %40, i32* %41)
  br label %32

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i64, i64* @OBJT_DEAD, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  ret void
}

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_13__*) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @dev_pager_free_page(%struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
