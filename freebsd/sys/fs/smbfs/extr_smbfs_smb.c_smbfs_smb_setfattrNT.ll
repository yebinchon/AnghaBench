; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setfattrNT.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setfattrNT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.timespec = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_t2rq = type { i32, i64, %struct.mbchain, %struct.mbchain }
%struct.mbchain = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SMB_TRANS2_SET_FILE_INFORMATION = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMB_SET_FILE_BASIC_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_setfattrNT(%struct.smbnode* %0, i32 %1, %struct.timespec* %2, %struct.timespec* %3, %struct.smb_cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smbnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.smb_cred*, align 8
  %12 = alloca %struct.smb_t2rq*, align 8
  %13 = alloca %struct.smb_share*, align 8
  %14 = alloca %struct.mbchain*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.timespec* %2, %struct.timespec** %9, align 8
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store %struct.smb_cred* %4, %struct.smb_cred** %11, align 8
  %18 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %19 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.smb_share*, %struct.smb_share** %21, align 8
  store %struct.smb_share* %22, %struct.smb_share** %13, align 8
  %23 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %24 = call i32 @SSTOCP(%struct.smb_share* %23)
  %25 = load i32, i32* @SMB_TRANS2_SET_FILE_INFORMATION, align 4
  %26 = load %struct.smb_cred*, %struct.smb_cred** %11, align 8
  %27 = call i32 @smb_t2_alloc(i32 %24, i32 %25, %struct.smb_cred* %26, %struct.smb_t2rq** %12)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %16, align 4
  store i32 %31, i32* %6, align 4
  br label %100

32:                                               ; preds = %5
  %33 = load %struct.smb_share*, %struct.smb_share** %13, align 8
  %34 = call %struct.TYPE_6__* @SSTOVC(%struct.smb_share* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %17, align 4
  %38 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %39 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %38, i32 0, i32 3
  store %struct.mbchain* %39, %struct.mbchain** %14, align 8
  %40 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %41 = call i32 @mb_init(%struct.mbchain* %40)
  %42 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %43 = load %struct.smbnode*, %struct.smbnode** %7, align 8
  %44 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %43, i32 0, i32 0
  %45 = ptrtoint i32* %44 to i32
  %46 = load i32, i32* @MB_MSYSTEM, align 4
  %47 = call i32 @mb_put_mem(%struct.mbchain* %42, i32 %45, i32 2, i32 %46)
  %48 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %49 = load i32, i32* @SMB_SET_FILE_BASIC_INFO, align 4
  %50 = call i32 @mb_put_uint16le(%struct.mbchain* %48, i32 %49)
  %51 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %52 = call i32 @mb_put_uint32le(%struct.mbchain* %51, i32 0)
  %53 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %54 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %53, i32 0, i32 2
  store %struct.mbchain* %54, %struct.mbchain** %14, align 8
  %55 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %56 = call i32 @mb_init(%struct.mbchain* %55)
  %57 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %58 = call i32 @mb_put_int64le(%struct.mbchain* %57, i64 0)
  %59 = load %struct.timespec*, %struct.timespec** %10, align 8
  %60 = icmp ne %struct.timespec* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %32
  %62 = load %struct.timespec*, %struct.timespec** %10, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @smb_time_local2NT(%struct.timespec* %62, i32 %63, i64* %15)
  br label %66

65:                                               ; preds = %32
  store i64 0, i64* %15, align 8
  br label %66

66:                                               ; preds = %65, %61
  %67 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @mb_put_int64le(%struct.mbchain* %67, i64 %68)
  %70 = load %struct.timespec*, %struct.timespec** %9, align 8
  %71 = icmp ne %struct.timespec* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.timespec*, %struct.timespec** %9, align 8
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @smb_time_local2NT(%struct.timespec* %73, i32 %74, i64* %15)
  br label %77

76:                                               ; preds = %66
  store i64 0, i64* %15, align 8
  br label %77

77:                                               ; preds = %76, %72
  %78 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @mb_put_int64le(%struct.mbchain* %78, i64 %79)
  %81 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i32 @mb_put_int64le(%struct.mbchain* %81, i64 %82)
  %84 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @mb_put_uint16le(%struct.mbchain* %84, i32 %85)
  %87 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %88 = call i32 @mb_put_uint32le(%struct.mbchain* %87, i32 0)
  %89 = load %struct.mbchain*, %struct.mbchain** %14, align 8
  %90 = call i32 @mb_put_uint16le(%struct.mbchain* %89, i32 0)
  %91 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %92 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %91, i32 0, i32 0
  store i32 2, i32* %92, align 8
  %93 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %94 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %96 = call i32 @smb_t2_request(%struct.smb_t2rq* %95)
  store i32 %96, i32* %16, align 4
  %97 = load %struct.smb_t2rq*, %struct.smb_t2rq** %12, align 8
  %98 = call i32 @smb_t2_done(%struct.smb_t2rq* %97)
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %77, %30
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @smb_t2_alloc(i32, i32, %struct.smb_cred*, %struct.smb_t2rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local %struct.TYPE_6__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @mb_init(%struct.mbchain*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_int64le(%struct.mbchain*, i64) #1

declare dso_local i32 @smb_time_local2NT(%struct.timespec*, i32, i64*) #1

declare dso_local i32 @smb_t2_request(%struct.smb_t2rq*) #1

declare dso_local i32 @smb_t2_done(%struct.smb_t2rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
