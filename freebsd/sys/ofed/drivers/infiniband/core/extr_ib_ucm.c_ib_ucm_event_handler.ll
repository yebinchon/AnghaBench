; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_ucm.c_ib_ucm_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cm_id = type { %struct.ib_ucm_context* }
%struct.ib_ucm_context = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ib_cm_event = type { i32 }
%struct.ib_ucm_event = type { i32, i32, %struct.TYPE_3__, %struct.ib_cm_id*, %struct.ib_ucm_context* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cm_id*, %struct.ib_cm_event*)* @ib_ucm_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_ucm_event_handler(%struct.ib_cm_id* %0, %struct.ib_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.ib_cm_event*, align 8
  %6 = alloca %struct.ib_ucm_event*, align 8
  %7 = alloca %struct.ib_ucm_context*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_cm_id* %0, %struct.ib_cm_id** %4, align 8
  store %struct.ib_cm_event* %1, %struct.ib_cm_event** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %10 = getelementptr inbounds %struct.ib_cm_id, %struct.ib_cm_id* %9, i32 0, i32 0
  %11 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %10, align 8
  store %struct.ib_ucm_context* %11, %struct.ib_ucm_context** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_ucm_event* @kzalloc(i32 40, i32 %12)
  store %struct.ib_ucm_event* %13, %struct.ib_ucm_event** %6, align 8
  %14 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %15 = icmp ne %struct.ib_ucm_event* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %19 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %20 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %19, i32 0, i32 4
  store %struct.ib_ucm_context* %18, %struct.ib_ucm_context** %20, align 8
  %21 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %22 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %23 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %22, i32 0, i32 3
  store %struct.ib_cm_id* %21, %struct.ib_cm_id** %23, align 8
  %24 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %25 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %28 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %31 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %34 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %37 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %40 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %43 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %44 = call i32 @ib_ucm_event_process(%struct.ib_cm_event* %42, %struct.ib_ucm_event* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %17
  br label %76

48:                                               ; preds = %17
  %49 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %50 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %55 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %54, i32 0, i32 1
  %56 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %57 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = call i32 @list_add_tail(i32* %55, i32* %59)
  %61 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %62 = getelementptr inbounds %struct.ib_ucm_event, %struct.ib_ucm_event* %61, i32 0, i32 0
  %63 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %64 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %63, i32 0, i32 1
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  %66 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %67 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = call i32 @wake_up_interruptible(i32* %69)
  %71 = load %struct.ib_ucm_context*, %struct.ib_ucm_context** %7, align 8
  %72 = getelementptr inbounds %struct.ib_ucm_context, %struct.ib_ucm_context* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %3, align 4
  br label %84

76:                                               ; preds = %47
  %77 = load %struct.ib_ucm_event*, %struct.ib_ucm_event** %6, align 8
  %78 = call i32 @kfree(%struct.ib_ucm_event* %77)
  br label %79

79:                                               ; preds = %76, %16
  %80 = load %struct.ib_cm_event*, %struct.ib_cm_event** %5, align 8
  %81 = getelementptr inbounds %struct.ib_cm_event, %struct.ib_cm_event* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ib_ucm_new_cm_id(i32 %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %48
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.ib_ucm_event* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_ucm_event_process(%struct.ib_cm_event*, %struct.ib_ucm_event*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ib_ucm_event*) #1

declare dso_local i32 @ib_ucm_new_cm_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
