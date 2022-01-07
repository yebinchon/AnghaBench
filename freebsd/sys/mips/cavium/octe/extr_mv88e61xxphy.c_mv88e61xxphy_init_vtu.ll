; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_init_vtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_init_vtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e61xxphy_softc = type { %struct.mv88e61xxphy_port_softc* }
%struct.mv88e61xxphy_port_softc = type { i32, i64 }

@MV88E61XX_GLOBAL = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_OP = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_OP_BUSY = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_OP_OP_FLUSH = common dso_local global i32 0, align 4
@MV88E61XX_PORTS = common dso_local global i32 0, align 4
@MV88E61XXPHY_PORT_FLAG_VTU_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e61xxphy_softc*)* @mv88e61xxphy_init_vtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e61xxphy_init_vtu(%struct.mv88e61xxphy_softc* %0) #0 {
  %2 = alloca %struct.mv88e61xxphy_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e61xxphy_port_softc*, align 8
  %5 = alloca %struct.mv88e61xxphy_port_softc*, align 8
  store %struct.mv88e61xxphy_softc* %0, %struct.mv88e61xxphy_softc** %2, align 8
  %6 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %2, align 8
  %7 = call i32 @mv88e61xxphy_vtu_wait(%struct.mv88e61xxphy_softc* %6)
  %8 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %2, align 8
  %9 = load i32, i32* @MV88E61XX_GLOBAL, align 4
  %10 = load i32, i32* @MV88E61XX_GLOBAL_VTU_OP, align 4
  %11 = load i32, i32* @MV88E61XX_GLOBAL_VTU_OP_BUSY, align 4
  %12 = load i32, i32* @MV88E61XX_GLOBAL_VTU_OP_OP_FLUSH, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @MV88E61XX_WRITE(%struct.mv88e61xxphy_softc* %8, i32 %9, i32 %10, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %43, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @MV88E61XX_PORTS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %2, align 8
  %21 = getelementptr inbounds %struct.mv88e61xxphy_softc, %struct.mv88e61xxphy_softc* %20, i32 0, i32 0
  %22 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %22, i64 %24
  store %struct.mv88e61xxphy_port_softc* %25, %struct.mv88e61xxphy_port_softc** %4, align 8
  %26 = load i32, i32* @MV88E61XXPHY_PORT_FLAG_VTU_UPDATE, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %4, align 8
  %29 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  br label %43

37:                                               ; preds = %19
  %38 = load i32, i32* @MV88E61XXPHY_PORT_FLAG_VTU_UPDATE, align 4
  %39 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %4, align 8
  %40 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %36
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %15

46:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @MV88E61XX_PORTS, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mv88e61xxphy_softc, %struct.mv88e61xxphy_softc* %52, i32 0, i32 0
  %54 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %54, i64 %56
  store %struct.mv88e61xxphy_port_softc* %57, %struct.mv88e61xxphy_port_softc** %5, align 8
  %58 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %5, align 8
  %59 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MV88E61XXPHY_PORT_FLAG_VTU_UPDATE, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %71

65:                                               ; preds = %51
  %66 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %2, align 8
  %67 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %5, align 8
  %68 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @mv88e61xxphy_vtu_load(%struct.mv88e61xxphy_softc* %66, i64 %69)
  br label %71

71:                                               ; preds = %65, %64
  %72 = load i32, i32* %3, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %47

74:                                               ; preds = %47
  %75 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %2, align 8
  %76 = call i32 @mv88e61xxphy_vtu_wait(%struct.mv88e61xxphy_softc* %75)
  ret void
}

declare dso_local i32 @mv88e61xxphy_vtu_wait(%struct.mv88e61xxphy_softc*) #1

declare dso_local i32 @MV88E61XX_WRITE(%struct.mv88e61xxphy_softc*, i32, i32, i32) #1

declare dso_local i32 @mv88e61xxphy_vtu_load(%struct.mv88e61xxphy_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
