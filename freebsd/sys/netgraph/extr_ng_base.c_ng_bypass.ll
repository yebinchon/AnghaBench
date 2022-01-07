; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_bypass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__* }

@EINVAL = common dso_local global i32 0, align 4
@ng_deadhook = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_bypass(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (...) @TRAP_ERROR()
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = call i32 (...) @TOPOLOGY_WLOCK()
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = call i64 @NG_HOOK_NOT_VALID(%struct.TYPE_8__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = call i64 @NG_HOOK_NOT_VALID(%struct.TYPE_8__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %16
  %26 = call i32 (...) @TOPOLOGY_WUNLOCK()
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %3, align 4
  br label %56

28:                                               ; preds = %21
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store %struct.TYPE_9__* @ng_deadhook, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store %struct.TYPE_9__* @ng_deadhook, %struct.TYPE_9__** %46, align 8
  %47 = call i32 (...) @TOPOLOGY_WUNLOCK()
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = call i32 @NG_HOOK_UNREF(%struct.TYPE_8__* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = call i32 @NG_HOOK_UNREF(%struct.TYPE_8__* %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = call i32 @ng_destroy_hook(%struct.TYPE_8__* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = call i32 @ng_destroy_hook(%struct.TYPE_8__* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %28, %25, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @TRAP_ERROR(...) #1

declare dso_local i32 @TOPOLOGY_WLOCK(...) #1

declare dso_local i64 @NG_HOOK_NOT_VALID(%struct.TYPE_8__*) #1

declare dso_local i32 @TOPOLOGY_WUNLOCK(...) #1

declare dso_local i32 @NG_HOOK_UNREF(%struct.TYPE_8__*) #1

declare dso_local i32 @ng_destroy_hook(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
