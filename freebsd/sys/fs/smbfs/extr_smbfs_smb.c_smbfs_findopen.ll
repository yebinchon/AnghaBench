; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smb_cred = type { i32 }
%struct.smbfs_fctx = type { i32, i32, %struct.smb_cred*, %struct.smbnode* }

@M_SMBFSDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SMBFS_RDD_FINDFIRST = common dso_local global i32 0, align 4
@SMB_DIALECT_LANMAN2_0 = common dso_local global i64 0, align 8
@SMBFS_MOUNT_NO_LONG = common dso_local global i32 0, align 4
@SMBFS_RDD_USESEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_findopen(%struct.smbnode* %0, i8* %1, i32 %2, i32 %3, %struct.smb_cred* %4, %struct.smbfs_fctx** %5) #0 {
  %7 = alloca %struct.smbnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.smb_cred*, align 8
  %12 = alloca %struct.smbfs_fctx**, align 8
  %13 = alloca %struct.smbfs_fctx*, align 8
  %14 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.smb_cred* %4, %struct.smb_cred** %11, align 8
  store %struct.smbfs_fctx** %5, %struct.smbfs_fctx*** %12, align 8
  %15 = load i32, i32* @M_SMBFSDATA, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.smbfs_fctx* @malloc(i32 24, i32 %15, i32 %18)
  store %struct.smbfs_fctx* %19, %struct.smbfs_fctx** %13, align 8
  %20 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %21 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %26 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %28 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %29 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %28, i32 0, i32 3
  store %struct.smbnode* %27, %struct.smbnode** %29, align 8
  %30 = load i32, i32* @SMBFS_RDD_FINDFIRST, align 4
  %31 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %32 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %34 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %35 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %34, i32 0, i32 2
  store %struct.smb_cred* %33, %struct.smb_cred** %35, align 8
  %36 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %37 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SSTOVC(i32 %38)
  %40 = call i64 @SMB_DIALECT(i32 %39)
  %41 = load i64, i64* @SMB_DIALECT_LANMAN2_0, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %6
  %44 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %45 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SMBFS_MOUNT_NO_LONG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %43, %6
  %53 = load i32, i32* @SMBFS_RDD_USESEARCH, align 4
  %54 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %55 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %59 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %64 = call i32 @smbfs_findopenLM1(%struct.smbfs_fctx* %58, %struct.smbnode* %59, i8* %60, i32 %61, i32 %62, %struct.smb_cred* %63)
  store i32 %64, i32* %14, align 4
  br label %73

65:                                               ; preds = %43
  %66 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %67 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %72 = call i32 @smbfs_findopenLM2(%struct.smbfs_fctx* %66, %struct.smbnode* %67, i8* %68, i32 %69, i32 %70, %struct.smb_cred* %71)
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %65, %52
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %78 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %79 = call i32 @smbfs_findclose(%struct.smbfs_fctx* %77, %struct.smb_cred* %78)
  br label %83

80:                                               ; preds = %73
  %81 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %13, align 8
  %82 = load %struct.smbfs_fctx**, %struct.smbfs_fctx*** %12, align 8
  store %struct.smbfs_fctx* %81, %struct.smbfs_fctx** %82, align 8
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %14, align 4
  ret i32 %84
}

declare dso_local %struct.smbfs_fctx* @malloc(i32, i32, i32) #1

declare dso_local i64 @SMB_DIALECT(i32) #1

declare dso_local i32 @SSTOVC(i32) #1

declare dso_local i32 @smbfs_findopenLM1(%struct.smbfs_fctx*, %struct.smbnode*, i8*, i32, i32, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_findopenLM2(%struct.smbfs_fctx*, %struct.smbnode*, i8*, i32, i32, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_findclose(%struct.smbfs_fctx*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
