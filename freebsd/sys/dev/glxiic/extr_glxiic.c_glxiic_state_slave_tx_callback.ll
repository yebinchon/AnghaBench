; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_state_slave_tx_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_state_slave_tx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i32, i32 }

@GLXIIC_SMB_STS_BER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bus error in slave tx\00", align 1
@IIC_EBUSERR = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_SLVSTP_BIT = common dso_local global i32 0, align 4
@INTR_STOP = common dso_local global i32 0, align 4
@GLXIIC_STATE_IDLE = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_NEGACK_BIT = common dso_local global i32 0, align 4
@INTR_NOACK = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_NMATCH_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_SDAST_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"not awaiting data in slave tx\00", align 1
@IIC_ESTATUS = common dso_local global i32 0, align 4
@INTR_TRANSMIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_SDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxiic_softc*, i32)* @glxiic_state_slave_tx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxiic_state_slave_tx_callback(%struct.glxiic_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.glxiic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.glxiic_softc* %0, %struct.glxiic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %8 = call i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @GLXIIC_SMB_STS_BER_BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %15, i32* %3, align 4
  br label %75

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GLXIIC_SMB_STS_SLVSTP_BIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %23 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @INTR_STOP, align 4
  %26 = call i32 @iicbus_intr(i32 %24, i32 %25, i32* null)
  %27 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %28 = load i32, i32* @GLXIIC_STATE_IDLE, align 4
  %29 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %27, i32 %28)
  %30 = load i32, i32* @IIC_NOERR, align 4
  store i32 %30, i32* %3, align 4
  br label %75

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GLXIIC_SMB_STS_NEGACK_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %38 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @INTR_NOACK, align 4
  %41 = call i32 @iicbus_intr(i32 %39, i32 %40, i32* null)
  %42 = load i32, i32* @IIC_NOERR, align 4
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GLXIIC_SMB_STS_NMATCH_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @glxiic_handle_slave_match_locked(%struct.glxiic_softc* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @GLXIIC_SMB_STS_SDAST_BIT, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %59, i32* %3, align 4
  br label %75

60:                                               ; preds = %52
  %61 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %62 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @INTR_TRANSMIT, align 4
  %65 = call i32 @iicbus_intr(i32 %63, i32 %64, i32* %6)
  %66 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %67 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @GLXIIC_SMB_SDA, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @bus_write_1(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %73 = call i32 @glxiic_start_timeout_locked(%struct.glxiic_softc* %72)
  %74 = load i32, i32* @IIC_NOERR, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %60, %57, %48, %36, %21, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc*) #1

declare dso_local i32 @GLXIIC_DEBUG_LOG(i8*) #1

declare dso_local i32 @iicbus_intr(i32, i32, i32*) #1

declare dso_local i32 @glxiic_set_state_locked(%struct.glxiic_softc*, i32) #1

declare dso_local i32 @glxiic_handle_slave_match_locked(%struct.glxiic_softc*, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @glxiic_start_timeout_locked(%struct.glxiic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
