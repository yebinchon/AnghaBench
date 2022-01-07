; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_destroy_vobject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_destroy_vobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [22 x i8] c"tmpfs_destroy_vobject\00", align 1
@VREG = common dso_local global i64 0, align 8
@OBJ_TMPFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_destroy_vobject(%struct.vnode* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %5 = load %struct.vnode*, %struct.vnode** %3, align 8
  %6 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.vnode*, %struct.vnode** %3, align 8
  %8 = getelementptr inbounds %struct.vnode, %struct.vnode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VREG, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %40

16:                                               ; preds = %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__* %17)
  %19 = load %struct.vnode*, %struct.vnode** %3, align 8
  %20 = call i32 @VI_LOCK(%struct.vnode* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = load i32, i32* @OBJ_TMPFS, align 4
  %23 = call i32 @vm_object_clear_flag(%struct.TYPE_10__* %21, i32 %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.vnode*, %struct.vnode** %3, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load %struct.vnode*, %struct.vnode** %3, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %16
  %36 = load %struct.vnode*, %struct.vnode** %3, align 8
  %37 = call i32 @VI_UNLOCK(%struct.vnode* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__* %38)
  br label %40

40:                                               ; preds = %35, %15
  ret void
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @vm_object_clear_flag(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
