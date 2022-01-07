; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32 }

@IWI_CSR_CTL = common dso_local global i32 0, align 4
@IWI_CTL_INIT = common dso_local global i32 0, align 4
@IWI_CSR_READ_INT = common dso_local global i32 0, align 4
@IWI_READ_INT_INIT_HOST = common dso_local global i32 0, align 4
@IWI_CTL_CLOCK_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timeout waiting for clock stabilization\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IWI_CSR_RST = common dso_local global i32 0, align 4
@IWI_RST_SOFT_RESET = common dso_local global i32 0, align 4
@IWI_CSR_AUTOINC_ADDR = common dso_local global i32 0, align 4
@IWI_CSR_AUTOINC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*)* @iwi_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_reset(%struct.iwi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %3, align 8
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %8 = call i32 @iwi_stop_master(%struct.iwi_softc* %7)
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %10 = load i32, i32* @IWI_CSR_CTL, align 4
  %11 = call i32 @CSR_READ_4(%struct.iwi_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %13 = load i32, i32* @IWI_CSR_CTL, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IWI_CTL_INIT, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %12, i32 %13, i32 %16)
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %19 = load i32, i32* @IWI_CSR_READ_INT, align 4
  %20 = load i32, i32* @IWI_READ_INT_INIT_HOST, align 4
  %21 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %18, i32 %19, i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %35, %1
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 1000
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %27 = load i32, i32* @IWI_CSR_CTL, align 4
  %28 = call i32 @CSR_READ_4(%struct.iwi_softc* %26, i32 %27)
  %29 = load i32, i32* @IWI_CTL_CLOCK_READY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %38

33:                                               ; preds = %25
  %34 = call i32 @DELAY(i32 200)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %22

38:                                               ; preds = %32, %22
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1000
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %43 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  store i32 %46, i32* %2, align 4
  br label %81

47:                                               ; preds = %38
  %48 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %49 = load i32, i32* @IWI_CSR_RST, align 4
  %50 = call i32 @CSR_READ_4(%struct.iwi_softc* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %52 = load i32, i32* @IWI_CSR_RST, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IWI_RST_SOFT_RESET, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %51, i32 %52, i32 %55)
  %57 = call i32 @DELAY(i32 10)
  %58 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %59 = load i32, i32* @IWI_CSR_CTL, align 4
  %60 = call i32 @CSR_READ_4(%struct.iwi_softc* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %62 = load i32, i32* @IWI_CSR_CTL, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IWI_CTL_INIT, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %61, i32 %62, i32 %65)
  %67 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %68 = load i32, i32* @IWI_CSR_AUTOINC_ADDR, align 4
  %69 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %67, i32 %68, i32 0)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %77, %47
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 49152
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.iwi_softc*, %struct.iwi_softc** %3, align 8
  %75 = load i32, i32* @IWI_CSR_AUTOINC_DATA, align 4
  %76 = call i32 @CSR_WRITE_4(%struct.iwi_softc* %74, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %70

80:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %41
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @iwi_stop_master(%struct.iwi_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.iwi_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.iwi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
