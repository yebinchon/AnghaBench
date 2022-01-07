; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_lockandx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_lockandx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }

@SMB_LOCK_SHARED = common dso_local global i32 0, align 4
@SMB_LOCKING_ANDX_SHARED_LOCK = common dso_local global i32 0, align 4
@SMB_COM_LOCKING_ANDX = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMB_LOCK_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbnode*, i32, i32, i64, i64, %struct.smb_cred*)* @smbfs_smb_lockandx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_smb_lockandx(%struct.smbnode* %0, i32 %1, i32 %2, i64 %3, i64 %4, %struct.smb_cred* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.smbnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.smb_cred*, align 8
  %14 = alloca %struct.smb_share*, align 8
  %15 = alloca %struct.smb_rq*, align 8
  %16 = alloca %struct.mbchain*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.smb_cred* %5, %struct.smb_cred** %13, align 8
  %19 = load %struct.smbnode*, %struct.smbnode** %8, align 8
  %20 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.smb_share*, %struct.smb_share** %22, align 8
  store %struct.smb_share* %23, %struct.smb_share** %14, align 8
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SMB_LOCK_SHARED, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* @SMB_LOCKING_ANDX_SHARED_LOCK, align 4
  %29 = load i32, i32* %17, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %27, %6
  %32 = load %struct.smb_share*, %struct.smb_share** %14, align 8
  %33 = call i32 @SSTOCP(%struct.smb_share* %32)
  %34 = load i32, i32* @SMB_COM_LOCKING_ANDX, align 4
  %35 = load %struct.smb_cred*, %struct.smb_cred** %13, align 8
  %36 = call i32 @smb_rq_alloc(i32 %33, i32 %34, %struct.smb_cred* %35, %struct.smb_rq** %15)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %7, align 4
  br label %101

41:                                               ; preds = %31
  %42 = load %struct.smb_rq*, %struct.smb_rq** %15, align 8
  %43 = call i32 @smb_rq_getrequest(%struct.smb_rq* %42, %struct.mbchain** %16)
  %44 = load %struct.smb_rq*, %struct.smb_rq** %15, align 8
  %45 = call i32 @smb_rq_wstart(%struct.smb_rq* %44)
  %46 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %47 = call i32 @mb_put_uint8(%struct.mbchain* %46, i32 255)
  %48 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %49 = call i32 @mb_put_uint8(%struct.mbchain* %48, i32 0)
  %50 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %51 = call i32 @mb_put_uint16le(%struct.mbchain* %50, i32 0)
  %52 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %53 = load %struct.smbnode*, %struct.smbnode** %8, align 8
  %54 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %53, i32 0, i32 0
  %55 = ptrtoint i32* %54 to i32
  %56 = load i32, i32* @MB_MSYSTEM, align 4
  %57 = call i32 @mb_put_mem(%struct.mbchain* %52, i32 %55, i32 2, i32 %56)
  %58 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @mb_put_uint8(%struct.mbchain* %58, i32 %59)
  %61 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %62 = call i32 @mb_put_uint8(%struct.mbchain* %61, i32 0)
  %63 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %64 = call i32 @mb_put_uint32le(%struct.mbchain* %63, i64 0)
  %65 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @SMB_LOCK_RELEASE, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = call i32 @mb_put_uint16le(%struct.mbchain* %65, i32 %70)
  %72 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @SMB_LOCK_RELEASE, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 0, i32 1
  %78 = call i32 @mb_put_uint16le(%struct.mbchain* %72, i32 %77)
  %79 = load %struct.smb_rq*, %struct.smb_rq** %15, align 8
  %80 = call i32 @smb_rq_wend(%struct.smb_rq* %79)
  %81 = load %struct.smb_rq*, %struct.smb_rq** %15, align 8
  %82 = call i32 @smb_rq_bstart(%struct.smb_rq* %81)
  %83 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @mb_put_uint16le(%struct.mbchain* %83, i32 %84)
  %86 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @mb_put_uint32le(%struct.mbchain* %86, i64 %87)
  %89 = load %struct.mbchain*, %struct.mbchain** %16, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = sub nsw i64 %90, %91
  %93 = call i32 @mb_put_uint32le(%struct.mbchain* %89, i64 %92)
  %94 = load %struct.smb_rq*, %struct.smb_rq** %15, align 8
  %95 = call i32 @smb_rq_bend(%struct.smb_rq* %94)
  %96 = load %struct.smb_rq*, %struct.smb_rq** %15, align 8
  %97 = call i32 @smb_rq_simple(%struct.smb_rq* %96)
  store i32 %97, i32* %18, align 4
  %98 = load %struct.smb_rq*, %struct.smb_rq** %15, align 8
  %99 = call i32 @smb_rq_done(%struct.smb_rq* %98)
  %100 = load i32, i32* %18, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %41, %39
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i64) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
