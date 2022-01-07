; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_unref_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_unref_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ng_deadhook = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_unref_hook(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp eq %struct.TYPE_6__* %3, @ng_deadhook
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i64 @refcount_release(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i64 @_NG_HOOK_NODE(%struct.TYPE_6__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = call i64 @_NG_HOOK_NODE(%struct.TYPE_6__* %16)
  %18 = call i32 @_NG_NODE_UNREF(i64 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = call i32 @NG_FREE_HOOK(%struct.TYPE_6__* %20)
  br label %22

22:                                               ; preds = %5, %19, %6
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i64 @_NG_HOOK_NODE(%struct.TYPE_6__*) #1

declare dso_local i32 @_NG_NODE_UNREF(i64) #1

declare dso_local i32 @NG_FREE_HOOK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
