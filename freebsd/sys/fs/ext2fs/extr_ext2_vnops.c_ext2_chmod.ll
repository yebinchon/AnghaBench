; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_chmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.inode = type { i32, i32, i32 }

@VADMIN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@S_ISTXT = common dso_local global i32 0, align 4
@PRIV_VFS_STICKYFILE = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@ISGID = common dso_local global i32 0, align 4
@PRIV_VFS_SETGID = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, %struct.ucred*, %struct.thread*)* @ext2_chmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_chmod(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = call %struct.inode* @VTOI(%struct.vnode* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = load i32, i32* @VADMIN, align 4
  %16 = load %struct.ucred*, %struct.ucred** %8, align 8
  %17 = load %struct.thread*, %struct.thread** %9, align 8
  %18 = call i32 @VOP_ACCESS(%struct.vnode* %14, i32 %15, %struct.ucred* %16, %struct.thread* %17)
  store i32 %18, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %82

22:                                               ; preds = %4
  %23 = load %struct.vnode*, %struct.vnode** %6, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VDIR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @S_ISTXT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.ucred*, %struct.ucred** %8, align 8
  %35 = load i32, i32* @PRIV_VFS_STICKYFILE, align 4
  %36 = call i32 @priv_check_cred(%struct.ucred* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EFTYPE, align 4
  store i32 %40, i32* %5, align 4
  br label %82

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %28, %22
  %43 = load %struct.inode*, %struct.inode** %10, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ucred*, %struct.ucred** %8, align 8
  %47 = call i32 @groupmember(i32 %45, %struct.ucred* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ISGID, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.ucred*, %struct.ucred** %8, align 8
  %56 = load i32, i32* @PRIV_VFS_SETGID, align 4
  %57 = call i32 @priv_check_cred(%struct.ucred* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %49, %42
  %64 = load i32, i32* @ALLPERMS, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ALLPERMS, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @IN_CHANGE, align 4
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %63, %60, %39, %20
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @groupmember(i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
