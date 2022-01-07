; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_create_vobject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_create_vobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.thread = type { i32 }
%struct.vattr = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vnode_create_vobject: NULL object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_create_vobject(%struct.vnode* %0, i64 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vattr, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = call i64 @vn_isdisk(%struct.vnode* %12, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.vnode*, %struct.vnode** %5, align 8
  %17 = call i64 @vn_canvmio(%struct.vnode* %16)
  %18 = load i64, i64* @FALSE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %72

21:                                               ; preds = %15, %3
  %22 = load %struct.vnode*, %struct.vnode** %5, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %8, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %72

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = call i64 @vn_isdisk(%struct.vnode* %32, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @INT_MAX, align 4
  %37 = call i64 @IDX_TO_OFF(i32 %36)
  store i64 %37, i64* %9, align 8
  br label %49

38:                                               ; preds = %31
  %39 = load %struct.vnode*, %struct.vnode** %5, align 8
  %40 = load %struct.thread*, %struct.thread** %7, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @VOP_GETATTR(%struct.vnode* %39, %struct.vattr* %10, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %72

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.vattr, %struct.vattr* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %46, %35
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.vnode*, %struct.vnode** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.thread*, %struct.thread** %7, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_5__* @vnode_pager_alloc(%struct.vnode* %51, i64 %52, i32 0, i32 0, i32 %55)
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %8, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_5__* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i32 @refcount_release(i32* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_5__* %62)
  %64 = load %struct.vnode*, %struct.vnode** %5, align 8
  %65 = call i32 @vrele(%struct.vnode* %64)
  %66 = load %struct.vnode*, %struct.vnode** %5, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @KASSERT(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %50, %45, %27, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @vn_isdisk(%struct.vnode*, i32*) #1

declare dso_local i64 @vn_canvmio(%struct.vnode*) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i64 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local %struct.TYPE_5__* @vnode_pager_alloc(%struct.vnode*, i64, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
