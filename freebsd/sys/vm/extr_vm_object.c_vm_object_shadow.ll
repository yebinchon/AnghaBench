; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_shadow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_object.c_vm_object_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32, i32, i64, %struct.TYPE_9__*, i32* }

@OBJT_DEFAULT = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@shadow_list = common dso_local global i32 0, align 4
@OBJ_COLORED = common dso_local global i32 0, align 4
@VM_NFREEORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_object_shadow(%struct.TYPE_9__** %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_9__* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 9
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OBJT_DEFAULT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OBJT_SWAP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %25
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_9__* %38)
  br label %80

40:                                               ; preds = %31, %20, %13
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_9__* %41)
  br label %43

43:                                               ; preds = %40, %3
  %44 = load i64, i64* @OBJT_DEFAULT, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @atop(i32 %45)
  %47 = call %struct.TYPE_9__* @vm_object_allocate(i64 %44, i32 %46)
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %8, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %50, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %43
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_9__* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = load i32, i32* @shadow_list, align 4
  %69 = call i32 @LIST_INSERT_HEAD(i32* %66, %struct.TYPE_9__* %67, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_9__* %74)
  br label %76

76:                                               ; preds = %57, %43
  %77 = load i64*, i64** %5, align 8
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %79, align 8
  br label %80

80:                                               ; preds = %76, %37
  ret void
}

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @vm_object_allocate(i64, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
