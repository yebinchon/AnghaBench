; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_handle_slave_match_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_handle_slave_match_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i32, i32, i32 }

@GLXIIC_SMB_CTRL_STS = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL_STS_MATCH_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_XMIT_BIT = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@GLXIIC_STATE_SLAVE_TX = common dso_local global i32 0, align 4
@GLXIIC_STATE_SLAVE_RX = common dso_local global i32 0, align 4
@INTR_START = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL_STS_GCMTCH_BIT = common dso_local global i32 0, align 4
@INTR_GENERAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown slave match\00", align 1
@IIC_ESTATUS = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxiic_softc*, i32)* @glxiic_handle_slave_match_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxiic_handle_slave_match_locked(%struct.glxiic_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.glxiic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.glxiic_softc* %0, %struct.glxiic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %9 = call i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc* %8)
  %10 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %11 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GLXIIC_SMB_CTRL_STS, align 4
  %14 = call i32 @bus_read_1(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GLXIIC_SMB_CTRL_STS_MATCH_BIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GLXIIC_SMB_STS_XMIT_BIT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %26 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LSB, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %31 = load i32, i32* @GLXIIC_STATE_SLAVE_TX, align 4
  %32 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %30, i32 %31)
  br label %43

33:                                               ; preds = %19
  %34 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %35 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LSB, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %41 = load i32, i32* @GLXIIC_STATE_SLAVE_RX, align 4
  %42 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %24
  %44 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %45 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INTR_START, align 4
  %48 = call i32 @iicbus_intr(i32 %46, i32 %47, i32* %7)
  br label %67

49:                                               ; preds = %2
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @GLXIIC_SMB_CTRL_STS_GCMTCH_BIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  %55 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %56 = load i32, i32* @GLXIIC_STATE_SLAVE_RX, align 4
  %57 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %55, i32 %56)
  %58 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %59 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @INTR_GENERAL, align 4
  %62 = call i32 @iicbus_intr(i32 %60, i32 %61, i32* %7)
  br label %66

63:                                               ; preds = %49
  %64 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* @IIC_NOERR, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @glxiic_set_state_locked(%struct.glxiic_softc*, i32) #1

declare dso_local i32 @iicbus_intr(i32, i32, i32*) #1

declare dso_local i32 @GLXIIC_DEBUG_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
