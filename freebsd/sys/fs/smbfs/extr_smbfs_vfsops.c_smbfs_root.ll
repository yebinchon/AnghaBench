; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.smbmount = type { %struct.smbnode* }
%struct.smbnode = type { i32 }
%struct.smbfattr = type { i32 }
%struct.smb_cred = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"smbfs_root\00", align 1
@VV_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, %struct.vnode**)* @smbfs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_root(%struct.mount* %0, i32 %1, %struct.vnode** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode**, align 8
  %8 = alloca %struct.smbmount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.smbnode*, align 8
  %11 = alloca %struct.smbfattr, align 4
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.ucred*, align 8
  %14 = alloca %struct.smb_cred*, align 8
  %15 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vnode** %2, %struct.vnode*** %7, align 8
  %16 = load %struct.mount*, %struct.mount** %5, align 8
  %17 = call %struct.smbmount* @VFSTOSMBFS(%struct.mount* %16)
  store %struct.smbmount* %17, %struct.smbmount** %8, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %18, %struct.thread** %12, align 8
  %19 = load %struct.thread*, %struct.thread** %12, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load %struct.ucred*, %struct.ucred** %20, align 8
  store %struct.ucred* %21, %struct.ucred** %13, align 8
  %22 = load %struct.smbmount*, %struct.smbmount** %8, align 8
  %23 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %22, i32 0, i32 0
  %24 = load %struct.smbnode*, %struct.smbnode** %23, align 8
  %25 = icmp ne %struct.smbnode* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.smbmount*, %struct.smbmount** %8, align 8
  %28 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %27, i32 0, i32 0
  %29 = load %struct.smbnode*, %struct.smbnode** %28, align 8
  %30 = call %struct.vnode* @SMBTOV(%struct.smbnode* %29)
  %31 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %30, %struct.vnode** %31, align 8
  %32 = load %struct.vnode**, %struct.vnode*** %7, align 8
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  %34 = load i32, i32* @LK_EXCLUSIVE, align 4
  %35 = load i32, i32* @LK_RETRY, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.thread*, %struct.thread** %12, align 8
  %38 = call i32 @vget(%struct.vnode* %33, i32 %36, %struct.thread* %37)
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %3
  %40 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %40, %struct.smb_cred** %14, align 8
  %41 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %42 = load %struct.thread*, %struct.thread** %12, align 8
  %43 = load %struct.ucred*, %struct.ucred** %13, align 8
  %44 = call i32 @smb_makescred(%struct.smb_cred* %41, %struct.thread* %42, %struct.ucred* %43)
  %45 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %46 = call i32 @smbfs_smb_lookup(i32* null, i32* null, i32 0, %struct.smbfattr* %11, %struct.smb_cred* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %71

50:                                               ; preds = %39
  %51 = load %struct.mount*, %struct.mount** %5, align 8
  %52 = call i32 @smbfs_nget(%struct.mount* %51, i32* null, i32* null, i32 0, %struct.smbfattr* %11, %struct.vnode** %9)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %71

56:                                               ; preds = %50
  %57 = load %struct.vnode*, %struct.vnode** %9, align 8
  %58 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @VV_ROOT, align 4
  %60 = load %struct.vnode*, %struct.vnode** %9, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.vnode*, %struct.vnode** %9, align 8
  %65 = call %struct.smbnode* @VTOSMB(%struct.vnode* %64)
  store %struct.smbnode* %65, %struct.smbnode** %10, align 8
  %66 = load %struct.smbnode*, %struct.smbnode** %10, align 8
  %67 = load %struct.smbmount*, %struct.smbmount** %8, align 8
  %68 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %67, i32 0, i32 0
  store %struct.smbnode* %66, %struct.smbnode** %68, align 8
  %69 = load %struct.vnode*, %struct.vnode** %9, align 8
  %70 = load %struct.vnode**, %struct.vnode*** %7, align 8
  store %struct.vnode* %69, %struct.vnode** %70, align 8
  br label %71

71:                                               ; preds = %56, %55, %49
  %72 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %73 = call i32 @smbfs_free_scred(%struct.smb_cred* %72)
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %26
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.smbmount* @VFSTOSMBFS(%struct.mount*) #1

declare dso_local %struct.vnode* @SMBTOV(%struct.smbnode*) #1

declare dso_local i32 @vget(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @smbfs_smb_lookup(i32*, i32*, i32, %struct.smbfattr*, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_nget(%struct.mount*, i32*, i32*, i32, %struct.smbfattr*, %struct.vnode**) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
