; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ib_uverbs_file* }
%struct.ib_uverbs_file = type { i32, i32, %struct.TYPE_2__*, %struct.ib_uverbs_device*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_uverbs_device = type { i32, i32 }

@ib_uverbs_release_event_file = common dso_local global i32 0, align 4
@ib_uverbs_release_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ib_uverbs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca %struct.ib_uverbs_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %8, align 8
  store %struct.ib_uverbs_file* %9, %struct.ib_uverbs_file** %5, align 8
  %10 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %11 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %10, i32 0, i32 3
  %12 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %11, align 8
  store %struct.ib_uverbs_device* %12, %struct.ib_uverbs_device** %6, align 8
  %13 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %14 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %13, i32 0, i32 5
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %17 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %22 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %23 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ib_uverbs_cleanup_ucontext(%struct.ib_uverbs_file* %21, i32* %24)
  %26 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %30 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %29, i32 0, i32 5
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %32, i32 0, i32 3
  %34 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %33, align 8
  %35 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %38 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %28
  %42 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %43 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %42, i32 0, i32 4
  %44 = call i32 @list_del(i32* %43)
  %45 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %46 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %28
  %48 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %49 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %48, i32 0, i32 3
  %50 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %49, align 8
  %51 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %54 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = icmp ne %struct.TYPE_2__* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %47
  %58 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %59 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* @ib_uverbs_release_event_file, align 4
  %63 = call i32 @kref_put(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %47
  %65 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %66 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %65, i32 0, i32 1
  %67 = load i32, i32* @ib_uverbs_release_file, align 4
  %68 = call i32 @kref_put(i32* %66, i32 %67)
  %69 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %6, align 8
  %70 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %69, i32 0, i32 0
  %71 = call i32 @kobject_put(i32* %70)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_uverbs_cleanup_ucontext(%struct.ib_uverbs_file*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
