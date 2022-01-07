; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_share = type { i32 }
%struct.timespec = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_rq = type { i32 }
%struct.mbchain = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SMB_COM_CLOSE = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_smb_close(%struct.smb_share* %0, i32 %1, %struct.timespec* %2, %struct.smb_cred* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_share*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.smb_cred*, align 8
  %10 = alloca %struct.smb_rq*, align 8
  %11 = alloca %struct.mbchain*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.smb_share* %0, %struct.smb_share** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store %struct.smb_cred* %3, %struct.smb_cred** %9, align 8
  %14 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %15 = call i32 @SSTOCP(%struct.smb_share* %14)
  %16 = load i32, i32* @SMB_COM_CLOSE, align 4
  %17 = load %struct.smb_cred*, %struct.smb_cred** %9, align 8
  %18 = call i32 @smb_rq_alloc(i32 %15, i32 %16, %struct.smb_cred* %17, %struct.smb_rq** %10)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %25 = call i32 @smb_rq_getrequest(%struct.smb_rq* %24, %struct.mbchain** %11)
  %26 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %27 = call i32 @smb_rq_wstart(%struct.smb_rq* %26)
  %28 = load %struct.mbchain*, %struct.mbchain** %11, align 8
  %29 = ptrtoint i32* %7 to i32
  %30 = load i32, i32* @MB_MSYSTEM, align 4
  %31 = call i32 @mb_put_mem(%struct.mbchain* %28, i32 %29, i32 4, i32 %30)
  %32 = load %struct.timespec*, %struct.timespec** %8, align 8
  %33 = icmp ne %struct.timespec* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %23
  %35 = load %struct.timespec*, %struct.timespec** %8, align 8
  %36 = load %struct.smb_share*, %struct.smb_share** %6, align 8
  %37 = call %struct.TYPE_4__* @SSTOVC(%struct.smb_share* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @smb_time_local2server(%struct.timespec* %35, i32 %40, i64* %12)
  br label %43

42:                                               ; preds = %23
  store i64 0, i64* %12, align 8
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.mbchain*, %struct.mbchain** %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @mb_put_uint32le(%struct.mbchain* %44, i64 %45)
  %47 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %48 = call i32 @smb_rq_wend(%struct.smb_rq* %47)
  %49 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %50 = call i32 @smb_rq_bstart(%struct.smb_rq* %49)
  %51 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %52 = call i32 @smb_rq_bend(%struct.smb_rq* %51)
  %53 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %54 = call i32 @smb_rq_simple(%struct.smb_rq* %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.smb_rq*, %struct.smb_rq** %10, align 8
  %56 = call i32 @smb_rq_done(%struct.smb_rq* %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %43, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @smb_rq_alloc(i32, i32, %struct.smb_cred*, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @smb_time_local2server(%struct.timespec*, i32, i64*) #1

declare dso_local %struct.TYPE_4__* @SSTOVC(%struct.smb_share*) #1

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
