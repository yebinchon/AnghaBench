; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32, i32 }

@JME_FLAG_FPGA = common dso_local global i32 0, align 4
@JME_SMI = common dso_local global i32 0, align 4
@SMI_OP_WRITE = common dso_local global i32 0, align 4
@SMI_OP_EXECUTE = common dso_local global i32 0, align 4
@SMI_DATA_SHIFT = common dso_local global i32 0, align 4
@SMI_DATA_MASK = common dso_local global i32 0, align 4
@JME_PHY_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"phy write timeout : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @jme_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jme_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.jme_softc* @device_get_softc(i32 %12)
  store %struct.jme_softc* %13, %struct.jme_softc** %10, align 8
  %14 = load %struct.jme_softc*, %struct.jme_softc** %10, align 8
  %15 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @JME_FLAG_FPGA, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %70

24:                                               ; preds = %20, %4
  %25 = load %struct.jme_softc*, %struct.jme_softc** %10, align 8
  %26 = load i32, i32* @JME_SMI, align 4
  %27 = load i32, i32* @SMI_OP_WRITE, align 4
  %28 = load i32, i32* @SMI_OP_EXECUTE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @SMI_DATA_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @SMI_DATA_MASK, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %29, %34
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @SMI_PHY_ADDR(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @SMI_REG_ADDR(i32 %39)
  %41 = or i32 %38, %40
  %42 = call i32 @CSR_WRITE_4(%struct.jme_softc* %25, i32 %26, i32 %41)
  %43 = load i32, i32* @JME_PHY_TIMEOUT, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %57, %24
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = call i32 @DELAY(i32 1)
  %49 = load %struct.jme_softc*, %struct.jme_softc** %10, align 8
  %50 = load i32, i32* @JME_SMI, align 4
  %51 = call i32 @CSR_READ_4(%struct.jme_softc* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @SMI_OP_EXECUTE, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %11, align 4
  br label %44

60:                                               ; preds = %55, %44
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.jme_softc*, %struct.jme_softc** %10, align 8
  %65 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %23
  %71 = load i32, i32* %5, align 4
  ret i32 %71
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
