; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_vfs_unp_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_vfs_unp_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.unpcb = type { %struct.vnode* }
%struct.mtx = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"vfs_unp_reclaim\00", align 1
@VSOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"vfs_unp_reclaim: vp->v_type != VSOCK\00", align 1
@mtxpool_sleep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_unp_reclaim(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.unpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtx*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %6 = load %struct.vnode*, %struct.vnode** %2, align 8
  %7 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vnode*, %struct.vnode** %2, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VSOCK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %15 = load i32, i32* @mtxpool_sleep, align 4
  %16 = load %struct.vnode*, %struct.vnode** %2, align 8
  %17 = call %struct.mtx* @mtx_pool_find(i32 %15, %struct.vnode* %16)
  store %struct.mtx* %17, %struct.mtx** %5, align 8
  %18 = load %struct.mtx*, %struct.mtx** %5, align 8
  %19 = call i32 @mtx_lock(%struct.mtx* %18)
  %20 = load %struct.vnode*, %struct.vnode** %2, align 8
  %21 = call i32 @VOP_UNP_CONNECT(%struct.vnode* %20, %struct.unpcb** %3)
  %22 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %23 = icmp eq %struct.unpcb* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %27 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %26)
  %28 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %29 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %28, i32 0, i32 0
  %30 = load %struct.vnode*, %struct.vnode** %29, align 8
  %31 = load %struct.vnode*, %struct.vnode** %2, align 8
  %32 = icmp eq %struct.vnode* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.vnode*, %struct.vnode** %2, align 8
  %35 = call i32 @VOP_UNP_DETACH(%struct.vnode* %34)
  %36 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %37 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %36, i32 0, i32 0
  store %struct.vnode* null, %struct.vnode** %37, align 8
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %25
  %39 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %40 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %39)
  br label %41

41:                                               ; preds = %38, %24
  %42 = load %struct.mtx*, %struct.mtx** %5, align 8
  %43 = call i32 @mtx_unlock(%struct.mtx* %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.vnode*, %struct.vnode** %2, align 8
  %48 = call i32 @vunref(%struct.vnode* %47)
  br label %49

49:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.vnode*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @VOP_UNP_CONNECT(%struct.vnode*, %struct.unpcb**) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @VOP_UNP_DETACH(%struct.vnode*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @vunref(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
