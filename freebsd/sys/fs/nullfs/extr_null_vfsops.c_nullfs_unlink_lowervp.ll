; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vfsops.c_nullfs_unlink_lowervp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vfsops.c_nullfs_unlink_lowervp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i64, i32 }
%struct.null_node = type { i32 }

@NULLV_DROP = common dso_local global i32 0, align 4
@NULLV_NOUNLOCK = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"not reclaimed nullfs vnode %p\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"unlink_lowervp\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"reclaimed nullfs vnode %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, %struct.vnode*)* @nullfs_unlink_lowervp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nullfs_unlink_lowervp(%struct.mount* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.null_node*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %7 = load %struct.mount*, %struct.mount** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = call %struct.vnode* @null_hashget(%struct.mount* %7, %struct.vnode* %8)
  store %struct.vnode* %9, %struct.vnode** %5, align 8
  %10 = load %struct.vnode*, %struct.vnode** %5, align 8
  %11 = icmp eq %struct.vnode* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = call %struct.null_node* @VTONULL(%struct.vnode* %14)
  store %struct.null_node* %15, %struct.null_node** %6, align 8
  %16 = load i32, i32* @NULLV_DROP, align 4
  %17 = load i32, i32* @NULLV_NOUNLOCK, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.null_node*, %struct.null_node** %6, align 8
  %20 = getelementptr inbounds %struct.null_node, %struct.null_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = call i32 @vhold(%struct.vnode* %23)
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = call i32 @vunref(%struct.vnode* %25)
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %13
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VI_DOOMED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load %struct.vnode*, %struct.vnode** %5, align 8
  %40 = bitcast %struct.vnode* %39 to i8*
  %41 = call i32 @KASSERT(i32 %38, i8* %40)
  %42 = load %struct.vnode*, %struct.vnode** %5, align 8
  %43 = call i32 @VOP_UNLOCK(%struct.vnode* %42, i32 0)
  br label %63

44:                                               ; preds = %13
  %45 = load %struct.vnode*, %struct.vnode** %5, align 8
  %46 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VI_DOOMED, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.vnode*, %struct.vnode** %5, align 8
  %55 = bitcast %struct.vnode* %54 to i8*
  %56 = call i32 @KASSERT(i32 %53, i8* %55)
  %57 = load i32, i32* @NULLV_NOUNLOCK, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.null_node*, %struct.null_node** %6, align 8
  %60 = getelementptr inbounds %struct.null_node, %struct.null_node* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %44, %31
  %64 = load %struct.vnode*, %struct.vnode** %5, align 8
  %65 = call i32 @vdrop(%struct.vnode* %64)
  br label %66

66:                                               ; preds = %63, %12
  ret void
}

declare dso_local %struct.vnode* @null_hashget(%struct.mount*, %struct.vnode*) #1

declare dso_local %struct.null_node* @VTONULL(%struct.vnode*) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @vunref(%struct.vnode*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
