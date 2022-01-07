; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_extattr_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_extattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.uio = type { i32, i32, i64, %struct.thread*, i32, i32, %struct.iovec* }
%struct.iovec = type { i32, i8* }

@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"IO_NODELOCKED with no vp lock held\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_extattr_get(%struct.vnode* %0, i32 %1, i32 %2, i8* %3, i32* %4, i8* %5, %struct.thread* %6) #0 {
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.thread*, align 8
  %15 = alloca %struct.uio, align 8
  %16 = alloca %struct.iovec, align 8
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.thread* %6, %struct.thread** %14, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %16, %struct.iovec** %23, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @UIO_READ, align 4
  %26 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @UIO_SYSSPACE, align 4
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load %struct.thread*, %struct.thread** %14, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  store %struct.thread* %29, %struct.thread** %30, align 8
  %31 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @IO_NODELOCKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %7
  %40 = load %struct.vnode*, %struct.vnode** %8, align 8
  %41 = load i32, i32* @LK_SHARED, align 4
  %42 = load i32, i32* @LK_RETRY, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @vn_lock(%struct.vnode* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %7
  %46 = load %struct.vnode*, %struct.vnode** %8, align 8
  %47 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.vnode*, %struct.vnode** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.thread*, %struct.thread** %14, align 8
  %52 = call i32 @VOP_GETEXTATTR(%struct.vnode* %48, i32 %49, i8* %50, %struct.uio* %15, i32* null, i32* null, %struct.thread* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @IO_NODELOCKED, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.vnode*, %struct.vnode** %8, align 8
  %59 = call i32 @VOP_UNLOCK(%struct.vnode* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i32, i32* %17, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %65, %67
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %17, align 4
  ret i32 %71
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_GETEXTATTR(%struct.vnode*, i32, i8*, %struct.uio*, i32*, i32*, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
