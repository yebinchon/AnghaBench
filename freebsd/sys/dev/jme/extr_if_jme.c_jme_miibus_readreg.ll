; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_miibus_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_miibus_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32 }

@JME_FLAG_FPGA = common dso_local global i32 0, align 4
@JME_SMI = common dso_local global i32 0, align 4
@SMI_OP_READ = common dso_local global i32 0, align 4
@SMI_OP_EXECUTE = common dso_local global i32 0, align 4
@JME_PHY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"phy read timeout : %d\0A\00", align 1
@SMI_DATA_MASK = common dso_local global i32 0, align 4
@SMI_DATA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @jme_miibus_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_miibus_readreg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jme_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.jme_softc* @device_get_softc(i32 %11)
  store %struct.jme_softc* %12, %struct.jme_softc** %8, align 8
  %13 = load %struct.jme_softc*, %struct.jme_softc** %8, align 8
  %14 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @JME_FLAG_FPGA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %68

23:                                               ; preds = %19, %3
  %24 = load %struct.jme_softc*, %struct.jme_softc** %8, align 8
  %25 = load i32, i32* @JME_SMI, align 4
  %26 = load i32, i32* @SMI_OP_READ, align 4
  %27 = load i32, i32* @SMI_OP_EXECUTE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SMI_PHY_ADDR(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @SMI_REG_ADDR(i32 %32)
  %34 = or i32 %31, %33
  %35 = call i32 @CSR_WRITE_4(%struct.jme_softc* %24, i32 %25, i32 %34)
  %36 = load i32, i32* @JME_PHY_TIMEOUT, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %50, %23
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = call i32 @DELAY(i32 1)
  %42 = load %struct.jme_softc*, %struct.jme_softc** %8, align 8
  %43 = load i32, i32* @JME_SMI, align 4
  %44 = call i32 @CSR_READ_4(%struct.jme_softc* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @SMI_OP_EXECUTE, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %53

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  br label %37

53:                                               ; preds = %48, %37
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.jme_softc*, %struct.jme_softc** %8, align 8
  %58 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 0, i32* %4, align 4
  br label %68

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @SMI_DATA_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @SMI_DATA_SHIFT, align 4
  %67 = ashr i32 %65, %66
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %56, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.jme_softc* @device_get_softc(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.jme_softc*, i32, i32) #1

declare dso_local i32 @SMI_PHY_ADDR(i32) #1

declare dso_local i32 @SMI_REG_ADDR(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.jme_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
