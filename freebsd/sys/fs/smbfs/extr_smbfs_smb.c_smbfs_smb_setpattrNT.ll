; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setpattrNT.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setpattrNT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.timespec = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_t2rq = type { i32, i32, %struct.mbchain, %struct.mbchain }
%struct.mbchain = type { i32 }
%struct.smb_vc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SMB_TRANS2_SET_PATH_INFORMATION = common dso_local global i32 0, align 4
@SMB_SET_FILE_BASIC_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_setpattrNT(%struct.smbnode* %0, i32 %1, %struct.timespec* %2, %struct.timespec* %3, %struct.smb_cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smbnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.smb_cred*, align 8
  %12 = alloca %struct.smb_t2rq*, align 8
  %13 = alloca %struct.smb_share*, align 8
  %14 = alloca %struct.smb_vc*, align 8
  %15 = alloca %struct.mbchain*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store %struct.smb_cred* %4, %struct.smb_cred** %11, align 8
  %19 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %20 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.smb_share*, %struct.smb_share** %22, align 8
  store %struct.smb_share* %23, %struct.smb_share** %13, align 8
  %24 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %25 = call %struct.smb_vc* @SSTOVC(%struct.smb_share* %24)
  store %struct.smb_vc* %25, %struct.smb_vc** %14, align 8
  %26 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %27 = call i32 @SSTOCP(%struct.smb_share* %26)
  %28 = load i32, i32* @SMB_TRANS2_SET_PATH_INFORMATION, align 4
  %29 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %30 = call i32 @smb_t2_alloc(i32 %27, i32 %28, %struct.smb_cred* %29, %struct.smb_t2rq** %12)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %6, align 4
  br label %103

35:                                               ; preds = %5
  %36 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %37 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %36, i32 0, i32 3
  store %struct.mbchain* %37, %struct.mbchain** %15, align 8
  %38 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %39 = call i32 @mb_init(%struct.mbchain* %38)
  %40 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %41 = load i32, i32* @SMB_SET_FILE_BASIC_INFO, align 4
  %42 = call i32 @mb_put_uint16le(%struct.mbchain* %40, i32 %41)
  %43 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %44 = call i32 @mb_put_uint32le(%struct.mbchain* %43, i32 0)
  %45 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %46 = load %struct.smb_vc*, %struct.smb_vc** %14, align 8
  %47 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %48 = call i32 @smbfs_fullpath(%struct.mbchain* %45, %struct.smb_vc* %46, %struct.smbnode* %47, i32* null, i32 0)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %53 = call i32 @smb_t2_done(%struct.smb_t2rq* %52)
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %6, align 4
  br label %103

55:                                               ; preds = %35
  %56 = load %struct.smb_vc*, %struct.smb_vc** %14, align 8
  %57 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  %60 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %61 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %60, i32 0, i32 2
  store %struct.mbchain* %61, %struct.mbchain** %15, align 8
  %62 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %63 = call i32 @mb_init(%struct.mbchain* %62)
  %64 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %65 = call i32 @mb_put_int64le(%struct.mbchain* %64, i64 0)
  %66 = load %struct.timespec*, %struct.timespec** %10, align 8
  %67 = icmp ne %struct.timespec* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load %struct.timespec*, %struct.timespec** %10, align 8
  %70 = load i32, i32* %18, align 4
  %71 = call i32 @smb_time_local2NT(%struct.timespec* %69, i32 %70, i64* %16)
  br label %73

72:                                               ; preds = %55
  store i64 0, i64* %16, align 8
  br label %73

73:                                               ; preds = %72, %68
  %74 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @mb_put_int64le(%struct.mbchain* %74, i64 %75)
  %77 = load %struct.timespec*, %struct.timespec** %9, align 8
  %78 = icmp ne %struct.timespec* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.timespec*, %struct.timespec** %9, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @smb_time_local2NT(%struct.timespec* %80, i32 %81, i64* %16)
  br label %84

83:                                               ; preds = %73
  store i64 0, i64* %16, align 8
  br label %84

84:                                               ; preds = %83, %79
  %85 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i32 @mb_put_int64le(%struct.mbchain* %85, i64 %86)
  %88 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call i32 @mb_put_int64le(%struct.mbchain* %88, i64 %89)
  %91 = load %struct.mbchain*, %struct.mbchain** %15, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @mb_put_uint32le(%struct.mbchain* %91, i32 %92)
  %94 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %95 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %94, i32 0, i32 0
  store i32 24, i32* %95, align 4
  %96 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %97 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %96, i32 0, i32 1
  store i32 56, i32* %97, align 4
  %98 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %99 = call i32 @smb_t2_request(%struct.smb_t2rq* %98)
  store i32 %99, i32* %17, align 4
  %100 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %101 = call i32 @smb_t2_done(%struct.smb_t2rq* %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %84, %51, %33
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.smb_vc* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_t2_alloc(i32, i32, %struct.smb_cred*, %struct.smb_t2rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @mb_init(%struct.mbchain*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, %struct.smb_vc*, %struct.smbnode*, i32*, i32) #1

declare dso_local i32 @smb_t2_done(%struct.smb_t2rq*) #1

declare dso_local i32 @mb_put_int64le(%struct.mbchain*, i64) #1

declare dso_local i32 @smb_time_local2NT(%struct.timespec*, i32, i64*) #1

declare dso_local i32 @smb_t2_request(%struct.smb_t2rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
