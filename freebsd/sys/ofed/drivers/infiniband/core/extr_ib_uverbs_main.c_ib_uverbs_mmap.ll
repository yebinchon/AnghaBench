; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vm_area_struct = type { i32 }
%struct.ib_device = type { i32 (i32, %struct.vm_area_struct*)* }

@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @ib_uverbs_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %10, align 8
  store %struct.ib_uverbs_file* %11, %struct.ib_uverbs_file** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %13 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @srcu_read_lock(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %18 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %23 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call %struct.ib_device* @srcu_dereference(i32 %21, i32* %25)
  store %struct.ib_device* %26, %struct.ib_device** %6, align 8
  %27 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %28 = icmp ne %struct.ib_device* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %50

32:                                               ; preds = %2
  %33 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %34 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %42 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %41, i32 0, i32 0
  %43 = load i32 (i32, %struct.vm_area_struct*)*, i32 (i32, %struct.vm_area_struct*)** %42, align 8
  %44 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %45 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %48 = call i32 %43(i32 %46, %struct.vm_area_struct* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %40, %37
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %52 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @srcu_read_unlock(i32* %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.ib_device* @srcu_dereference(i32, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
