; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_vinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_vinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vop_vector = type { i32 }
%struct.vnode = type { i64, i32, %struct.vop_vector* }
%struct.inode = type { i64, i64, i32 }

@VNON = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i64 0, align 8
@EXT2_ROOTINO = common dso_local global i64 0, align 8
@VV_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_vinit(%struct.mount* %0, %struct.vop_vector* %1, %struct.vnode** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.vop_vector*, align 8
  %7 = alloca %struct.vnode**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.vnode*, align 8
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.vop_vector* %1, %struct.vop_vector** %6, align 8
  store %struct.vnode** %2, %struct.vnode*** %7, align 8
  %10 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %9, align 8
  %12 = load %struct.vnode*, %struct.vnode** %9, align 8
  %13 = call %struct.inode* @VTOI(%struct.vnode* %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @IFTOVT(i64 %16)
  %18 = load %struct.vnode*, %struct.vnode** %9, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.vnode*, %struct.vnode** %9, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VNON, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %60

32:                                               ; preds = %24, %3
  %33 = load %struct.vnode*, %struct.vnode** %9, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VFIFO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.vop_vector*, %struct.vop_vector** %6, align 8
  %40 = load %struct.vnode*, %struct.vnode** %9, align 8
  %41 = getelementptr inbounds %struct.vnode, %struct.vnode* %40, i32 0, i32 2
  store %struct.vop_vector* %39, %struct.vop_vector** %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EXT2_ROOTINO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32, i32* @VV_ROOT, align 4
  %50 = load %struct.vnode*, %struct.vnode** %9, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = call i32 (...) @init_va_filerev()
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.vnode*, %struct.vnode** %9, align 8
  %59 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %58, %struct.vnode** %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i64 @IFTOVT(i64) #1

declare dso_local i32 @init_va_filerev(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
