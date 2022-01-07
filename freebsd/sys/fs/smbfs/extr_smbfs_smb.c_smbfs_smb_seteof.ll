; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_seteof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_seteof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smb_share* }
%struct.smb_share = type { i32 }
%struct.smb_cred = type { i32 }
%struct.smb_t2rq = type { i32, i64, %struct.mbchain, %struct.mbchain }
%struct.mbchain = type { i32 }

@SMB_TRANS2_SET_FILE_INFORMATION = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMB_SET_FILE_END_OF_FILE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbnode*, i32, %struct.smb_cred*)* @smbfs_smb_seteof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_smb_seteof(%struct.smbnode* %0, i32 %1, %struct.smb_cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smbnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_cred*, align 8
  %8 = alloca %struct.smb_t2rq*, align 8
  %9 = alloca %struct.smb_share*, align 8
  %10 = alloca %struct.mbchain*, align 8
  %11 = alloca i32, align 4
  store %struct.smbnode* %0, %struct.smbnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.smb_cred* %2, %struct.smb_cred** %7, align 8
  %12 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %13 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.smb_share*, %struct.smb_share** %15, align 8
  store %struct.smb_share* %16, %struct.smb_share** %9, align 8
  %17 = load %struct.smb_share*, %struct.smb_share** %9, align 8
  %18 = call i32 @SSTOCP(%struct.smb_share* %17)
  %19 = load i32, i32* @SMB_TRANS2_SET_FILE_INFORMATION, align 4
  %20 = load %struct.smb_cred*, %struct.smb_cred** %7, align 8
  %21 = call i32 @smb_t2_alloc(i32 %18, i32 %19, %struct.smb_cred* %20, %struct.smb_t2rq** %8)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %28 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %27, i32 0, i32 3
  store %struct.mbchain* %28, %struct.mbchain** %10, align 8
  %29 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %30 = call i32 @mb_init(%struct.mbchain* %29)
  %31 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %32 = load %struct.smbnode*, %struct.smbnode** %5, align 8
  %33 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %32, i32 0, i32 0
  %34 = ptrtoint i32* %33 to i32
  %35 = load i32, i32* @MB_MSYSTEM, align 4
  %36 = call i32 @mb_put_mem(%struct.mbchain* %31, i32 %34, i32 2, i32 %35)
  %37 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %38 = load i32, i32* @SMB_SET_FILE_END_OF_FILE_INFO, align 4
  %39 = call i32 @mb_put_uint16le(%struct.mbchain* %37, i32 %38)
  %40 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %41 = call i32 @mb_put_uint32le(%struct.mbchain* %40, i32 0)
  %42 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %43 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %42, i32 0, i32 2
  store %struct.mbchain* %43, %struct.mbchain** %10, align 8
  %44 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %45 = call i32 @mb_init(%struct.mbchain* %44)
  %46 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @mb_put_int64le(%struct.mbchain* %46, i32 %47)
  %49 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %50 = call i32 @mb_put_uint32le(%struct.mbchain* %49, i32 0)
  %51 = load %struct.mbchain*, %struct.mbchain** %10, align 8
  %52 = call i32 @mb_put_uint16le(%struct.mbchain* %51, i32 0)
  %53 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %54 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %53, i32 0, i32 0
  store i32 2, i32* %54, align 8
  %55 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %56 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %58 = call i32 @smb_t2_request(%struct.smb_t2rq* %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.smb_t2rq*, %struct.smb_t2rq** %8, align 8
  %60 = call i32 @smb_t2_done(%struct.smb_t2rq* %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %26, %24
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @smb_t2_alloc(i32, i32, %struct.smb_cred*, %struct.smb_t2rq**) #1

declare dso_local i32 @SSTOCP(%struct.smb_share*) #1

declare dso_local i32 @mb_init(%struct.mbchain*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_int64le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_t2_request(%struct.smb_t2rq*) #1

declare dso_local i32 @smb_t2_done(%struct.smb_t2rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
