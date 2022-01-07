; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_destroy_vobject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vnode_pager.c_vnode_destroy_vobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.vm_object*, %struct.TYPE_3__ }
%struct.vm_object = type { i64, i64, i32, %struct.vnode* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"vnode_destroy_vobject\00", align 1
@OBJT_VNODE = common dso_local global i64 0, align 8
@OBJ_DEAD = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@BO_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"vp %p obj %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_destroy_vobject(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.vm_object*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = getelementptr inbounds %struct.vnode, %struct.vnode* %4, i32 0, i32 0
  %6 = load %struct.vm_object*, %struct.vm_object** %5, align 8
  store %struct.vm_object* %6, %struct.vm_object** %3, align 8
  %7 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %8 = icmp eq %struct.vm_object* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %11 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %10, i32 0, i32 3
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  %13 = load %struct.vnode*, %struct.vnode** %2, align 8
  %14 = icmp ne %struct.vnode* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %92

16:                                               ; preds = %9
  %17 = load %struct.vnode*, %struct.vnode** %2, align 8
  %18 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %20 = call i32 @VM_OBJECT_WLOCK(%struct.vm_object* %19)
  %21 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %22 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @OBJT_VNODE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  %28 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %29 = call i32 @umtx_shm_object_terminated(%struct.vm_object* %28)
  %30 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %31 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %16
  %35 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %36 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @OBJ_DEAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %43 = load i32, i32* @OBJ_DEAD, align 4
  %44 = call i32 @vm_object_set_flag(%struct.vm_object* %42, i32 %43)
  %45 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %46 = load i32, i32* @OBJPC_SYNC, align 4
  %47 = call i32 @vm_object_page_clean(%struct.vm_object* %45, i32 0, i32 0, i32 %46)
  %48 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %49 = call i32 @VM_OBJECT_WUNLOCK(%struct.vm_object* %48)
  %50 = load %struct.vnode*, %struct.vnode** %2, align 8
  %51 = load i32, i32* @V_SAVE, align 4
  %52 = call i32 @vinvalbuf(%struct.vnode* %50, i32 %51, i32 0, i32 0)
  %53 = load %struct.vnode*, %struct.vnode** %2, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 1
  %55 = call i32 @BO_LOCK(%struct.TYPE_3__* %54)
  %56 = load i32, i32* @BO_DEAD, align 4
  %57 = load %struct.vnode*, %struct.vnode** %2, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load %struct.vnode*, %struct.vnode** %2, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 1
  %64 = call i32 @BO_UNLOCK(%struct.TYPE_3__* %63)
  %65 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %66 = call i32 @VM_OBJECT_WLOCK(%struct.vm_object* %65)
  %67 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %68 = call i32 @vm_object_terminate(%struct.vm_object* %67)
  br label %74

69:                                               ; preds = %34
  %70 = load %struct.vnode*, %struct.vnode** %2, align 8
  %71 = getelementptr inbounds %struct.vnode, %struct.vnode* %70, i32 0, i32 0
  store %struct.vm_object* null, %struct.vm_object** %71, align 8
  %72 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %73 = call i32 @VM_OBJECT_WUNLOCK(%struct.vm_object* %72)
  br label %74

74:                                               ; preds = %69, %41
  br label %80

75:                                               ; preds = %16
  %76 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %77 = call i32 @vm_pager_deallocate(%struct.vm_object* %76)
  %78 = load %struct.vm_object*, %struct.vm_object** %3, align 8
  %79 = call i32 @VM_OBJECT_WUNLOCK(%struct.vm_object* %78)
  br label %80

80:                                               ; preds = %75, %74
  %81 = load %struct.vnode*, %struct.vnode** %2, align 8
  %82 = getelementptr inbounds %struct.vnode, %struct.vnode* %81, i32 0, i32 0
  %83 = load %struct.vm_object*, %struct.vm_object** %82, align 8
  %84 = icmp eq %struct.vm_object* %83, null
  %85 = zext i1 %84 to i32
  %86 = load %struct.vnode*, %struct.vnode** %2, align 8
  %87 = load %struct.vnode*, %struct.vnode** %2, align 8
  %88 = getelementptr inbounds %struct.vnode, %struct.vnode* %87, i32 0, i32 0
  %89 = load %struct.vm_object*, %struct.vm_object** %88, align 8
  %90 = bitcast %struct.vm_object* %89 to i8*
  %91 = call i32 @KASSERT(i32 %85, i8* %90)
  br label %92

92:                                               ; preds = %80, %15
  ret void
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.vm_object*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @umtx_shm_object_terminated(%struct.vm_object*) #1

declare dso_local i32 @vm_object_set_flag(%struct.vm_object*, i32) #1

declare dso_local i32 @vm_object_page_clean(%struct.vm_object*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.vm_object*) #1

declare dso_local i32 @vinvalbuf(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @BO_LOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @BO_UNLOCK(%struct.TYPE_3__*) #1

declare dso_local i32 @vm_object_terminate(%struct.vm_object*) #1

declare dso_local i32 @vm_pager_deallocate(%struct.vm_object*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
