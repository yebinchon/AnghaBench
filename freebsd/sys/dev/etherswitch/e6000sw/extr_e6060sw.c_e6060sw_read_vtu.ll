; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_read_vtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_read_vtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i64 }

@GLOBAL_REGISTER = common dso_local global i64 0, align 8
@VTU_VID_REG = common dso_local global i32 0, align 4
@VTU_OPERATION = common dso_local global i32 0, align 4
@VTU_BUSY = common dso_local global i32 0, align 4
@VTU_GET_NEXT = common dso_local global i32 0, align 4
@VTU_DATA1_REG = common dso_local global i32 0, align 4
@VTU_DATA2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @e6060sw_read_vtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6060sw_read_vtu(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.e6060sw_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.e6060sw_softc* @device_get_softc(i32 %13)
  store %struct.e6060sw_softc* %14, %struct.e6060sw_softc** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @device_get_parent(i32 %17)
  %19 = load i64, i64* @GLOBAL_REGISTER, align 8
  %20 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %10, align 8
  %21 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load i32, i32* @VTU_VID_REG, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 4095
  %27 = call i32 @MDIO_WRITEREG(i32 %18, i64 %23, i32 %24, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @device_get_parent(i32 %28)
  %30 = load i64, i64* @GLOBAL_REGISTER, align 8
  %31 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %10, align 8
  %32 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* @VTU_OPERATION, align 4
  %36 = load i32, i32* @VTU_BUSY, align 4
  %37 = load i32, i32* @VTU_GET_NEXT, align 4
  %38 = shl i32 %37, 12
  %39 = or i32 %36, %38
  %40 = call i32 @MDIO_WRITEREG(i32 %29, i64 %34, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %4, %56
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @device_get_parent(i32 %42)
  %44 = load i64, i64* @GLOBAL_REGISTER, align 8
  %45 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %10, align 8
  %46 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* @VTU_OPERATION, align 4
  %50 = call i32 @MDIO_READREG(i32 %43, i64 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @VTU_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %57

56:                                               ; preds = %41
  br label %41

57:                                               ; preds = %55
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @device_get_parent(i32 %58)
  %60 = load i64, i64* @GLOBAL_REGISTER, align 8
  %61 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %10, align 8
  %62 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* @VTU_VID_REG, align 4
  %66 = call i32 @MDIO_READREG(i32 %59, i64 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 4096
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %57
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @device_get_parent(i32 %71)
  %73 = load i64, i64* @GLOBAL_REGISTER, align 8
  %74 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %10, align 8
  %75 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  %78 = load i32, i32* @VTU_DATA1_REG, align 4
  %79 = call i32 @MDIO_READREG(i32 %72, i64 %77, i32 %78)
  %80 = load i32*, i32** %8, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @device_get_parent(i32 %81)
  %83 = load i64, i64* @GLOBAL_REGISTER, align 8
  %84 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %10, align 8
  %85 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = load i32, i32* @VTU_DATA2_REG, align 4
  %89 = call i32 @MDIO_READREG(i32 %82, i64 %87, i32 %88)
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %91, 4095
  store i32 %92, i32* %5, align 4
  br label %94

93:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i32, i32* %5, align 4
  ret i32 %95
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
