; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_softc = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8* }

@USB_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udl_softc*, i8*, i8*, i64, i64, i8**, i64)* @udl_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_ctrl_msg(%struct.udl_softc* %0, i8* %1, i8* %2, i64 %3, i64 %4, i8** %5, i64 %6) #0 {
  %8 = alloca %struct.udl_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_3__, align 8
  %16 = alloca i32, align 4
  store %struct.udl_softc* %0, %struct.udl_softc** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8** %5, i8*** %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @USETW(i32 %22, i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @USETW(i32 %26, i64 %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @USETW(i32 %30, i64 %31)
  %33 = load %struct.udl_softc*, %struct.udl_softc** %8, align 8
  %34 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8**, i8*** %13, align 8
  %37 = load i32, i32* @USB_DEFAULT_TIMEOUT, align 4
  %38 = call i32 @usbd_do_request_flags(i32 %35, i32* null, %struct.TYPE_3__* %15, i8** %36, i32 0, i32* null, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @usbd_errstr(i32 %39)
  %41 = call i32 @DPRINTF(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %16, align 4
  ret i32 %42
}

declare dso_local i32 @USETW(i32, i64) #1

declare dso_local i32 @usbd_do_request_flags(i32, i32*, %struct.TYPE_3__*, i8**, i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

declare dso_local i32 @usbd_errstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
