; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findopenLM2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findopenLM2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbfs_fctx = type { i32, i8*, i32, i32, i32, i8* }
%struct.smbnode = type { i32 }
%struct.smb_cred = type { i32 }

@SMB_MAXFNAMELEN = common dso_local global i32 0, align 4
@M_SMBFSDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SMB_DIALECT_NTLM0_12 = common dso_local global i64 0, align 8
@SMB_INFO_STANDARD = common dso_local global i32 0, align 4
@SMB_FIND_FILE_DIRECTORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbfs_fctx*, %struct.smbnode*, i8*, i32, i32, %struct.smb_cred*)* @smbfs_findopenLM2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_findopenLM2(%struct.smbfs_fctx* %0, %struct.smbnode* %1, i8* %2, i32 %3, i32 %4, %struct.smb_cred* %5) #0 {
  %7 = alloca %struct.smbfs_fctx*, align 8
  %8 = alloca %struct.smbnode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.smb_cred*, align 8
  store %struct.smbfs_fctx* %0, %struct.smbfs_fctx** %7, align 8
  store %struct.smbnode* %1, %struct.smbnode** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.smb_cred* %5, %struct.smb_cred** %12, align 8
  %13 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %14 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SSTOVC(i32 %15)
  %17 = call i64 @SMB_UNICODE_STRINGS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %6
  %20 = load i32, i32* @SMB_MAXFNAMELEN, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load i32, i32* @M_SMBFSDATA, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i8* @malloc(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %26 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  br label %34

27:                                               ; preds = %6
  %28 = load i32, i32* @SMB_MAXFNAMELEN, align 4
  %29 = load i32, i32* @M_SMBFSDATA, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = call i8* @malloc(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %33 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %36 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SSTOVC(i32 %37)
  %39 = call i64 @SMB_DIALECT(i32 %38)
  %40 = load i64, i64* @SMB_DIALECT_NTLM0_12, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @SMB_INFO_STANDARD, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @SMB_FIND_FILE_DIRECTORY_INFO, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %49 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %52 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %55 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %7, align 8
  %58 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  ret i32 0
}

declare dso_local i64 @SMB_UNICODE_STRINGS(i32) #1

declare dso_local i32 @SSTOVC(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @SMB_DIALECT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
