; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c___idr_get_uobj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_cmd.c___idr_get_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uobject = type { i32, %struct.ib_ucontext* }
%struct.idr = type { i32 }
%struct.ib_ucontext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_uobject* (%struct.idr*, i32, %struct.ib_ucontext*)* @__idr_get_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_uobject* @__idr_get_uobj(%struct.idr* %0, i32 %1, %struct.ib_ucontext* %2) #0 {
  %4 = alloca %struct.idr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_uobject*, align 8
  store %struct.idr* %0, %struct.idr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_ucontext* %2, %struct.ib_ucontext** %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.idr*, %struct.idr** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ib_uobject* @idr_find(%struct.idr* %9, i32 %10)
  store %struct.ib_uobject* %11, %struct.ib_uobject** %7, align 8
  %12 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %13 = icmp ne %struct.ib_uobject* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %16 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %15, i32 0, i32 1
  %17 = load %struct.ib_ucontext*, %struct.ib_ucontext** %16, align 8
  %18 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %19 = icmp eq %struct.ib_ucontext* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  %22 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %21, i32 0, i32 0
  %23 = call i32 @kref_get(i32* %22)
  br label %25

24:                                               ; preds = %14
  store %struct.ib_uobject* null, %struct.ib_uobject** %7, align 8
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %3
  %27 = call i32 (...) @rcu_read_unlock()
  %28 = load %struct.ib_uobject*, %struct.ib_uobject** %7, align 8
  ret %struct.ib_uobject* %28
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ib_uobject* @idr_find(%struct.idr*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
