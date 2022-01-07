; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setfsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setfsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }

@NFLUSHWIRE = common dso_local global i32 0, align 4
@SMB_COM_WRITE = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMB_DT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_setfsize(%struct.smbnode* %0, i64 %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbnode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca %struct.smb_share*, align 8
  %9 = alloca %struct.smb_rq*, align 8
  %10 = alloca %struct.mbchain*, align 8
  %11 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %12 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %13 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  store %struct.smb_share* %16, %struct.smb_share** %8, align 8
  %17 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %20 = call i32 @smbfs_smb_seteof(%struct.smbnode* %17, i64 %18, %struct.smb_cred* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @NFLUSHWIRE, align 4
  %24 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %25 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %73

28:                                               ; preds = %3
  %29 = load %struct.smb_share*, %struct.smb_share** %8, align 8
  %30 = call i32 @SSTOCP(%struct.smb_share* %29)
  %31 = load i32, i32* @SMB_COM_WRITE, align 4
  %32 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %33 = call i32 @smb_rq_alloc(i32 %30, i32 %31, %struct.smb_cred* %32, %struct.smb_rq** %9)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %28
  %39 = load %struct.smb_rq*, %struct.smb_rq** %9, align 8
  %40 = call i32 @smb_rq_getrequest(%struct.smb_rq* %39, %struct.mbchain** %10)
  %41 = load %struct.smb_rq*, %struct.smb_rq** %9, align 8
  %42 = call i32 @smb_rq_wstart(%struct.smb_rq* %41)
  %43 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %44 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %45 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %44, i32 0, i32 0
  %46 = ptrtoint i32* %45 to i32
  %47 = load i32, i32* @MB_MSYSTEM, align 4
  %48 = call i32 @mb_put_mem(%struct.mbchain* %43, i32 %46, i32 2, i32 %47)
  %49 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %50 = call i32 @mb_put_uint16le(%struct.mbchain* %49, i32 0)
  %51 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @mb_put_uint32le(%struct.mbchain* %51, i32 %53)
  %55 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %56 = call i32 @mb_put_uint16le(%struct.mbchain* %55, i32 0)
  %57 = load %struct.smb_rq*, %struct.smb_rq** %9, align 8
  %58 = call i32 @smb_rq_wend(%struct.smb_rq* %57)
  %59 = load %struct.smb_rq*, %struct.smb_rq** %9, align 8
  %60 = call i32 @smb_rq_bstart(%struct.smb_rq* %59)
  %61 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %62 = load i32, i32* @SMB_DT_DATA, align 4
  %63 = call i32 @mb_put_uint8(%struct.mbchain* %61, i32 %62)
  %64 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %65 = call i32 @mb_put_uint16le(%struct.mbchain* %64, i32 0)
  %66 = load %struct.smb_rq*, %struct.smb_rq** %9, align 8
  %67 = call i32 @smb_rq_bend(%struct.smb_rq* %66)
  %68 = load %struct.smb_rq*, %struct.smb_rq** %9, align 8
  %69 = call i32 @smb_rq_simple(%struct.smb_rq* %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.smb_rq*, %struct.smb_rq** %9, align 8
  %71 = call i32 @smb_rq_done(%struct.smb_rq* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %38, %36, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @smbfs_smb_seteof(%struct.smbnode*, i64, %struct.smb_cred*) #1

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
