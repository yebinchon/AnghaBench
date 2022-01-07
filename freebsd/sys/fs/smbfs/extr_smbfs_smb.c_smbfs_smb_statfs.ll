; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.statfs = type { i32 }
%struct.smb_cred = type { i32 }

@SMB_DIALECT_LANMAN2_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_statfs(%struct.smb_share* %0, %struct.statfs* %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_share*, align 8
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca %struct.smb_cred*, align 8
  store %struct.smb_share* %0, %struct.smb_share** %5, align 8
  store %struct.statfs* %1, %struct.statfs** %6, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %8 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %9 = call i32 @SSTOVC(%struct.smb_share* %8)
  %10 = call i64 @SMB_DIALECT(i32 %9)
  %11 = load i64, i64* @SMB_DIALECT_LANMAN2_0, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %15 = load %struct.statfs*, %struct.statfs** %6, align 8
  %16 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %17 = call i64 @smbfs_query_info_fs(%struct.smb_share* %14, %struct.statfs* %15, %struct.smb_cred* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %22 = load %struct.statfs*, %struct.statfs** %6, align 8
  %23 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %24 = call i64 @smbfs_query_info_alloc(%struct.smb_share* %21, %struct.statfs* %22, %struct.smb_cred* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %33

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %30 = load %struct.statfs*, %struct.statfs** %6, align 8
  %31 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %32 = call i32 @smbfs_query_info_disk(%struct.smb_share* %29, %struct.statfs* %30, %struct.smb_cred* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %26, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @SMB_DIALECT(i32) #1

declare dso_local i32 @SSTOVC(%struct.smb_share*) #1

declare dso_local i64 @smbfs_query_info_fs(%struct.smb_share*, %struct.statfs*, %struct.smb_cred*) #1

declare dso_local i64 @smbfs_query_info_alloc(%struct.smb_share*, %struct.statfs*, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_query_info_disk(%struct.smb_share*, %struct.statfs*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
