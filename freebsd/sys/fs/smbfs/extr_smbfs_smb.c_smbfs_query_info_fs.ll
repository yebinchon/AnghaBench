; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_query_info_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_query_info_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.statfs = type { i32, i32, i32, i8*, i8*, i8* }
%struct.smb_cred = type { i32 }
%struct.smb_t2rq = type { i32, i32, %struct.mdchain, %struct.mbchain }
%struct.mdchain = type { i32 }
%struct.mbchain = type { i32 }

@SMB_TRANS2_QUERY_FS_INFORMATION = common dso_local global i32 0, align 4
@SMB_QUERY_FS_SIZE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_share*, %struct.statfs*, %struct.smb_cred*)* @smbfs_query_info_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_query_info_fs(%struct.smb_share* %0, %struct.statfs* %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_share*, align 8
  %6 = alloca %struct.statfs*, align 8
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca %struct.smb_t2rq*, align 8
  %9 = alloca %struct.mbchain*, align 8
  %10 = alloca %struct.mdchain*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %5, align 8
  store %struct.statfs* %1, %struct.statfs** %6, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %16 = load %struct.smb_share*, %struct.smb_share** %5, align 8
  %17 = call i32 @SSTOCP(%struct.smb_share* %16)
  %18 = load i32, i32* @SMB_TRANS2_QUERY_FS_INFORMATION, align 4
  %19 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %20 = call i32 @smb_t2_alloc(i32 %17, i32 %18, %struct.smb_cred* %19, %struct.smb_t2rq** %8)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %4, align 4
  br label %79

25:                                               ; preds = %3
  %26 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %27 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %26, i32 0, i32 3
  store %struct.mbchain* %27, %struct.mbchain** %9, align 8
  %28 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %29 = call i32 @mb_init(%struct.mbchain* %28)
  %30 = load %struct.mbchain*, %struct.mbchain** %9, align 8
  %31 = load i32, i32* @SMB_QUERY_FS_SIZE_INFO, align 4
  %32 = call i32 @mb_put_uint16le(%struct.mbchain* %30, i32 %31)
  %33 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %34 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %33, i32 0, i32 0
  store i32 2, i32* %34, align 4
  %35 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %36 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %35, i32 0, i32 1
  store i32 24, i32* %36, align 4
  %37 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %38 = call i32 @smb_t2_request(%struct.smb_t2rq* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %43 = call i32 @smb_t2_done(%struct.smb_t2rq* %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %4, align 4
  br label %79

45:                                               ; preds = %25
  %46 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %47 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %46, i32 0, i32 2
  store %struct.mdchain* %47, %struct.mdchain** %10, align 8
  %48 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %49 = call i32 @md_get_int64le(%struct.mdchain* %48, i64* %13)
  %50 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %51 = call i32 @md_get_int64le(%struct.mdchain* %50, i64* %14)
  %52 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %53 = call i32 @md_get_uint32le(%struct.mdchain* %52, i32* %12)
  %54 = load %struct.mdchain*, %struct.mdchain** %10, align 8
  %55 = call i32 @md_get_uint32le(%struct.mdchain* %54, i32* %11)
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load %struct.statfs*, %struct.statfs** %6, align 8
  %60 = getelementptr inbounds %struct.statfs, %struct.statfs* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* %13, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.statfs*, %struct.statfs** %6, align 8
  %64 = getelementptr inbounds %struct.statfs, %struct.statfs* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i64, i64* %14, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.statfs*, %struct.statfs** %6, align 8
  %68 = getelementptr inbounds %struct.statfs, %struct.statfs* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* %14, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.statfs*, %struct.statfs** %6, align 8
  %72 = getelementptr inbounds %struct.statfs, %struct.statfs* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.statfs*, %struct.statfs** %6, align 8
  %74 = getelementptr inbounds %struct.statfs, %struct.statfs* %73, i32 0, i32 1
  store i32 65535, i32* %74, align 4
  %75 = load %struct.statfs*, %struct.statfs** %6, align 8
  %76 = getelementptr inbounds %struct.statfs, %struct.statfs* %75, i32 0, i32 2
  store i32 65535, i32* %76, align 8
  %77 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %78 = call i32 @smb_t2_done(%struct.smb_t2rq* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %45, %41, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @smb_t2_alloc(i32, i32, %struct.smb_cred*, %struct.smb_t2rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @mb_init(%struct.mbchain*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_t2_request(%struct.smb_t2rq*) #1

declare dso_local i32 @smb_t2_done(%struct.smb_t2rq*) #1

declare dso_local i32 @md_get_int64le(%struct.mdchain*, i64*) #1

declare dso_local i32 @md_get_uint32le(%struct.mdchain*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
