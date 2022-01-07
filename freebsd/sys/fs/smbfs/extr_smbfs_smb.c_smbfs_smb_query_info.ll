; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_query_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_query_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smbfattr = type { i64, i32, i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SMB_COM_QUERY_INFORMATION = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_query_info(%struct.smbnode* %0, i8* %1, i32 %2, %struct.smbfattr* %3, %struct.smb_cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smbnode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smbfattr*, align 8
  %11 = alloca %struct.smb_cred*, align 8
  %12 = alloca %struct.smb_rq*, align 8
  %13 = alloca %struct.smb_share*, align 8
  %14 = alloca %struct.mbchain*, align 8
  %15 = alloca %struct.mdchain*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.smbnode* %0, %struct.smbnode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.smbfattr* %3, %struct.smbfattr** %10, align 8
  store %struct.smb_cred* %4, %struct.smb_cred** %11, align 8
  %20 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %21 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.smb_share*, %struct.smb_share** %23, align 8
  store %struct.smb_share* %24, %struct.smb_share** %13, align 8
  %25 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %26 = call i32 @SSTOCP(%struct.smb_share* %25)
  %27 = load i32, i32* @SMB_COM_QUERY_INFORMATION, align 4
  %28 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %29 = call i32 @smb_rq_alloc(i32 %26, i32 %27, %struct.smb_cred* %28, %struct.smb_rq** %12)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %6, align 4
  br label %106

34:                                               ; preds = %5
  %35 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %36 = call i32 @smb_rq_getrequest(%struct.smb_rq* %35, %struct.mbchain** %14)
  %37 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %38 = call i32 @smb_rq_wstart(%struct.smb_rq* %37)
  %39 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %40 = call i32 @smb_rq_wend(%struct.smb_rq* %39)
  %41 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %42 = call i32 @smb_rq_bstart(%struct.smb_rq* %41)
  %43 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %44 = load i32, i32* @SMB_DT_ASCII, align 4
  %45 = call i32 @mb_put_uint8(%struct.mbchain* %43, i32 %44)
  br label %46

46:                                               ; preds = %34
  %47 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %48 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %49 = call %struct.TYPE_7__* @SSTOVC(%struct.smb_share* %48)
  %50 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @smbfs_fullpath(%struct.mbchain* %47, %struct.TYPE_7__* %49, %struct.smbnode* %50, i8* %51, i32 %52)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %102

57:                                               ; preds = %46
  %58 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %59 = call i32 @smb_rq_bend(%struct.smb_rq* %58)
  %60 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %61 = call i32 @smb_rq_simple(%struct.smb_rq* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %102

65:                                               ; preds = %57
  %66 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %67 = call i32 @smb_rq_getreply(%struct.smb_rq* %66, %struct.mdchain** %15)
  %68 = load %struct.mdchain*, %struct.mdchain** %15, align 8
  %69 = call i64 @md_get_uint8(%struct.mdchain* %68, i32* %16)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 10
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %65
  %75 = load i32, i32* @EBADRPC, align 4
  store i32 %75, i32* %17, align 4
  br label %102

76:                                               ; preds = %71
  %77 = load %struct.mdchain*, %struct.mdchain** %15, align 8
  %78 = call i32 @md_get_uint16le(%struct.mdchain* %77, i32* %18)
  %79 = load i32, i32* %18, align 4
  %80 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %81 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mdchain*, %struct.mdchain** %15, align 8
  %83 = call i32 @md_get_uint32le(%struct.mdchain* %82, i64* %19)
  %84 = load i64, i64* %19, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load i64, i64* %19, align 8
  %88 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %89 = call %struct.TYPE_7__* @SSTOVC(%struct.smb_share* %88)
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %94 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %93, i32 0, i32 1
  %95 = call i32 @smb_time_server2local(i64 %87, i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %86, %76
  %97 = load %struct.mdchain*, %struct.mdchain** %15, align 8
  %98 = call i32 @md_get_uint32le(%struct.mdchain* %97, i64* %19)
  %99 = load i64, i64* %19, align 8
  %100 = load %struct.smbfattr*, %struct.smbfattr** %10, align 8
  %101 = getelementptr inbounds %struct.smbfattr, %struct.smbfattr* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %74, %64, %56
  %103 = load %struct.smb_rq*, %struct.smb_rq** %12, align 8
  %104 = call i32 @smb_rq_done(%struct.smb_rq* %103)
  %105 = load i32, i32* %17, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %32
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, %struct.TYPE_7__*, %struct.smbnode*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_getreply(%struct.smb_rq*, %struct.mdchain**) #1

declare dso_local i64 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint32le(%struct.mdchain*, i64*) #1

declare dso_local i32 @smb_time_server2local(i64, i32, i32*) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
