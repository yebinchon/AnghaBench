; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_extattr_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_extattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.uio = type { i32, i32, i64, %struct.thread*, i32, i32, %struct.iovec* }
%struct.iovec = type { i32, i8* }
%struct.mount = type { i32 }

@UIO_WRITE = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IO_NODELOCKED with no vp lock held\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_extattr_set(%struct.vnode* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, %struct.thread* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.thread*, align 8
  %16 = alloca %struct.uio, align 8
  %17 = alloca %struct.iovec, align 8
  %18 = alloca %struct.mount*, align 8
  %19 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store %struct.thread* %6, %struct.thread** %15, align 8
  %20 = load i32, i32* %13, align 4
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 6
  store %struct.iovec* %17, %struct.iovec** %24, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* @UIO_WRITE, align 4
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @UIO_SYSSPACE, align 4
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load %struct.thread*, %struct.thread** %15, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 3
  store %struct.thread* %30, %struct.thread** %31, align 8
  %32 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %13, align 4
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %16, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IO_NODELOCKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %7
  %40 = load %struct.vnode*, %struct.vnode** %9, align 8
  %41 = load i32, i32* @V_WAIT, align 4
  %42 = call i32 @vn_start_write(%struct.vnode* %40, %struct.mount** %18, i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %8, align 4
  br label %71

46:                                               ; preds = %39
  %47 = load %struct.vnode*, %struct.vnode** %9, align 8
  %48 = load i32, i32* @LK_EXCLUSIVE, align 4
  %49 = load i32, i32* @LK_RETRY, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @vn_lock(%struct.vnode* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %7
  %53 = load %struct.vnode*, %struct.vnode** %9, align 8
  %54 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.vnode*, %struct.vnode** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.thread*, %struct.thread** %15, align 8
  %59 = call i32 @VOP_SETEXTATTR(%struct.vnode* %55, i32 %56, i8* %57, %struct.uio* %16, i32* null, %struct.thread* %58)
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @IO_NODELOCKED, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.mount*, %struct.mount** %18, align 8
  %66 = call i32 @vn_finished_write(%struct.mount* %65)
  %67 = load %struct.vnode*, %struct.vnode** %9, align 8
  %68 = call i32 @VOP_UNLOCK(%struct.vnode* %67, i32 0)
  br label %69

69:                                               ; preds = %64, %52
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %44
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_SETEXTATTR(%struct.vnode*, i32, i8*, %struct.uio*, i32*, %struct.thread*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
