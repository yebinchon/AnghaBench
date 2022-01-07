; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_state_master_stop_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_state_master_stop_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GLXIIC_SMB_STS_BER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bus error in master stop\00", align 1
@IIC_EBUSERR = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_MASTER_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"not bus master in master stop\00", align 1
@IIC_ESTATUS = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_NEGACK_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"slave nack in master stop\00", align 1
@IIC_ENOACK = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1 = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1_START_BIT = common dso_local global i32 0, align 4
@GLXIIC_STATE_MASTER_ADDR = common dso_local global i32 0, align 4
@GLXIIC_STATE_IDLE = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxiic_softc*, i32)* @glxiic_state_master_stop_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxiic_state_master_stop_callback(%struct.glxiic_softc* %0, i32 %1) #0 {
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
  %14 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %15, i32* %3, align 4
  br label %84

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GLXIIC_SMB_STS_MASTER_BIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %23, i32* %3, align 4
  br label %84

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GLXIIC_SMB_STS_NEGACK_BIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @IIC_ENOACK, align 4
  store i32 %31, i32* %3, align 4
  br label %84

32:                                               ; preds = %24
  %33 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %34 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %32
  %39 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %40 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IIC_M_NOSTOP, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %49 = call i32 @glxiic_stop_locked(%struct.glxiic_softc* %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %52 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GLXIIC_SMB_CTRL1, align 4
  %55 = call i32 @bus_read_1(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %57 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GLXIIC_SMB_CTRL1, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @GLXIIC_SMB_CTRL1_START_BIT, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @bus_write_1(i32 %58, i32 %59, i32 %62)
  %64 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %65 = load i32, i32* @GLXIIC_STATE_MASTER_ADDR, align 4
  %66 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %64, i32 %65)
  %67 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %68 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 1
  store %struct.TYPE_2__* %70, %struct.TYPE_2__** %68, align 8
  br label %82

71:                                               ; preds = %32
  %72 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %73 = call i32 @glxiic_stop_locked(%struct.glxiic_softc* %72)
  %74 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %75 = load i32, i32* @GLXIIC_STATE_IDLE, align 4
  %76 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %74, i32 %75)
  %77 = load i32, i32* @IIC_NOERR, align 4
  %78 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %79 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %81 = call i32 @GLXIIC_WAKEUP(%struct.glxiic_softc* %80)
  br label %82

82:                                               ; preds = %71, %50
  %83 = load i32, i32* @IIC_NOERR, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %29, %21, %13
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc*) #1

declare dso_local i32 @GLXIIC_DEBUG_LOG(i8*) #1

declare dso_local i32 @glxiic_stop_locked(%struct.glxiic_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @glxiic_set_state_locked(%struct.glxiic_softc*, i32) #1

declare dso_local i32 @GLXIIC_WAKEUP(%struct.glxiic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
