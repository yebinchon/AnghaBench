; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }
%struct.timespec = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SMB_COM_CREATE = common dso_local global i32 0, align 4
@SMB_FA_ARCHIVE = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_create(%struct.smbnode* %0, i8* %1, i32 %2, %struct.smb_cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbnode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca %struct.smb_rq*, align 8
  %11 = alloca %struct.smb_share*, align 8
  %12 = alloca %struct.mbchain*, align 8
  %13 = alloca %struct.mdchain*, align 8
  %14 = alloca %struct.timespec, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.smb_cred* %3, %struct.smb_cred** %9, align 8
  %19 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %20 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.smb_share*, %struct.smb_share** %22, align 8
  store %struct.smb_share* %23, %struct.smb_share** %11, align 8
  %24 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %25 = call i32 @SSTOCP(%struct.smb_share* %24)
  %26 = load i32, i32* @SMB_COM_CREATE, align 4
  %27 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %28 = call i32 @smb_rq_alloc(i32 %25, i32 %26, %struct.smb_cred* %27, %struct.smb_rq** %10)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %5, align 4
  br label %101

33:                                               ; preds = %4
  %34 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %35 = call i32 @smb_rq_getrequest(%struct.smb_rq* %34, %struct.mbchain** %12)
  %36 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %37 = call i32 @smb_rq_wstart(%struct.smb_rq* %36)
  %38 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %39 = load i32, i32* @SMB_FA_ARCHIVE, align 4
  %40 = call i32 @mb_put_uint16le(%struct.mbchain* %38, i32 %39)
  %41 = call i32 @nanotime(%struct.timespec* %14)
  %42 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %43 = call %struct.TYPE_7__* @SSTOVC(%struct.smb_share* %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @smb_time_local2server(%struct.timespec* %14, i32 %46, i32* %17)
  %48 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @mb_put_uint32le(%struct.mbchain* %48, i32 %49)
  %51 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %52 = call i32 @smb_rq_wend(%struct.smb_rq* %51)
  %53 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %54 = call i32 @smb_rq_bstart(%struct.smb_rq* %53)
  %55 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %56 = load i32, i32* @SMB_DT_ASCII, align 4
  %57 = call i32 @mb_put_uint8(%struct.mbchain* %55, i32 %56)
  %58 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %59 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %60 = call %struct.TYPE_7__* @SSTOVC(%struct.smb_share* %59)
  %61 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @smbfs_fullpath(%struct.mbchain* %58, %struct.TYPE_7__* %60, %struct.smbnode* %61, i8* %62, i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %33
  %68 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %69 = call i32 @smb_rq_bend(%struct.smb_rq* %68)
  %70 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %71 = call i32 @smb_rq_simple(%struct.smb_rq* %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %67
  %75 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %76 = call i32 @smb_rq_getreply(%struct.smb_rq* %75, %struct.mdchain** %13)
  %77 = load %struct.mdchain*, %struct.mdchain** %13, align 8
  %78 = call i32 @md_get_uint8(%struct.mdchain* %77, i32* %15)
  %79 = load i32, i32* %15, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.mdchain*, %struct.mdchain** %13, align 8
  %83 = call i32 @md_get_uint16(%struct.mdchain* %82, i32* %16)
  br label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @EBADRPC, align 4
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %33
  %89 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %90 = call i32 @smb_rq_done(%struct.smb_rq* %89)
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %18, align 4
  store i32 %94, i32* %5, align 4
  br label %101

95:                                               ; preds = %88
  %96 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %99 = call i32 @smbfs_smb_close(%struct.smb_share* %96, i32 %97, %struct.timespec* %14, %struct.smb_cred* %98)
  %100 = load i32, i32* %18, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %95, %93, %31
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i32 @smb_time_local2server(%struct.timespec*, i32, i32*) #1

declare dso_local %struct.TYPE_7__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, %struct.TYPE_7__*, %struct.smbnode*, i8*, i32) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_getreply(%struct.smb_rq*, %struct.mdchain**) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

declare dso_local i32 @smbfs_smb_close(%struct.smb_share*, i32, %struct.timespec*, %struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
