; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_umoscom.c_umoscom_cfg_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.umoscom_softc* }
%struct.umoscom_softc = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UMOSCOM_LSR = common dso_local global i32 0, align 4
@UMOSCOM_MSR = common dso_local global i32 0, align 4
@UMOSCOM_MSR_CTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@UMOSCOM_MSR_CD = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@UMOSCOM_MSR_RI = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@UMOSCOM_MSR_RTS = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, i32*, i32*)* @umoscom_cfg_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umoscom_cfg_get_status(%struct.ucom_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.umoscom_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %10 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %9, i32 0, i32 0
  %11 = load %struct.umoscom_softc*, %struct.umoscom_softc** %10, align 8
  store %struct.umoscom_softc* %11, %struct.umoscom_softc** %7, align 8
  %12 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.umoscom_softc*, %struct.umoscom_softc** %7, align 8
  %14 = load i32, i32* @UMOSCOM_LSR, align 4
  %15 = call i32 @umoscom_cfg_read(%struct.umoscom_softc* %13, i32 %14)
  %16 = load i32*, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.umoscom_softc*, %struct.umoscom_softc** %7, align 8
  %18 = load i32, i32* @UMOSCOM_MSR, align 4
  %19 = call i32 @umoscom_cfg_read(%struct.umoscom_softc* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @UMOSCOM_MSR_CTS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @SER_CTS, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @UMOSCOM_MSR_CD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @SER_DCD, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @UMOSCOM_MSR_RI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @SER_RI, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @UMOSCOM_MSR_RTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @SER_DSR, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %49
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @umoscom_cfg_read(%struct.umoscom_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
