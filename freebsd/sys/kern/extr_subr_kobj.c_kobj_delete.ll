; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kobj.c_kobj_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kobj.c_kobj_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.malloc_type = type { i32 }

@MA_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kobj_delete(%struct.TYPE_8__* %0, %struct.malloc_type* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.malloc_type*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.malloc_type* %1, %struct.malloc_type** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load i32, i32* @MA_NOTOWNED, align 4
  %13 = call i32 @KOBJ_ASSERT(i32 %12)
  %14 = call i32 (...) @KOBJ_LOCK()
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = call i32 (...) @KOBJ_UNLOCK()
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = call i32 @kobj_class_free(%struct.TYPE_9__* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %32 = icmp ne %struct.malloc_type* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %36 = call i32 @free(%struct.TYPE_8__* %34, %struct.malloc_type* %35)
  br label %37

37:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @KOBJ_ASSERT(i32) #1

declare dso_local i32 @KOBJ_LOCK(...) #1

declare dso_local i32 @KOBJ_UNLOCK(...) #1

declare dso_local i32 @kobj_class_free(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*, %struct.malloc_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
