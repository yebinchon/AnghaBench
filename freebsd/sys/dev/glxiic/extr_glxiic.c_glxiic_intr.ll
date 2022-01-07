; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.glxiic_softc*, i32)*, i64 }
%struct.glxiic_softc = type { i64, i32, i32 }

@GLXIIC_SMB_STS_MASTER_BIT = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_XMIT_BIT = common dso_local global i32 0, align 4
@glxiic_state_table = common dso_local global %struct.TYPE_2__* null, align 8
@IIC_NOERR = common dso_local global i32 0, align 4
@GLXIIC_STATE_IDLE = common dso_local global i32 0, align 4
@INTR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @glxiic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glxiic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.glxiic_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.glxiic_softc*
  store %struct.glxiic_softc* %8, %struct.glxiic_softc** %3, align 8
  %9 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %10 = call i32 @GLXIIC_LOCK(%struct.glxiic_softc* %9)
  %11 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %12 = call i32 @glxiic_read_status_locked(%struct.glxiic_softc* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @GLXIIC_SMB_STS_MASTER_BIT, align 4
  %15 = load i32, i32* @GLXIIC_SMB_STS_XMIT_BIT, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @glxiic_state_table, align 8
  %22 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %23 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.glxiic_softc*, i32)*, i32 (%struct.glxiic_softc*, i32)** %26, align 8
  %28 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(%struct.glxiic_softc* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IIC_NOERR, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %20
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @glxiic_state_table, align 8
  %36 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %37 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %34
  %44 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %45 = call i32 @glxiic_stop_locked(%struct.glxiic_softc* %44)
  %46 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %47 = load i32, i32* @GLXIIC_STATE_IDLE, align 4
  %48 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %51 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %53 = call i32 @GLXIIC_WAKEUP(%struct.glxiic_softc* %52)
  br label %65

54:                                               ; preds = %34
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %6, align 4
  %57 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %58 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @INTR_ERROR, align 4
  %61 = call i32 @iicbus_intr(i32 %59, i32 %60, i32* %6)
  %62 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %63 = load i32, i32* @GLXIIC_STATE_IDLE, align 4
  %64 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %43
  br label %66

66:                                               ; preds = %65, %20
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.glxiic_softc*, %struct.glxiic_softc** %3, align 8
  %69 = call i32 @GLXIIC_UNLOCK(%struct.glxiic_softc* %68)
  ret void
}

declare dso_local i32 @GLXIIC_LOCK(%struct.glxiic_softc*) #1

declare dso_local i32 @glxiic_read_status_locked(%struct.glxiic_softc*) #1

declare dso_local i32 @glxiic_stop_locked(%struct.glxiic_softc*) #1

declare dso_local i32 @glxiic_set_state_locked(%struct.glxiic_softc*, i32) #1

declare dso_local i32 @GLXIIC_WAKEUP(%struct.glxiic_softc*) #1

declare dso_local i32 @iicbus_intr(i32, i32, i32*) #1

declare dso_local i32 @GLXIIC_UNLOCK(%struct.glxiic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
