; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_pager_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i8*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.ucred = type { i32 }
%struct.vnode = type { i64, i32, %struct.TYPE_15__* }

@.str = private unnamed_addr constant [18 x i8] c"vnode_pager_alloc\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"vnode_pager_alloc: no vnode reference\00", align 1
@OBJT_VNODE = common dso_local global i32 0, align 4
@vnode_domainset = common dso_local global i32 0, align 4
@VV_VMSIZEVNLOCK = common dso_local global i32 0, align 4
@OBJ_SIZEVNLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"leaked ref %p %d\00", align 1
@OBJT_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @vnode_pager_alloc(i8* %0, i32 %1, i32 %2, i32 %3, %struct.ucred* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.vnode*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ucred* %4, %struct.ucred** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  br label %122

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.vnode*
  store %struct.vnode* %19, %struct.vnode** %13, align 8
  %20 = load %struct.vnode*, %struct.vnode** %13, align 8
  %21 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vnode*, %struct.vnode** %13, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %77, %17
  %29 = load %struct.vnode*, %struct.vnode** %13, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %12, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %33 = icmp eq %struct.TYPE_15__* %32, null
  br i1 %33, label %34, label %110

34:                                               ; preds = %28
  %35 = load i32, i32* @OBJT_VNODE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @round_page(i32 %36)
  %38 = call i32 @OFF_TO_IDX(i32 %37)
  %39 = call %struct.TYPE_15__* @vm_object_allocate(i32 %35, i32 %38)
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @vnode_domainset, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.vnode*, %struct.vnode** %13, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VV_VMSIZEVNLOCK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %34
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_15__* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %66 = load i32, i32* @OBJ_SIZEVNLOCK, align 4
  %67 = call i32 @vm_object_set_flag(%struct.TYPE_15__* %65, i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_15__* %68)
  br label %70

70:                                               ; preds = %62, %34
  %71 = load %struct.vnode*, %struct.vnode** %13, align 8
  %72 = call i32 @VI_LOCK(%struct.vnode* %71)
  %73 = load %struct.vnode*, %struct.vnode** %13, align 8
  %74 = getelementptr inbounds %struct.vnode, %struct.vnode* %73, i32 0, i32 2
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = icmp ne %struct.TYPE_15__* %75, null
  br i1 %76, label %77, label %104

77:                                               ; preds = %70
  %78 = load %struct.vnode*, %struct.vnode** %13, align 8
  %79 = call i32 @VI_UNLOCK(%struct.vnode* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %81 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_15__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @KASSERT(i32 %86, i8* %92)
  %94 = load i32, i32* @OBJT_DEAD, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = call i32 @refcount_init(i32* %98, i32 0)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %101 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_15__* %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %103 = call i32 @vm_object_destroy(%struct.TYPE_15__* %102)
  br label %28

104:                                              ; preds = %70
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %106 = load %struct.vnode*, %struct.vnode** %13, align 8
  %107 = getelementptr inbounds %struct.vnode, %struct.vnode* %106, i32 0, i32 2
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %107, align 8
  %108 = load %struct.vnode*, %struct.vnode** %13, align 8
  %109 = call i32 @VI_UNLOCK(%struct.vnode* %108)
  br label %118

110:                                              ; preds = %28
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_15__* %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = call i32 @refcount_acquire(i32* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %117 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_15__* %116)
  br label %118

118:                                              ; preds = %110, %104
  %119 = load %struct.vnode*, %struct.vnode** %13, align 8
  %120 = call i32 @vrefact(%struct.vnode* %119)
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %121, %struct.TYPE_15__** %6, align 8
  br label %122

122:                                              ; preds = %118, %16
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %123
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_15__* @vm_object_allocate(i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_set_flag(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_15__*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @vm_object_destroy(%struct.TYPE_15__*) #1

declare dso_local i32 @refcount_acquire(i32*) #1

declare dso_local i32 @vrefact(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
