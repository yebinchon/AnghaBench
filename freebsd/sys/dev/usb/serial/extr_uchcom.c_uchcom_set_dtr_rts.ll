; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_set_dtr_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uchcom.c_uchcom_set_dtr_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uchcom_softc = type { i64, i64, i64 }

@UCHCOM_DTR_MASK = common dso_local global i32 0, align 4
@UCHCOM_RTS_MASK = common dso_local global i32 0, align 4
@UCHCOM_VER_20 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uchcom_softc*)* @uchcom_set_dtr_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uchcom_set_dtr_rts(%struct.uchcom_softc* %0) #0 {
  %2 = alloca %struct.uchcom_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.uchcom_softc* %0, %struct.uchcom_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.uchcom_softc*, %struct.uchcom_softc** %2, align 8
  %5 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @UCHCOM_DTR_MASK, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.uchcom_softc*, %struct.uchcom_softc** %2, align 8
  %14 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @UCHCOM_RTS_MASK, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.uchcom_softc*, %struct.uchcom_softc** %2, align 8
  %23 = getelementptr inbounds %struct.uchcom_softc, %struct.uchcom_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UCHCOM_VER_20, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.uchcom_softc*, %struct.uchcom_softc** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = xor i32 %29, -1
  %31 = call i32 @uchcom_set_dtr_rts_10(%struct.uchcom_softc* %28, i32 %30)
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.uchcom_softc*, %struct.uchcom_softc** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = xor i32 %34, -1
  %36 = call i32 @uchcom_set_dtr_rts_20(%struct.uchcom_softc* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @uchcom_set_dtr_rts_10(%struct.uchcom_softc*, i32) #1

declare dso_local i32 @uchcom_set_dtr_rts_20(%struct.uchcom_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
