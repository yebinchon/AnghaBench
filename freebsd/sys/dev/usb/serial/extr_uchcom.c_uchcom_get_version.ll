; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_get_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uchcom_softc = type { i32 }

@UCHCOM_INPUT_BUF_SIZE = common dso_local global i32 0, align 4
@UCHCOM_REQ_GET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uchcom_softc*, i32*)* @uchcom_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uchcom_get_version(%struct.uchcom_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.uchcom_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.uchcom_softc* %0, %struct.uchcom_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @UCHCOM_INPUT_BUF_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load %struct.uchcom_softc*, %struct.uchcom_softc** %3, align 8
  %12 = load i32, i32* @UCHCOM_REQ_GET_VERSION, align 4
  %13 = mul nuw i64 4, %8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @uchcom_ctrl_read(%struct.uchcom_softc* %11, i32 %12, i32 0, i32 0, i32* %10, i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds i32, i32* %10, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %23)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uchcom_ctrl_read(%struct.uchcom_softc*, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
