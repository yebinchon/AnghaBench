; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32 }

@VBLK = common dso_local global i32 0, align 4
@VCHR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@SF_SNAPSHOT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @ext2_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %8 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = call %struct.inode* @VTOI(%struct.vnode* %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VBLK, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.vnode*, %struct.vnode** %4, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VCHR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %1
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %28, i32* %2, align 4
  br label %89

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VWRITE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.vnode*, %struct.vnode** %4, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %50 [
    i32 130, label %38
    i32 129, label %38
    i32 128, label %38
  ]

38:                                               ; preds = %34, %34, %34
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MNT_RDONLY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @EROFS, align 4
  store i32 %48, i32* %2, align 4
  br label %89

49:                                               ; preds = %38
  br label %51

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @VWRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SF_IMMUTABLE, align 4
  %62 = load i32, i32* @SF_SNAPSHOT, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @EPERM, align 4
  store i32 %67, i32* %2, align 4
  br label %89

68:                                               ; preds = %57, %52
  %69 = load %struct.vnode*, %struct.vnode** %4, align 8
  %70 = getelementptr inbounds %struct.vnode, %struct.vnode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %82 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %85 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @vaccess(i32 %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32* null)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %68, %66, %47, %27
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
