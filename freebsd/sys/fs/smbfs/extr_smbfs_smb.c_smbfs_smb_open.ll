; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }

@SMB_COM_OPEN = common dso_local global i32 0, align 4
@SMB_FA_SYSTEM = common dso_local global i32 0, align 4
@SMB_FA_HIDDEN = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_open(%struct.smbnode* %0, i32 %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca %struct.smb_rq*, align 8
  %9 = alloca %struct.smb_share*, align 8
  %10 = alloca %struct.mbchain*, align 8
  %11 = alloca %struct.mdchain*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %17 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %18 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.smb_share*, %struct.smb_share** %20, align 8
  store %struct.smb_share* %21, %struct.smb_share** %9, align 8
  %22 = load %struct.smb_share*, %struct.smb_share** %9, align 8
  %23 = call i32 @SSTOCP(%struct.smb_share* %22)
  %24 = load i32, i32* @SMB_COM_OPEN, align 4
  %25 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %26 = call i32 @smb_rq_alloc(i32 %23, i32 %24, %struct.smb_cred* %25, %struct.smb_rq** %8)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %4, align 4
  br label %104

31:                                               ; preds = %3
  %32 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %33 = call i32 @smb_rq_getrequest(%struct.smb_rq* %32, %struct.mbchain** %10)
  %34 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %35 = call i32 @smb_rq_wstart(%struct.smb_rq* %34)
  %36 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mb_put_uint16le(%struct.mbchain* %36, i32 %37)
  %39 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %40 = load i32, i32* @SMB_FA_SYSTEM, align 4
  %41 = load i32, i32* @SMB_FA_HIDDEN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mb_put_uint16le(%struct.mbchain* %39, i32 %42)
  %44 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %45 = call i32 @smb_rq_wend(%struct.smb_rq* %44)
  %46 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %47 = call i32 @smb_rq_bstart(%struct.smb_rq* %46)
  %48 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %49 = load i32, i32* @SMB_DT_ASCII, align 4
  %50 = call i32 @mb_put_uint8(%struct.mbchain* %48, i32 %49)
  br label %51

51:                                               ; preds = %31
  %52 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %53 = load %struct.smb_share*, %struct.smb_share** %9, align 8
  %54 = call i32 @SSTOVC(%struct.smb_share* %53)
  %55 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %56 = call i32 @smbfs_fullpath(%struct.mbchain* %52, i32 %54, %struct.smbnode* %55, i32* null, i32 0)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %90

60:                                               ; preds = %51
  %61 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %62 = call i32 @smb_rq_bend(%struct.smb_rq* %61)
  %63 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %64 = call i32 @smb_rq_simple(%struct.smb_rq* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %90

68:                                               ; preds = %60
  %69 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %70 = call i32 @smb_rq_getreply(%struct.smb_rq* %69, %struct.mdchain** %11)
  %71 = load %struct.mdchain*, %struct.mdchain** %11, align 8
  %72 = call i64 @md_get_uint8(%struct.mdchain* %71, i32* %12)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 7
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %68
  %78 = load i32, i32* @EBADRPC, align 4
  store i32 %78, i32* %16, align 4
  br label %90

79:                                               ; preds = %74
  %80 = load %struct.mdchain*, %struct.mdchain** %11, align 8
  %81 = call i32 @md_get_uint16(%struct.mdchain* %80, i8** %13)
  %82 = load %struct.mdchain*, %struct.mdchain** %11, align 8
  %83 = call i32 @md_get_uint16le(%struct.mdchain* %82, i8** %14)
  %84 = load %struct.mdchain*, %struct.mdchain** %11, align 8
  %85 = call i32 @md_get_uint32(%struct.mdchain* %84, i32* null)
  %86 = load %struct.mdchain*, %struct.mdchain** %11, align 8
  %87 = call i32 @md_get_uint32(%struct.mdchain* %86, i32* null)
  %88 = load %struct.mdchain*, %struct.mdchain** %11, align 8
  %89 = call i32 @md_get_uint16le(%struct.mdchain* %88, i8** %15)
  br label %90

90:                                               ; preds = %79, %77, %67, %59
  %91 = load %struct.smb_rq*, %struct.smb_rq** %8, align 8
  %92 = call i32 @smb_rq_done(%struct.smb_rq* %91)
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %4, align 4
  br label %104

97:                                               ; preds = %90
  %98 = load i8*, i8** %13, align 8
  %99 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %100 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %103 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %97, %95, %29
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, i32, %struct.smbnode*, i32*, i32) #1

declare dso_local i32 @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_getreply(%struct.smb_rq*, %struct.mdchain**) #1

declare dso_local i64 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16(%struct.mdchain*, i8**) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i8**) #1

declare dso_local i32 @md_get_uint32(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
