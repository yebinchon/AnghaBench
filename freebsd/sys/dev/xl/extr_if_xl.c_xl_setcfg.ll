; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_setcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_setcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32 }

@XL_W3_INTERNAL_CFG = common dso_local global i32 0, align 4
@XL_ICFG_CONNECTOR_MASK = common dso_local global i32 0, align 4
@XL_MEDIAOPT_MII = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BT4 = common dso_local global i32 0, align 4
@XL_XCVR_MII = common dso_local global i32 0, align 4
@XL_ICFG_CONNECTOR_BITS = common dso_local global i32 0, align 4
@XL_MEDIAOPT_BTX = common dso_local global i32 0, align 4
@XL_XCVR_AUTO = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_CMD_COAX_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xl_softc*)* @xl_setcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xl_setcfg(%struct.xl_softc* %0) #0 {
  %2 = alloca %struct.xl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %2, align 8
  %4 = call i32 @XL_SEL_WIN(i32 3)
  %5 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %6 = load i32, i32* @XL_W3_INTERNAL_CFG, align 4
  %7 = call i32 @CSR_READ_4(%struct.xl_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @XL_ICFG_CONNECTOR_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %13 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XL_MEDIAOPT_MII, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %20 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @XL_MEDIAOPT_BT4, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18, %1
  %26 = load i32, i32* @XL_XCVR_MII, align 4
  %27 = load i32, i32* @XL_ICFG_CONNECTOR_BITS, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %18
  %32 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %33 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XL_MEDIAOPT_BTX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @XL_XCVR_AUTO, align 4
  %40 = load i32, i32* @XL_ICFG_CONNECTOR_BITS, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %46 = load i32, i32* @XL_W3_INTERNAL_CFG, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.xl_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.xl_softc*, %struct.xl_softc** %2, align 8
  %50 = load i32, i32* @XL_COMMAND, align 4
  %51 = load i32, i32* @XL_CMD_COAX_STOP, align 4
  %52 = call i32 @CSR_WRITE_2(%struct.xl_softc* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.xl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
