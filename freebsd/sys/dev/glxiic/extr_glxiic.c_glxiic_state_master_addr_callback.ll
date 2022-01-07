; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_state_master_addr_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/glxiic/extr_glxiic.c_glxiic_state_master_addr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glxiic_softc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@GLXIIC_SMB_STS_BER_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bus error after master start\00", align 1
@IIC_EBUSERR = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_MASTER_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"not bus master after master start\00", align 1
@IIC_ESTATUS = common dso_local global i32 0, align 4
@GLXIIC_SMB_STS_SDAST_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"not awaiting address in master addr\00", align 1
@IIC_M_RD = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@GLXIIC_STATE_MASTER_RX = common dso_local global i32 0, align 4
@GLXIIC_STATE_MASTER_TX = common dso_local global i32 0, align 4
@GLXIIC_STATE_MASTER_STOP = common dso_local global i32 0, align 4
@GLXIIC_SMB_SDA = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1 = common dso_local global i32 0, align 4
@GLXIIC_SMB_CTRL1_ACK_BIT = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.glxiic_softc*, i32)* @glxiic_state_master_addr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glxiic_state_master_addr_callback(%struct.glxiic_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.glxiic_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.glxiic_softc* %0, %struct.glxiic_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %9 = call i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @GLXIIC_SMB_STS_BER_BIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @IIC_EBUSERR, align 4
  store i32 %16, i32* %3, align 4
  br label %124

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @GLXIIC_SMB_STS_MASTER_BIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %24, i32* %3, align 4
  br label %124

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @GLXIIC_SMB_STS_SDAST_BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 @GLXIIC_DEBUG_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %32, i32* %3, align 4
  br label %124

33:                                               ; preds = %25
  %34 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %35 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IIC_M_RD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %44 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LSB, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %51 = load i32, i32* @GLXIIC_STATE_MASTER_RX, align 4
  %52 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %50, i32 %51)
  br label %65

53:                                               ; preds = %33
  %54 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %55 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LSB, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %63 = load i32, i32* @GLXIIC_STATE_MASTER_TX, align 4
  %64 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %42
  %66 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %67 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %72 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %74 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %79 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %81 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %65
  %85 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %86 = load i32, i32* @GLXIIC_STATE_MASTER_STOP, align 4
  %87 = call i32 @glxiic_set_state_locked(%struct.glxiic_softc* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %65
  %89 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %90 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @GLXIIC_SMB_SDA, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @bus_write_1(i32 %91, i32 %92, i32 %93)
  %95 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %96 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IIC_M_RD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %88
  %104 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %105 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %110 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @GLXIIC_SMB_CTRL1, align 4
  %113 = call i32 @bus_read_1(i32 %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load %struct.glxiic_softc*, %struct.glxiic_softc** %4, align 8
  %115 = getelementptr inbounds %struct.glxiic_softc, %struct.glxiic_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @GLXIIC_SMB_CTRL1, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @GLXIIC_SMB_CTRL1_ACK_BIT, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @bus_write_1(i32 %116, i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %108, %103, %88
  %123 = load i32, i32* @IIC_NOERR, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %30, %22, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @GLXIIC_ASSERT_LOCKED(%struct.glxiic_softc*) #1

declare dso_local i32 @GLXIIC_DEBUG_LOG(i8*) #1

declare dso_local i32 @glxiic_set_state_locked(%struct.glxiic_softc*, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i32) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
