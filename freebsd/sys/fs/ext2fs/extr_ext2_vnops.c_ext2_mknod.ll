; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_mknod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_mknod_args = type { %struct.TYPE_2__*, i32, %struct.vnode**, %struct.vattr* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i32 }
%struct.vattr = type { i64, i32, i32 }
%struct.inode = type { i32, i64, i32 }

@IN_ACCESS = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@VNOVAL = common dso_local global i64 0, align 8
@IN_E4EXTENTS = common dso_local global i32 0, align 4
@VNON = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_mknod_args*)* @ext2_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_mknod(%struct.vop_mknod_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_mknod_args*, align 8
  %4 = alloca %struct.vattr*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vop_mknod_args* %0, %struct.vop_mknod_args** %3, align 8
  %9 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %9, i32 0, i32 3
  %11 = load %struct.vattr*, %struct.vattr** %10, align 8
  store %struct.vattr* %11, %struct.vattr** %4, align 8
  %12 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %12, i32 0, i32 2
  %14 = load %struct.vnode**, %struct.vnode*** %13, align 8
  store %struct.vnode** %14, %struct.vnode*** %5, align 8
  %15 = load %struct.vattr*, %struct.vattr** %4, align 8
  %16 = getelementptr inbounds %struct.vattr, %struct.vattr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vattr*, %struct.vattr** %4, align 8
  %19 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MAKEIMODE(i32 %17, i32 %20)
  %22 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %26 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %27 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ext2_makeinode(i32 %21, %struct.TYPE_2__* %24, %struct.vnode** %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %95

34:                                               ; preds = %1
  %35 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8
  %37 = call %struct.inode* @VTOI(%struct.vnode* %36)
  store %struct.inode* %37, %struct.inode** %6, align 8
  %38 = load i32, i32* @IN_ACCESS, align 4
  %39 = load i32, i32* @IN_CHANGE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IN_UPDATE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.vattr*, %struct.vattr** %4, align 8
  %48 = getelementptr inbounds %struct.vattr, %struct.vattr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VNOVAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %34
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IN_E4EXTENTS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = load %struct.vattr*, %struct.vattr** %4, align 8
  %61 = getelementptr inbounds %struct.vattr, %struct.vattr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* @VNON, align 4
  %68 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %69 = load %struct.vnode*, %struct.vnode** %68, align 8
  %70 = getelementptr inbounds %struct.vnode, %struct.vnode* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %7, align 4
  %74 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %75 = load %struct.vnode*, %struct.vnode** %74, align 8
  %76 = call i32 @vgone(%struct.vnode* %75)
  %77 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %78 = load %struct.vnode*, %struct.vnode** %77, align 8
  %79 = call i32 @vput(%struct.vnode* %78)
  %80 = load %struct.vop_mknod_args*, %struct.vop_mknod_args** %3, align 8
  %81 = getelementptr inbounds %struct.vop_mknod_args, %struct.vop_mknod_args* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @LK_EXCLUSIVE, align 4
  %87 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %88 = call i32 @VFS_VGET(i32 %84, i32 %85, i32 %86, %struct.vnode** %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %66
  %92 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* null, %struct.vnode** %92, align 8
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %91, %32
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ext2_makeinode(i32, %struct.TYPE_2__*, %struct.vnode**, i32) #1

declare dso_local i32 @MAKEIMODE(i32, i32) #1

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @vgone(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @VFS_VGET(i32, i32, i32, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
