; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_lookup.c_ufs_delete_denied.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ufs/ufs/extr_ufs_lookup.c_ufs_delete_denied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VWRITE = common dso_local global i32 0, align 4
@ISVTX = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VDELETE = common dso_local global i32 0, align 4
@VDELETE_CHILD = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@VEXPLICIT_DENY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.vnode*, %struct.ucred*, %struct.thread*)* @ufs_delete_denied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_delete_denied(%struct.vnode* %0, %struct.vnode* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.vnode*, %struct.vnode** %6, align 8
  %12 = load i32, i32* @VWRITE, align 4
  %13 = load %struct.ucred*, %struct.ucred** %8, align 8
  %14 = load %struct.thread*, %struct.thread** %9, align 8
  %15 = call i32 @VOP_ACCESS(%struct.vnode* %11, i32 %12, %struct.ucred* %13, %struct.thread* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.vnode*, %struct.vnode** %6, align 8
  %22 = call %struct.TYPE_2__* @VTOI(%struct.vnode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISVTX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %20
  %29 = load %struct.vnode*, %struct.vnode** %6, align 8
  %30 = load i32, i32* @VADMIN, align 4
  %31 = load %struct.ucred*, %struct.ucred** %8, align 8
  %32 = load %struct.thread*, %struct.thread** %9, align 8
  %33 = call i32 @VOP_ACCESS(%struct.vnode* %29, i32 %30, %struct.ucred* %31, %struct.thread* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.vnode*, %struct.vnode** %7, align 8
  %37 = load i32, i32* @VADMIN, align 4
  %38 = load %struct.ucred*, %struct.ucred** %8, align 8
  %39 = load %struct.thread*, %struct.thread** %9, align 8
  %40 = call i32 @VOP_ACCESS(%struct.vnode* %36, i32 %37, %struct.ucred* %38, %struct.thread* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @EPERM, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %35, %28, %20
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %42, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local %struct.TYPE_2__* @VTOI(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
