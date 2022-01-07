; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_extattr_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_extattr_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.mount = type { i32 }

@IO_NODELOCKED = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IO_NODELOCKED with no vp lock held\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_extattr_rm(%struct.vnode* %0, i32 %1, i32 %2, i8* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IO_NODELOCKED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load %struct.vnode*, %struct.vnode** %7, align 8
  %20 = load i32, i32* @V_WAIT, align 4
  %21 = call i32 @vn_start_write(%struct.vnode* %19, %struct.mount** %12, i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %6, align 4
  br label %60

25:                                               ; preds = %18
  %26 = load %struct.vnode*, %struct.vnode** %7, align 8
  %27 = load i32, i32* @LK_EXCLUSIVE, align 4
  %28 = load i32, i32* @LK_RETRY, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @vn_lock(%struct.vnode* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %5
  %32 = load %struct.vnode*, %struct.vnode** %7, align 8
  %33 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.vnode*, %struct.vnode** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.thread*, %struct.thread** %11, align 8
  %38 = call i32 @VOP_DELETEEXTATTR(%struct.vnode* %34, i32 %35, i8* %36, i32* null, %struct.thread* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.vnode*, %struct.vnode** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.thread*, %struct.thread** %11, align 8
  %47 = call i32 @VOP_SETEXTATTR(%struct.vnode* %43, i32 %44, i8* %45, i32* null, i32* null, %struct.thread* %46)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %42, %31
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @IO_NODELOCKED, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.mount*, %struct.mount** %12, align 8
  %55 = call i32 @vn_finished_write(%struct.mount* %54)
  %56 = load %struct.vnode*, %struct.vnode** %7, align 8
  %57 = call i32 @VOP_UNLOCK(%struct.vnode* %56, i32 0)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %23
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_DELETEEXTATTR(%struct.vnode*, i32, i8*, i32*, %struct.thread*) #1

declare dso_local i32 @VOP_SETEXTATTR(%struct.vnode*, i32, i8*, i32*, i32*, %struct.thread*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
