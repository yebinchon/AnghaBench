; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_vfsops.c_smbfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32 }
%struct.statfs = type { i32 }
%struct.smbmount = type { %struct.smb_share*, %struct.smbnode* }
%struct.smb_share = type { i32 }
%struct.smbnode = type { i32 }
%struct.smb_cred = type { i32 }
%struct.TYPE_2__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"np == NULL\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.smbmount*, align 8
  %8 = alloca %struct.smbnode*, align 8
  %9 = alloca %struct.smb_share*, align 8
  %10 = alloca %struct.smb_cred*, align 8
  %11 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %6, align 8
  %13 = load %struct.mount*, %struct.mount** %4, align 8
  %14 = call %struct.smbmount* @VFSTOSMBFS(%struct.mount* %13)
  store %struct.smbmount* %14, %struct.smbmount** %7, align 8
  %15 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %16 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %15, i32 0, i32 1
  %17 = load %struct.smbnode*, %struct.smbnode** %16, align 8
  store %struct.smbnode* %17, %struct.smbnode** %8, align 8
  %18 = load %struct.smbmount*, %struct.smbmount** %7, align 8
  %19 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %18, i32 0, i32 0
  %20 = load %struct.smb_share*, %struct.smb_share** %19, align 8
  store %struct.smb_share* %20, %struct.smb_share** %9, align 8
  %21 = load %struct.smbnode*, %struct.smbnode** %8, align 8
  %22 = icmp eq %struct.smbnode* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = call i32 @vfs_mount_error(%struct.mount* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.smb_share*, %struct.smb_share** %9, align 8
  %29 = call %struct.TYPE_2__* @SSTOVC(%struct.smb_share* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.statfs*, %struct.statfs** %5, align 8
  %33 = getelementptr inbounds %struct.statfs, %struct.statfs* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %34, %struct.smb_cred** %10, align 8
  %35 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = load %struct.thread*, %struct.thread** %6, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @smb_makescred(%struct.smb_cred* %35, %struct.thread* %36, i32 %39)
  %41 = load %struct.smb_share*, %struct.smb_share** %9, align 8
  %42 = load %struct.statfs*, %struct.statfs** %5, align 8
  %43 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %44 = call i32 @smbfs_smb_statfs(%struct.smb_share* %41, %struct.statfs* %42, %struct.smb_cred* %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.smb_cred*, %struct.smb_cred** %10, align 8
  %46 = call i32 @smbfs_free_scred(%struct.smb_cred* %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %27, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.smbmount* @VFSTOSMBFS(%struct.mount*) #1

declare dso_local i32 @vfs_mount_error(%struct.mount*, i8*) #1

declare dso_local %struct.TYPE_2__* @SSTOVC(%struct.smb_share*) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, i32) #1

declare dso_local i32 @smbfs_smb_statfs(%struct.smb_share*, %struct.statfs*, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
