; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_config_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_config_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32 }

@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_MSI_RETRANS_TIMER = common dso_local global i32 0, align 4
@MSI_RETRANS_TIMER_MASK = common dso_local global i32 0, align 4
@MSI_RETRANS_MASK_SEL_LINE = common dso_local global i32 0, align 4
@ALC_FLAG_MSIX = common dso_local global i32 0, align 4
@MSI_RETRANS_MASK_SEL_STD = common dso_local global i32 0, align 4
@ALC_FLAG_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_config_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_config_msi(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %5 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %1
  %12 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %13 = load i32, i32* @ALC_MSI_RETRANS_TIMER, align 4
  %14 = call i32 @CSR_READ_4(%struct.alc_softc* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @MSI_RETRANS_TIMER_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @MSI_RETRANS_MASK_SEL_LINE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ALC_USECS(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %35 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ALC_FLAG_MSIX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %42 = load i32, i32* @ALC_MSI_RETRANS_TIMER, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MSI_RETRANS_MASK_SEL_STD, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @CSR_WRITE_4(%struct.alc_softc* %41, i32 %42, i32 %45)
  br label %66

47:                                               ; preds = %30
  %48 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ALC_FLAG_MSI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %56 = load i32, i32* @ALC_MSI_RETRANS_TIMER, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @MSI_RETRANS_MASK_SEL_LINE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @CSR_WRITE_4(%struct.alc_softc* %55, i32 %56, i32 %59)
  br label %65

61:                                               ; preds = %47
  %62 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %63 = load i32, i32* @ALC_MSI_RETRANS_TIMER, align 4
  %64 = call i32 @CSR_WRITE_4(%struct.alc_softc* %62, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %61, %54
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %1
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @ALC_USECS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
