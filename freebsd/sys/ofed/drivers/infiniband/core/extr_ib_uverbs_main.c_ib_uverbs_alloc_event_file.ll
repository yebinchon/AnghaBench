; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_alloc_event_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_alloc_event_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ib_uverbs_event_file* }
%struct.ib_uverbs_event_file = type { i32, i32, %struct.ib_uverbs_file*, i32, i64, i32*, i32, i32, i32 }
%struct.ib_uverbs_file = type { i32, %struct.ib_uverbs_event_file*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@uverbs_event_fops = common dso_local global i32 0, align 4
@ib_uverbs_event_handler = common dso_local global i32 0, align 4
@ib_uverbs_release_event_file = common dso_local global i32 0, align 4
@ib_uverbs_release_file = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @ib_uverbs_alloc_event_file(%struct.ib_uverbs_file* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ib_uverbs_file*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_uverbs_event_file*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_uverbs_file* %0, %struct.ib_uverbs_file** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ib_uverbs_event_file* @kzalloc(i32 56, i32 %11)
  store %struct.ib_uverbs_event_file* %12, %struct.ib_uverbs_event_file** %8, align 8
  %13 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %14 = icmp ne %struct.ib_uverbs_event_file* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.file* @ERR_PTR(i32 %17)
  store %struct.file* %18, %struct.file** %4, align 8
  br label %128

19:                                               ; preds = %3
  %20 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %20, i32 0, i32 1
  %22 = call i32 @kref_init(i32* %21)
  %23 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %24 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %23, i32 0, i32 8
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %26, i32 0, i32 7
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %30 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %29, i32 0, i32 6
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %33 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %34 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %33, i32 0, i32 2
  store %struct.ib_uverbs_file* %32, %struct.ib_uverbs_file** %34, align 8
  %35 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %36 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %35, i32 0, i32 2
  %37 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %36, align 8
  %38 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %37, i32 0, i32 0
  %39 = call i32 @kref_get(i32* %38)
  %40 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %40, i32 0, i32 5
  store i32* null, i32** %41, align 8
  %42 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %43 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @FMODE_READ, align 4
  %45 = call i32 @fops_get(i32* @uverbs_event_fops)
  %46 = call %struct.file* @alloc_file(i32 %44, i32 %45)
  store %struct.file* %46, %struct.file** %9, align 8
  %47 = load %struct.file*, %struct.file** %9, align 8
  %48 = call i64 @IS_ERR(%struct.file* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %19
  br label %116

51:                                               ; preds = %19
  %52 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %53 = load %struct.file*, %struct.file** %9, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  store %struct.ib_uverbs_event_file* %52, %struct.ib_uverbs_event_file** %54, align 8
  %55 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %56 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %60, i32 0, i32 3
  %62 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %63 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @list_add_tail(i32* %61, i32* %65)
  %67 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %68 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %51
  %75 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %76 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %75, i32 0, i32 1
  %77 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %76, align 8
  %78 = call i32 @WARN_ON(%struct.ib_uverbs_event_file* %77)
  %79 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %80 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %80, i32 0, i32 1
  store %struct.ib_uverbs_event_file* %79, %struct.ib_uverbs_event_file** %81, align 8
  %82 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %83 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %82, i32 0, i32 1
  %84 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %83, align 8
  %85 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %84, i32 0, i32 1
  %86 = call i32 @kref_get(i32* %85)
  %87 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %88 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %87, i32 0, i32 2
  %89 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %90 = load i32, i32* @ib_uverbs_event_handler, align 4
  %91 = call i32 @INIT_IB_EVENT_HANDLER(i32* %88, %struct.ib_device* %89, i32 %90)
  %92 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %93 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %92, i32 0, i32 2
  %94 = call i32 @ib_register_event_handler(i32* %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %74
  br label %103

98:                                               ; preds = %74
  %99 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %100 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %51
  %102 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %102, %struct.file** %4, align 8
  br label %128

103:                                              ; preds = %97
  %104 = load %struct.file*, %struct.file** %9, align 8
  %105 = call i32 @fput(%struct.file* %104)
  %106 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %107 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %106, i32 0, i32 1
  %108 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %107, align 8
  %109 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %108, i32 0, i32 1
  %110 = load i32, i32* @ib_uverbs_release_event_file, align 4
  %111 = call i32 @kref_put(i32* %109, i32 %110)
  %112 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %5, align 8
  %113 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %112, i32 0, i32 1
  store %struct.ib_uverbs_event_file* null, %struct.ib_uverbs_event_file** %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call %struct.file* @ERR_PTR(i32 %114)
  store %struct.file* %115, %struct.file** %4, align 8
  br label %128

116:                                              ; preds = %50
  %117 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %118 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %117, i32 0, i32 2
  %119 = load %struct.ib_uverbs_file*, %struct.ib_uverbs_file** %118, align 8
  %120 = getelementptr inbounds %struct.ib_uverbs_file, %struct.ib_uverbs_file* %119, i32 0, i32 0
  %121 = load i32, i32* @ib_uverbs_release_file, align 4
  %122 = call i32 @kref_put(i32* %120, i32 %121)
  %123 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %8, align 8
  %124 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %123, i32 0, i32 1
  %125 = load i32, i32* @ib_uverbs_release_event_file, align 4
  %126 = call i32 @kref_put(i32* %124, i32 %125)
  %127 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %127, %struct.file** %4, align 8
  br label %128

128:                                              ; preds = %116, %103, %101, %15
  %129 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %129
}

declare dso_local %struct.ib_uverbs_event_file* @kzalloc(i32, i32) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.file* @alloc_file(i32, i32) #1

declare dso_local i32 @fops_get(i32*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(%struct.ib_uverbs_event_file*) #1

declare dso_local i32 @INIT_IB_EVENT_HANDLER(i32*, %struct.ib_device*, i32) #1

declare dso_local i32 @ib_register_event_handler(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
