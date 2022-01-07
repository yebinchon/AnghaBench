; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_start_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }

@KCS_STATUS_IBF = common dso_local global i32 0, align 4
@KCS_CTL_STS = common dso_local global i32 0, align 4
@KCS_CONTROL_WRITE_START = common dso_local global i32 0, align 4
@KCS_STATUS_STATE_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*)* @kcs_start_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcs_start_write(%struct.ipmi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %40, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %11 = call i32 @kcs_wait_for_ibf(%struct.ipmi_softc* %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @KCS_STATUS_IBF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %53

17:                                               ; preds = %9
  %18 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @kcs_clear_obf(%struct.ipmi_softc* %18, i32 %19)
  %21 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %22 = load i32, i32* @KCS_CTL_STS, align 4
  %23 = load i32, i32* @KCS_CONTROL_WRITE_START, align 4
  %24 = call i32 @OUTB(%struct.ipmi_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %26 = call i32 @kcs_wait_for_ibf(%struct.ipmi_softc* %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @KCS_STATUS_IBF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %53

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @KCS_STATUS_STATE(i32 %33)
  %35 = load i64, i64* @KCS_STATUS_STATE_WRITE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %43

38:                                               ; preds = %32
  %39 = call i32 @DELAY(i32 1000000)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %6

43:                                               ; preds = %37, %6
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @KCS_STATUS_STATE(i32 %44)
  %46 = load i64, i64* @KCS_STATUS_STATE_WRITE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %53

49:                                               ; preds = %43
  %50 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @kcs_clear_obf(%struct.ipmi_softc* %50, i32 %51)
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %48, %31, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @kcs_wait_for_ibf(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @kcs_clear_obf(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @OUTB(%struct.ipmi_softc*, i32, i32) #1

declare dso_local i64 @KCS_STATUS_STATE(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
