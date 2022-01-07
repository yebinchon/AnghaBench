; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdadvlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdadvlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.vop_advlock_args = type { %struct.TYPE_3__*, %struct.vnode* }
%struct.TYPE_3__ = type { i64 }
%struct.vnode = type { i32 }
%struct.vattr = type { i64 }

@SEEK_END = common dso_local global i64 0, align 8
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vop_stdadvlock(%struct.vop_advlock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_advlock_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr, align 8
  %6 = alloca i32, align 4
  store %struct.vop_advlock_args* %0, %struct.vop_advlock_args** %3, align 8
  %7 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %7, i32 0, i32 1
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SEEK_END, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = load i32, i32* @LK_SHARED, align 4
  %20 = load i32, i32* @LK_RETRY, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @vn_lock(%struct.vnode* %18, i32 %21)
  %23 = load %struct.vnode*, %struct.vnode** %4, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curthread, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VOP_GETATTR(%struct.vnode* %23, %struct.vattr* %5, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.vnode*, %struct.vnode** %4, align 8
  %29 = call i32 @VOP_UNLOCK(%struct.vnode* %28, i32 0)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %17
  br label %37

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @lf_advlock(%struct.vop_advlock_args* %38, i32* %40, i64 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @lf_advlock(%struct.vop_advlock_args*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
