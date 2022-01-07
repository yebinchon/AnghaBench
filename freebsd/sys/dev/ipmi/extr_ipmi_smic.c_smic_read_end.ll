; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_read_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_smic.c_smic_read_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }

@SMIC_CTL_STS = common dso_local global i32 0, align 4
@SMIC_CC_SMS_RD_END = common dso_local global i32 0, align 4
@SMIC_SC_SMS_RDY = common dso_local global i64 0, align 8
@SMIC_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SMIC: Read did not end %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*)* @smic_read_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smic_read_end(%struct.ipmi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %3, align 8
  %6 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %7 = load i32, i32* @SMIC_CTL_STS, align 4
  %8 = load i32, i32* @SMIC_CC_SMS_RD_END, align 4
  %9 = call i32 @OUTB(%struct.ipmi_softc* %6, i32 %7, i32 %8)
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %11 = call i32 @smic_set_busy(%struct.ipmi_softc* %10)
  %12 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %13 = call i32 @smic_wait_for_not_busy(%struct.ipmi_softc* %12)
  %14 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %15 = load i32, i32* @SMIC_CTL_STS, align 4
  %16 = call i64 @INB(%struct.ipmi_softc* %14, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SMIC_SC_SMS_RDY, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %22 = load i32, i32* @SMIC_DATA, align 4
  %23 = call i64 @INB(%struct.ipmi_softc* %21, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @OUTB(%struct.ipmi_softc*, i32, i32) #1

declare dso_local i32 @smic_set_busy(%struct.ipmi_softc*) #1

declare dso_local i32 @smic_wait_for_not_busy(%struct.ipmi_softc*) #1

declare dso_local i64 @INB(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
