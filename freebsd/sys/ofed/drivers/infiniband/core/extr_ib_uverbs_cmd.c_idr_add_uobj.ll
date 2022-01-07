; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_idr_add_uobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c_idr_add_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }
%struct.ib_uobject = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ib_uverbs_idr_lock = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idr*, %struct.ib_uobject*)* @idr_add_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idr_add_uobj(%struct.idr* %0, %struct.ib_uobject* %1) #0 {
  %3 = alloca %struct.idr*, align 8
  %4 = alloca %struct.ib_uobject*, align 8
  %5 = alloca i32, align 4
  store %struct.idr* %0, %struct.idr** %3, align 8
  store %struct.ib_uobject* %1, %struct.ib_uobject** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @idr_preload(i32 %6)
  %8 = call i32 @spin_lock(i32* @ib_uverbs_idr_lock)
  %9 = load %struct.idr*, %struct.idr** %3, align 8
  %10 = load %struct.ib_uobject*, %struct.ib_uobject** %4, align 8
  %11 = load i32, i32* @GFP_NOWAIT, align 4
  %12 = call i32 @idr_alloc(%struct.idr* %9, %struct.ib_uobject* %10, i32 0, i32 0, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.ib_uobject*, %struct.ib_uobject** %4, align 8
  %18 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @spin_unlock(i32* @ib_uverbs_idr_lock)
  %21 = call i32 (...) @idr_preload_end()
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  ret i32 %28
}

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(%struct.idr*, %struct.ib_uobject*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
