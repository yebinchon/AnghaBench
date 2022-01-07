; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_set_vtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_set_vtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i64 }

@GLOBAL_REGISTER = common dso_local global i64 0, align 8
@VTU_DATA1_REG = common dso_local global i32 0, align 4
@VTU_DATA2_REG = common dso_local global i32 0, align 4
@VTU_VID_REG = common dso_local global i32 0, align 4
@VTU_OPERATION = common dso_local global i32 0, align 4
@VTU_BUSY = common dso_local global i32 0, align 4
@VTU_LOAD_PURGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @e6060sw_set_vtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6060sw_set_vtu(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.e6060sw_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.e6060sw_softc* @device_get_softc(i32 %11)
  store %struct.e6060sw_softc* %12, %struct.e6060sw_softc** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  %15 = load i64, i64* @GLOBAL_REGISTER, align 8
  %16 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %9, align 8
  %17 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load i32, i32* @VTU_DATA1_REG, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MDIO_WRITEREG(i32 %14, i64 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @device_get_parent(i32 %23)
  %25 = load i64, i64* @GLOBAL_REGISTER, align 8
  %26 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %9, align 8
  %27 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* @VTU_DATA2_REG, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @MDIO_WRITEREG(i32 %24, i64 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @device_get_parent(i32 %33)
  %35 = load i64, i64* @GLOBAL_REGISTER, align 8
  %36 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %9, align 8
  %37 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* @VTU_VID_REG, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 4096, %41
  %43 = call i32 @MDIO_WRITEREG(i32 %34, i64 %39, i32 %40, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @device_get_parent(i32 %44)
  %46 = load i64, i64* @GLOBAL_REGISTER, align 8
  %47 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %9, align 8
  %48 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load i32, i32* @VTU_OPERATION, align 4
  %52 = load i32, i32* @VTU_BUSY, align 4
  %53 = load i32, i32* @VTU_LOAD_PURGE, align 4
  %54 = shl i32 %53, 12
  %55 = or i32 %52, %54
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @MDIO_WRITEREG(i32 %45, i64 %50, i32 %51, i32 %57)
  br label %59

59:                                               ; preds = %4, %74
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @device_get_parent(i32 %60)
  %62 = load i64, i64* @GLOBAL_REGISTER, align 8
  %63 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %9, align 8
  %64 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load i32, i32* @VTU_OPERATION, align 4
  %68 = call i32 @MDIO_READREG(i32 %61, i64 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @VTU_BUSY, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %75

74:                                               ; preds = %59
  br label %59

75:                                               ; preds = %73
  ret void
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32, i64, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @MDIO_READREG(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
