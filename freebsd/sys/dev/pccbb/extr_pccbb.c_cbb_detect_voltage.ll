; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_detect_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_detect_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32 }

@CARD_UKN_CARD = common dso_local global i32 0, align 4
@CBB_SOCKET_STATE = common dso_local global i32 0, align 4
@CBB_STATE_5VCARD = common dso_local global i32 0, align 4
@CBB_STATE_5VSOCK = common dso_local global i32 0, align 4
@CARD_5V_CARD = common dso_local global i32 0, align 4
@CBB_STATE_3VCARD = common dso_local global i32 0, align 4
@CBB_STATE_3VSOCK = common dso_local global i32 0, align 4
@CARD_3V_CARD = common dso_local global i32 0, align 4
@CBB_STATE_XVCARD = common dso_local global i32 0, align 4
@CBB_STATE_XVSOCK = common dso_local global i32 0, align 4
@CARD_XV_CARD = common dso_local global i32 0, align 4
@CBB_STATE_YVCARD = common dso_local global i32 0, align 4
@CBB_STATE_YVSOCK = common dso_local global i32 0, align 4
@CARD_YV_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cbb_detect_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbb_detect_voltage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cbb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.cbb_softc* @device_get_softc(i32 %6)
  store %struct.cbb_softc* %7, %struct.cbb_softc** %3, align 8
  %8 = load i32, i32* @CARD_UKN_CARD, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %10 = load i32, i32* @CBB_SOCKET_STATE, align 4
  %11 = call i32 @cbb_get(%struct.cbb_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @CBB_STATE_5VCARD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CBB_STATE_5VSOCK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @CARD_5V_CARD, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %16, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CBB_STATE_3VCARD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CBB_STATE_3VSOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @CARD_3V_CARD, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30, %25
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @CBB_STATE_XVCARD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CBB_STATE_XVSOCK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @CARD_XV_CARD, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %44, %39
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @CBB_STATE_YVCARD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CBB_STATE_YVSOCK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @CARD_YV_CARD, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %58, %53
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
