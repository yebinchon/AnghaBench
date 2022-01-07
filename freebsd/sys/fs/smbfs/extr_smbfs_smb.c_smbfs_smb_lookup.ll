; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i32, i32 }
%struct.smbfattr = type { i32, i32 }
%struct.smb_cred = type { i32 }
%struct.smbfs_fctx = type { %struct.smbfattr, i32 }

@SMB_FA_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"smbfs_smb_lookup\00", align 1
@SMB_FA_SYSTEM = common dso_local global i32 0, align 4
@SMB_FA_HIDDEN = common dso_local global i32 0, align 4
@SMBFS_RDD_FINDSINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_lookup(%struct.smbnode* %0, i8* %1, i32 %2, %struct.smbfattr* %3, %struct.smb_cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smbnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smbfattr*, align 8
  %11 = alloca %struct.smb_cred*, align 8
  %12 = alloca %struct.smbfs_fctx*, align 8
  %13 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.smbfattr* %3, %struct.smbfattr** %10, align 8
  store %struct.smb_cred* %4, %struct.smb_cred** %11, align 8
  %14 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %15 = icmp eq %struct.smbnode* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %18 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21, %5
  %25 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %26 = call i32 @bzero(%struct.smbfattr* %25, i32 8)
  %27 = load i32, i32* @SMB_FA_DIR, align 4
  %28 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %29 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %31 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %30, i32 0, i32 1
  store i32 2, i32* %31, align 4
  store i32 0, i32* %6, align 4
  br label %114

32:                                               ; preds = %21, %16
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 46
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br label %47

47:                                               ; preds = %41, %35, %32
  %48 = phi i1 [ false, %35 ], [ false, %32 ], [ %46, %41 ]
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @MPASS(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 46
  br label %60

60:                                               ; preds = %54, %47
  %61 = phi i1 [ false, %47 ], [ %59, %54 ]
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @MPASS(i32 %63)
  %65 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %66 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ASSERT_VOP_ELOCKED(i32 %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SMB_FA_SYSTEM, align 4
  %73 = load i32, i32* @SMB_FA_HIDDEN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SMB_FA_DIR, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %78 = call i32 @smbfs_findopen(%struct.smbnode* %69, i8* %70, i32 %71, i32 %76, %struct.smb_cred* %77, %struct.smbfs_fctx** %12)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %60
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %114

83:                                               ; preds = %60
  %84 = load i32, i32* @SMBFS_RDD_FINDSINGLE, align 4
  %85 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %12, align 8
  %86 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %12, align 8
  %90 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %91 = call i32 @smbfs_findnext(%struct.smbfs_fctx* %89, i32 1, %struct.smb_cred* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %83
  %95 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %96 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %12, align 8
  %97 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %96, i32 0, i32 0
  %98 = bitcast %struct.smbfattr* %95 to i8*
  %99 = bitcast %struct.smbfattr* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 8, i1 false)
  %100 = load i8*, i8** %8, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %104 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %107 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %102, %94
  br label %109

109:                                              ; preds = %108, %83
  %110 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %12, align 8
  %111 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %112 = call i32 @smbfs_findclose(%struct.smbfs_fctx* %110, %struct.smb_cred* %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %81, %24
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @bzero(%struct.smbfattr*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @ASSERT_VOP_ELOCKED(i32, i8*) #1

declare dso_local i32 @smbfs_findopen(%struct.smbnode*, i8*, i32, i32, %struct.smb_cred*, %struct.smbfs_fctx**) #1

declare dso_local i32 @smbfs_findnext(%struct.smbfs_fctx*, i32, %struct.smb_cred*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smbfs_findclose(%struct.smbfs_fctx*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
