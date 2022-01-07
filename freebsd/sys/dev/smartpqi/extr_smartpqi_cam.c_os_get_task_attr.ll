; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_os_get_task_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_cam.c_os_get_task_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %union.ccb* }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SOP_TASK_ATTRIBUTE_SIMPLE = common dso_local global i32 0, align 4
@SOP_TASK_ATTRIBUTE_HEAD_OF_QUEUE = common dso_local global i32 0, align 4
@SOP_TASK_ATTRIBUTE_ORDERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_get_task_attr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %union.ccb*, %union.ccb** %6, align 8
  store %union.ccb* %7, %union.ccb** %3, align 8
  %8 = load i32, i32* @SOP_TASK_ATTRIBUTE_SIMPLE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %union.ccb*, %union.ccb** %3, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @SOP_TASK_ATTRIBUTE_HEAD_OF_QUEUE, align 4
  store i32 %14, i32* %4, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @SOP_TASK_ATTRIBUTE_ORDERED, align 4
  store i32 %16, i32* %4, align 4
  br label %20

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17
  %19 = load i32, i32* @SOP_TASK_ATTRIBUTE_SIMPLE, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %15, %13
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
