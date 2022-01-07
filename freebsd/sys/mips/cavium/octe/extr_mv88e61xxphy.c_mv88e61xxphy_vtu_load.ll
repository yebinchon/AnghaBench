; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_vtu_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_mv88e61xxphy.c_mv88e61xxphy_vtu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e61xxphy_softc = type { %struct.mv88e61xxphy_port_softc* }
%struct.mv88e61xxphy_port_softc = type { i32, i64, i32 }

@MV88E61XX_GLOBAL = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_VID = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_VID_VALID = common dso_local global i32 0, align 4
@MV88E61XX_PORTS = common dso_local global i32 0, align 4
@MV88E61XXPHY_PORT_FLAG_VTU_UPDATE = common dso_local global i32 0, align 4
@MV88E61XXPHY_VTU_UNTAGGED = common dso_local global i32 0, align 4
@MV88E61XX_HOST_PORT = common dso_local global i64 0, align 8
@MV88E61XXPHY_VTU_TAGGED = common dso_local global i32 0, align 4
@MV88E61XXPHY_VTU_DISCARDED = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_OP = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_OP_BUSY = common dso_local global i32 0, align 4
@MV88E61XX_GLOBAL_VTU_OP_OP_VTU_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv88e61xxphy_softc*, i32)* @mv88e61xxphy_vtu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv88e61xxphy_vtu_load(%struct.mv88e61xxphy_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mv88e61xxphy_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e61xxphy_port_softc*, align 8
  store %struct.mv88e61xxphy_softc* %0, %struct.mv88e61xxphy_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %3, align 8
  %8 = call i32 @mv88e61xxphy_vtu_wait(%struct.mv88e61xxphy_softc* %7)
  %9 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %3, align 8
  %10 = load i32, i32* @MV88E61XX_GLOBAL, align 4
  %11 = load i32, i32* @MV88E61XX_GLOBAL_VTU_VID, align 4
  %12 = load i32, i32* @MV88E61XX_GLOBAL_VTU_VID_VALID, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @MV88E61XX_WRITE(%struct.mv88e61xxphy_softc* %9, i32 %10, i32 %11, i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %61, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MV88E61XX_PORTS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mv88e61xxphy_softc, %struct.mv88e61xxphy_softc* %21, i32 0, i32 0
  %23 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %23, i64 %25
  store %struct.mv88e61xxphy_port_softc* %26, %struct.mv88e61xxphy_port_softc** %6, align 8
  %27 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %6, align 8
  %28 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %20
  %33 = load i32, i32* @MV88E61XXPHY_PORT_FLAG_VTU_UPDATE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %6, align 8
  %36 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MV88E61XXPHY_VTU_UNTAGGED, align 4
  %42 = call i32 @mv88e61xxphy_vtu_set_membership(%struct.mv88e61xxphy_softc* %39, i32 %40, i32 %41)
  br label %60

43:                                               ; preds = %20
  %44 = load %struct.mv88e61xxphy_port_softc*, %struct.mv88e61xxphy_port_softc** %6, align 8
  %45 = getelementptr inbounds %struct.mv88e61xxphy_port_softc, %struct.mv88e61xxphy_port_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MV88E61XX_HOST_PORT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MV88E61XXPHY_VTU_TAGGED, align 4
  %53 = call i32 @mv88e61xxphy_vtu_set_membership(%struct.mv88e61xxphy_softc* %50, i32 %51, i32 %52)
  br label %59

54:                                               ; preds = %43
  %55 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MV88E61XXPHY_VTU_DISCARDED, align 4
  %58 = call i32 @mv88e61xxphy_vtu_set_membership(%struct.mv88e61xxphy_softc* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load %struct.mv88e61xxphy_softc*, %struct.mv88e61xxphy_softc** %3, align 8
  %66 = load i32, i32* @MV88E61XX_GLOBAL, align 4
  %67 = load i32, i32* @MV88E61XX_GLOBAL_VTU_OP, align 4
  %68 = load i32, i32* @MV88E61XX_GLOBAL_VTU_OP_BUSY, align 4
  %69 = load i32, i32* @MV88E61XX_GLOBAL_VTU_OP_OP_VTU_LOAD, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @MV88E61XX_WRITE(%struct.mv88e61xxphy_softc* %65, i32 %66, i32 %67, i32 %70)
  ret void
}

declare dso_local i32 @mv88e61xxphy_vtu_wait(%struct.mv88e61xxphy_softc*) #1

declare dso_local i32 @MV88E61XX_WRITE(%struct.mv88e61xxphy_softc*, i32, i32, i32) #1

declare dso_local i32 @mv88e61xxphy_vtu_set_membership(%struct.mv88e61xxphy_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
