; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setftime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_setftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.timespec = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SMB_COM_SET_INFORMATION2 = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_setftime(%struct.smbnode* %0, %struct.timespec* %1, %struct.timespec* %2, %struct.smb_cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smbnode*, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca %struct.smb_rq*, align 8
  %11 = alloca %struct.smb_share*, align 8
  %12 = alloca %struct.mbchain*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %6, align 8
  store %struct.timespec* %1, %struct.timespec** %7, align 8
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store %struct.smb_cred* %3, %struct.smb_cred** %9, align 8
  %17 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %18 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.smb_share*, %struct.smb_share** %20, align 8
  store %struct.smb_share* %21, %struct.smb_share** %11, align 8
  %22 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %23 = call i32 @SSTOCP(%struct.smb_share* %22)
  %24 = load i32, i32* @SMB_COM_SET_INFORMATION2, align 4
  %25 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %26 = call i32 @smb_rq_alloc(i32 %23, i32 %24, %struct.smb_cred* %25, %struct.smb_rq** %10)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %90

31:                                               ; preds = %4
  %32 = load %struct.smb_share*, %struct.smb_share** %11, align 8
  %33 = call %struct.TYPE_6__* @SSTOVC(%struct.smb_share* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %38 = call i32 @smb_rq_getrequest(%struct.smb_rq* %37, %struct.mbchain** %12)
  %39 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %40 = call i32 @smb_rq_wstart(%struct.smb_rq* %39)
  %41 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %42 = load %struct.smbnode*, %struct.smbnode** %6, align 8
  %43 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %42, i32 0, i32 0
  %44 = ptrtoint i32* %43 to i32
  %45 = load i32, i32* @MB_MSYSTEM, align 4
  %46 = call i32 @mb_put_mem(%struct.mbchain* %41, i32 %44, i32 2, i32 %45)
  %47 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %48 = call i32 @mb_put_uint32le(%struct.mbchain* %47, i32 0)
  %49 = load %struct.timespec*, %struct.timespec** %8, align 8
  %50 = icmp ne %struct.timespec* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %31
  %52 = load %struct.timespec*, %struct.timespec** %8, align 8
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @smb_time_unix2dos(%struct.timespec* %52, i32 %53, i64* %13, i64* %14, i32* null)
  br label %56

55:                                               ; preds = %31
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %56

56:                                               ; preds = %55, %51
  %57 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @mb_put_uint16le(%struct.mbchain* %57, i64 %58)
  %60 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @mb_put_uint16le(%struct.mbchain* %60, i64 %61)
  %63 = load %struct.timespec*, %struct.timespec** %7, align 8
  %64 = icmp ne %struct.timespec* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.timespec*, %struct.timespec** %7, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @smb_time_unix2dos(%struct.timespec* %66, i32 %67, i64* %13, i64* %14, i32* null)
  br label %70

69:                                               ; preds = %56
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %70

70:                                               ; preds = %69, %65
  %71 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @mb_put_uint16le(%struct.mbchain* %71, i64 %72)
  %74 = load %struct.mbchain*, %struct.mbchain** %12, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @mb_put_uint16le(%struct.mbchain* %74, i64 %75)
  %77 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %78 = call i32 @smb_rq_wend(%struct.smb_rq* %77)
  %79 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %80 = call i32 @smb_rq_bstart(%struct.smb_rq* %79)
  %81 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %82 = call i32 @smb_rq_bend(%struct.smb_rq* %81)
  %83 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %84 = call i32 @smb_rq_simple(%struct.smb_rq* %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @SMBSDEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %88 = call i32 @smb_rq_done(%struct.smb_rq* %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %70, %29
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local %struct.TYPE_6__* @SSTOVC(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_time_unix2dos(%struct.timespec*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i64) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @SMBSDEBUG(i8*, i32) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
