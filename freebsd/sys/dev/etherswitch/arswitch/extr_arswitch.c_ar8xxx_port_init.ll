; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_ar8xxx_port_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch.c_ar8xxx_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32 }

@AR8X16_PORT_CPU = common dso_local global i32 0, align 4
@AR8216 = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_SPEED_100 = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_SPEED_1000 = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_RXFLOW = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_TXFLOW = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_RXMAC = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_TXMAC = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_DUPLEX = common dso_local global i32 0, align 4
@AR8X16_PORT_CTRL_HEADER = common dso_local global i32 0, align 4
@AR8X16_PORT_STS_LINK_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arswitch_softc*, i32)* @ar8xxx_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_port_init(%struct.arswitch_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.arswitch_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AR8X16_PORT_CPU, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %63

8:                                                ; preds = %2
  %9 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %10 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @AR8X16_REG_PORT_STS(i32 0)
  %13 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %14 = load i32, i32* @AR8216, align 4
  %15 = call i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @AR8X16_PORT_STS_SPEED_100, align 4
  br label %21

19:                                               ; preds = %8
  %20 = load i32, i32* @AR8X16_PORT_STS_SPEED_1000, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %24 = load i32, i32* @AR8216, align 4
  %25 = call i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @AR8X16_PORT_STS_RXFLOW, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 0, %27 ], [ %29, %28 ]
  %32 = or i32 %22, %31
  %33 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %34 = load i32, i32* @AR8216, align 4
  %35 = call i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @AR8X16_PORT_STS_TXFLOW, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 0, %37 ], [ %39, %38 ]
  %42 = or i32 %32, %41
  %43 = load i32, i32* @AR8X16_PORT_STS_RXMAC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @AR8X16_PORT_STS_TXMAC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AR8X16_PORT_STS_DUPLEX, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @arswitch_writereg(i32 %11, i32 %12, i32 %48)
  %50 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %51 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AR8X16_REG_PORT_CTRL(i32 0)
  %54 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %55 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AR8X16_REG_PORT_CTRL(i32 0)
  %58 = call i32 @arswitch_readreg(i32 %56, i32 %57)
  %59 = load i32, i32* @AR8X16_PORT_CTRL_HEADER, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @arswitch_writereg(i32 %52, i32 %53, i32 %61)
  br label %86

63:                                               ; preds = %2
  %64 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %65 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @AR8X16_REG_PORT_STS(i32 %67)
  %69 = load i32, i32* @AR8X16_PORT_STS_LINK_AUTO, align 4
  %70 = call i32 @arswitch_writereg(i32 %66, i32 %68, i32 %69)
  %71 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %72 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @AR8X16_REG_PORT_CTRL(i32 %74)
  %76 = load %struct.arswitch_softc*, %struct.arswitch_softc** %3, align 8
  %77 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @AR8X16_REG_PORT_CTRL(i32 %79)
  %81 = call i32 @arswitch_readreg(i32 %78, i32 %80)
  %82 = load i32, i32* @AR8X16_PORT_CTRL_HEADER, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = call i32 @arswitch_writereg(i32 %73, i32 %75, i32 %84)
  br label %86

86:                                               ; preds = %63, %40
  ret void
}

declare dso_local i32 @arswitch_writereg(i32, i32, i32) #1

declare dso_local i32 @AR8X16_REG_PORT_STS(i32) #1

declare dso_local i64 @AR8X16_IS_SWITCH(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @AR8X16_REG_PORT_CTRL(i32) #1

declare dso_local i32 @arswitch_readreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
