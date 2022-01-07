; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, %struct.ucred*, i32, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.vnode = type { i32 }
%struct.fuse_data = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@FSESS_INITED = common dso_local global i32 0, align 4
@PRIV_VFS_ADMIN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @fuse_vnop_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.fuse_data*, align 8
  %8 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %9 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %10 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %9, i32 0, i32 3
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %16 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %15, i32 0, i32 1
  %17 = load %struct.ucred*, %struct.ucred** %16, align 8
  store %struct.ucred* %17, %struct.ucred** %6, align 8
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call i32 @vnode_mount(%struct.vnode* %18)
  %20 = call %struct.fuse_data* @fuse_get_mpdata(i32 %19)
  store %struct.fuse_data* %20, %struct.fuse_data** %7, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = call i64 @fuse_isdeadfs(%struct.vnode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = call i64 @vnode_isvroot(%struct.vnode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %74

29:                                               ; preds = %24
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %74

31:                                               ; preds = %1
  %32 = load %struct.fuse_data*, %struct.fuse_data** %7, align 8
  %33 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FSESS_INITED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %58, label %38

38:                                               ; preds = %31
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = call i64 @vnode_isvroot(%struct.vnode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.ucred*, %struct.ucred** %6, align 8
  %44 = load i32, i32* @PRIV_VFS_ADMIN, align 4
  %45 = call i64 @priv_check_cred(%struct.ucred* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.fuse_data*, %struct.fuse_data** %7, align 8
  %49 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ucred*, %struct.ucred** %6, align 8
  %52 = call i64 @fuse_match_cred(i32 %50, %struct.ucred* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %42
  store i32 0, i32* %2, align 4
  br label %74

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %38
  %57 = load i32, i32* @EBADF, align 4
  store i32 %57, i32* %2, align 4
  br label %74

58:                                               ; preds = %31
  %59 = load %struct.vnode*, %struct.vnode** %4, align 8
  %60 = call i64 @vnode_islnk(%struct.vnode* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %74

63:                                               ; preds = %58
  %64 = load %struct.vnode*, %struct.vnode** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %67 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %70 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %69, i32 0, i32 1
  %71 = load %struct.ucred*, %struct.ucred** %70, align 8
  %72 = call i32 @fuse_internal_access(%struct.vnode* %64, i32 %65, i32 %68, %struct.ucred* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %63, %62, %56, %54, %29, %28
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.fuse_data* @fuse_get_mpdata(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i64 @vnode_isvroot(%struct.vnode*) #1

declare dso_local i64 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i64 @fuse_match_cred(i32, %struct.ucred*) #1

declare dso_local i64 @vnode_islnk(%struct.vnode*) #1

declare dso_local i32 @fuse_internal_access(%struct.vnode*, i32, i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
