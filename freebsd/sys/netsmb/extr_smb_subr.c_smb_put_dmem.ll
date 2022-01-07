; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_put_dmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_put_dmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbchain = type { %struct.iconv_drv*, i32 }
%struct.iconv_drv = type { i32 }
%struct.smb_vc = type { %struct.iconv_drv* }

@MB_MSYSTEM = common dso_local global i32 0, align 4
@smb_copy_iconv = common dso_local global i32 0, align 4
@MB_MCUSTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_put_dmem(%struct.mbchain* %0, %struct.smb_vc* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbchain*, align 8
  %8 = alloca %struct.smb_vc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iconv_drv*, align 8
  store %struct.mbchain* %0, %struct.mbchain** %7, align 8
  store %struct.smb_vc* %1, %struct.smb_vc** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %14 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %13, i32 0, i32 0
  %15 = load %struct.iconv_drv*, %struct.iconv_drv** %14, align 8
  store %struct.iconv_drv* %15, %struct.iconv_drv** %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %47

19:                                               ; preds = %5
  %20 = load %struct.iconv_drv*, %struct.iconv_drv** %12, align 8
  %21 = icmp eq %struct.iconv_drv* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @MB_MSYSTEM, align 4
  %27 = call i32 @mb_put_mem(%struct.mbchain* %23, i8* %24, i64 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %47

28:                                               ; preds = %19
  %29 = load i32, i32* @smb_copy_iconv, align 4
  %30 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %31 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.iconv_drv*, %struct.iconv_drv** %12, align 8
  %33 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %34 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %33, i32 0, i32 0
  store %struct.iconv_drv* %32, %struct.iconv_drv** %34, align 8
  %35 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  %36 = call i64 @SMB_UNICODE_STRINGS(%struct.smb_vc* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %40 = call i32 @mb_put_padbyte(%struct.mbchain* %39)
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.mbchain*, %struct.mbchain** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* @MB_MCUSTOM, align 4
  %46 = call i32 @mb_put_mem(%struct.mbchain* %42, i8* %43, i64 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %41, %22, %18
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i8*, i64, i32) #1

declare dso_local i64 @SMB_UNICODE_STRINGS(%struct.smb_vc*) #1

declare dso_local i32 @mb_put_padbyte(%struct.mbchain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
