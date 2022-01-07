; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setpattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setpattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.timespec = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@SMB_COM_SET_INFORMATION = common dso_local global i32 0, align 4
@MB_MZERO = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"smb_rq_simple(rqp) => error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_setpattr(%struct.smbnode* %0, i32 %1, %struct.timespec* %2, %struct.smb_cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca %struct.smb_rq*, align 8
  %11 = alloca %struct.smb_share*, align 8
  %12 = alloca %struct.mbchain*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store %struct.smb_cred* %3, %struct.smb_cred** %9, align 8
  %16 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %17 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.smb_share*, %struct.smb_share** %19, align 8
  store %struct.smb_share* %20, %struct.smb_share** %11, align 8
  %21 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %22 = call i32 @SSTOCP(%struct.smb_share* %21)
  %23 = load i32, i32* @SMB_COM_SET_INFORMATION, align 4
  %24 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %25 = call i32 @smb_rq_alloc(i32 %22, i32 %23, %struct.smb_cred* %24, %struct.smb_rq** %10)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %103

30:                                               ; preds = %4
  %31 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %32 = call %struct.TYPE_8__* @SSTOVC(%struct.smb_share* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %37 = call i32 @smb_rq_getrequest(%struct.smb_rq* %36, %struct.mbchain** %12)
  %38 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %39 = call i32 @smb_rq_wstart(%struct.smb_rq* %38)
  %40 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mb_put_uint16le(%struct.mbchain* %40, i32 %41)
  %43 = load %struct.timespec*, %struct.timespec** %8, align 8
  %44 = icmp ne %struct.timespec* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load %struct.timespec*, %struct.timespec** %8, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @smb_time_local2server(%struct.timespec* %46, i32 %47, i64* %13)
  br label %50

49:                                               ; preds = %30
  store i64 0, i64* %13, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @mb_put_uint32le(%struct.mbchain* %51, i64 %52)
  %54 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %55 = load i32, i32* @MB_MZERO, align 4
  %56 = call i32 @mb_put_mem(%struct.mbchain* %54, i32* null, i32 10, i32 %55)
  %57 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %58 = call i32 @smb_rq_wend(%struct.smb_rq* %57)
  %59 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %60 = call i32 @smb_rq_bstart(%struct.smb_rq* %59)
  %61 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %62 = load i32, i32* @SMB_DT_ASCII, align 4
  %63 = call i32 @mb_put_uint8(%struct.mbchain* %61, i32 %62)
  br label %64

64:                                               ; preds = %50
  %65 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %66 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %67 = call %struct.TYPE_8__* @SSTOVC(%struct.smb_share* %66)
  %68 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %69 = call i32 @smbfs_fullpath(%struct.mbchain* %65, %struct.TYPE_8__* %67, %struct.smbnode* %68, i32* null, i32 0)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %99

73:                                               ; preds = %64
  %74 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %75 = load i32, i32* @SMB_DT_ASCII, align 4
  %76 = call i32 @mb_put_uint8(%struct.mbchain* %74, i32 %75)
  %77 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %78 = call %struct.TYPE_8__* @SSTOVC(%struct.smb_share* %77)
  %79 = call i64 @SMB_UNICODE_STRINGS(%struct.TYPE_8__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %83 = call i32 @mb_put_padbyte(%struct.mbchain* %82)
  %84 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %85 = call i32 @mb_put_uint8(%struct.mbchain* %84, i32 0)
  br label %86

86:                                               ; preds = %81, %73
  %87 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %88 = call i32 @mb_put_uint8(%struct.mbchain* %87, i32 0)
  %89 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %90 = call i32 @smb_rq_bend(%struct.smb_rq* %89)
  %91 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %92 = call i32 @smb_rq_simple(%struct.smb_rq* %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @SMBERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %99

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %95, %72
  %100 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %101 = call i32 @smb_rq_done(%struct.smb_rq* %100)
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %99, %28
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local %struct.TYPE_8__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_time_local2server(%struct.timespec*, i32, i64*) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i64) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32*, i32, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, %struct.TYPE_8__*, %struct.smbnode*, i32*, i32) #1

declare dso_local i64 @SMB_UNICODE_STRINGS(%struct.TYPE_8__*) #1

declare dso_local i32 @mb_put_padbyte(%struct.mbchain*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @SMBERROR(i8*, i32) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
