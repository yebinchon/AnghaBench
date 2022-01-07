; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_put_asunistring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_subr.c_smb_put_asunistring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_rq = type { %struct.TYPE_2__*, %struct.mbchain }
%struct.TYPE_2__ = type { %struct.iconv_drv* }
%struct.iconv_drv = type { i32 }
%struct.mbchain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_put_asunistring(%struct.smb_rq* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smb_rq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mbchain*, align 8
  %7 = alloca %struct.iconv_drv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smb_rq* %0, %struct.smb_rq** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %11 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %10, i32 0, i32 1
  store %struct.mbchain* %11, %struct.mbchain** %6, align 8
  %12 = load %struct.smb_rq*, %struct.smb_rq** %4, align 8
  %13 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.iconv_drv*, %struct.iconv_drv** %15, align 8
  store %struct.iconv_drv* %16, %struct.iconv_drv** %7, align 8
  br label %17

17:                                               ; preds = %34, %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.iconv_drv*, %struct.iconv_drv** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  %25 = ptrtoint i8* %23 to i32
  %26 = call i32 @iconv_convmem(%struct.iconv_drv* %22, i32* %8, i32 %25, i32 1)
  %27 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mb_put_uint16le(%struct.mbchain* %27, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %21
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %37 = call i32 @mb_put_uint16le(%struct.mbchain* %36, i32 0)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @iconv_convmem(%struct.iconv_drv*, i32*, i32, i32) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
