; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_load_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32, i32 }

@IPW_CSR_IO = common dso_local global i32 0, align 4
@IPW_IO_GPIO1_ENABLE = common dso_local global i32 0, align 4
@IPW_IO_GPIO3_MASK = common dso_local global i32 0, align 4
@IPW_IO_LED_OFF = common dso_local global i32 0, align 4
@IPW_CSR_INTR_MASK = common dso_local global i32 0, align 4
@IPW_INTR_MASK = common dso_local global i32 0, align 4
@IPW_CSR_RST = common dso_local global i32 0, align 4
@IPW_CSR_CTL = common dso_local global i32 0, align 4
@IPW_CTL_ALLOW_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ipwinit\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"timeout waiting for firmware initialization to complete\0A\00", align 1
@IPW_IO_GPIO1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_softc*, i8*, i32)* @ipw_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_load_firmware(%struct.ipw_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %23, %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @GETLE32(i8* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @GETLE16(i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %8, align 8
  %32 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ipw_write_mem_1(%struct.ipw_softc* %32, i32 %33, i8* %34, i32 %35)
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %8, align 8
  br label %19

41:                                               ; preds = %19
  %42 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %43 = load i32, i32* @IPW_CSR_IO, align 4
  %44 = load i32, i32* @IPW_IO_GPIO1_ENABLE, align 4
  %45 = load i32, i32* @IPW_IO_GPIO3_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IPW_IO_LED_OFF, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %42, i32 %43, i32 %48)
  %50 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %51 = load i32, i32* @IPW_CSR_INTR_MASK, align 4
  %52 = load i32, i32* @IPW_INTR_MASK, align 4
  %53 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %55 = load i32, i32* @IPW_CSR_RST, align 4
  %56 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %54, i32 %55, i32 0)
  %57 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %58 = load i32, i32* @IPW_CSR_CTL, align 4
  %59 = call i32 @CSR_READ_4(%struct.ipw_softc* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %61 = load i32, i32* @IPW_CSR_CTL, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @IPW_CTL_ALLOW_STANDBY, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %60, i32 %61, i32 %64)
  %66 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %67 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %67, i32 0, i32 1
  %69 = load i32, i32* @hz, align 4
  %70 = call i32 @msleep(%struct.ipw_softc* %66, i32* %68, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %41
  %73 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %74 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  br label %90

78:                                               ; preds = %41
  %79 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %80 = load i32, i32* @IPW_CSR_IO, align 4
  %81 = call i32 @CSR_READ_4(%struct.ipw_softc* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.ipw_softc*, %struct.ipw_softc** %5, align 8
  %83 = load i32, i32* @IPW_CSR_IO, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @IPW_IO_GPIO1_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IPW_IO_GPIO3_MASK, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %82, i32 %83, i32 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %78, %72
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @GETLE32(i8*) #1

declare dso_local i32 @GETLE16(i8*) #1

declare dso_local i32 @ipw_write_mem_1(%struct.ipw_softc*, i32, i8*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.ipw_softc*, i32) #1

declare dso_local i32 @msleep(%struct.ipw_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
