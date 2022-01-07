; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aue_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AUE_CTL1 = common dso_local global i32 0, align 4
@AUE_CTL1_RESETMAC = common dso_local global i32 0, align 4
@AUE_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"reset failed\0A\00", align 1
@AUE_GPIO0 = common dso_local global i32 0, align 4
@AUE_GPIO_SEL0 = common dso_local global i32 0, align 4
@AUE_GPIO_SEL1 = common dso_local global i32 0, align 4
@AUE_GPIO_OUT0 = common dso_local global i32 0, align 4
@AUE_FLAG_LSYS = common dso_local global i32 0, align 4
@AUE_FLAG_PII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aue_softc*)* @aue_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_reset(%struct.aue_softc* %0) #0 {
  %2 = alloca %struct.aue_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.aue_softc* %0, %struct.aue_softc** %2, align 8
  %4 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %5 = load i32, i32* @AUE_CTL1, align 4
  %6 = load i32, i32* @AUE_CTL1_RESETMAC, align 4
  %7 = call i32 @AUE_SETBIT(%struct.aue_softc* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @AUE_TIMEOUT, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %14 = load i32, i32* @AUE_CTL1, align 4
  %15 = call i32 @aue_csr_read_1(%struct.aue_softc* %13, i32 %14)
  %16 = load i32, i32* @AUE_CTL1_RESETMAC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %32

20:                                               ; preds = %12
  %21 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %22 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %21, i32 0, i32 1
  %23 = load i32, i32* @hz, align 4
  %24 = sdiv i32 %23, 100
  %25 = call i64 @uether_pause(%struct.TYPE_2__* %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %27, %19, %8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @AUE_TIMEOUT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %38 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %44 = load i32, i32* @AUE_GPIO0, align 4
  %45 = load i32, i32* @AUE_GPIO_SEL0, align 4
  %46 = load i32, i32* @AUE_GPIO_SEL1, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @aue_csr_write_1(%struct.aue_softc* %43, i32 %44, i32 %47)
  %49 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %50 = load i32, i32* @AUE_GPIO0, align 4
  %51 = load i32, i32* @AUE_GPIO_SEL0, align 4
  %52 = load i32, i32* @AUE_GPIO_SEL1, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AUE_GPIO_OUT0, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @aue_csr_write_1(%struct.aue_softc* %49, i32 %50, i32 %55)
  %57 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %58 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AUE_FLAG_LSYS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %42
  %64 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %65 = load i32, i32* @AUE_GPIO0, align 4
  %66 = load i32, i32* @AUE_GPIO_SEL0, align 4
  %67 = load i32, i32* @AUE_GPIO_SEL1, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @aue_csr_write_1(%struct.aue_softc* %64, i32 %65, i32 %68)
  %70 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %71 = load i32, i32* @AUE_GPIO0, align 4
  %72 = load i32, i32* @AUE_GPIO_SEL0, align 4
  %73 = load i32, i32* @AUE_GPIO_SEL1, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @AUE_GPIO_OUT0, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @aue_csr_write_1(%struct.aue_softc* %70, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %63, %42
  %79 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %80 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AUE_FLAG_PII, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %87 = call i32 @aue_reset_pegasus_II(%struct.aue_softc* %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load %struct.aue_softc*, %struct.aue_softc** %2, align 8
  %90 = getelementptr inbounds %struct.aue_softc, %struct.aue_softc* %89, i32 0, i32 1
  %91 = load i32, i32* @hz, align 4
  %92 = sdiv i32 %91, 100
  %93 = call i64 @uether_pause(%struct.TYPE_2__* %90, i32 %92)
  ret void
}

declare dso_local i32 @AUE_SETBIT(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_csr_read_1(%struct.aue_softc*, i32) #1

declare dso_local i64 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @aue_csr_write_1(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @aue_reset_pegasus_II(%struct.aue_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
