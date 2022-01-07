; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_init_vtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_init_vtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e6060sw_softc = type { i64 }

@GLOBAL_REGISTER = common dso_local global i64 0, align 8
@VTU_OPERATION = common dso_local global i32 0, align 4
@VTU_BUSY = common dso_local global i32 0, align 4
@VTU_FLASH = common dso_local global i32 0, align 4
@VTU_DATA1_REG = common dso_local global i32 0, align 4
@VTU_DATA2_REG = common dso_local global i32 0, align 4
@VTU_VID_REG = common dso_local global i32 0, align 4
@VTU_LOAD_PURGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @e6060sw_init_vtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e6060sw_init_vtu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e6060sw_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.e6060sw_softc* @device_get_softc(i32 %5)
  store %struct.e6060sw_softc* %6, %struct.e6060sw_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = load i64, i64* @GLOBAL_REGISTER, align 8
  %10 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %11 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = load i32, i32* @VTU_OPERATION, align 4
  %15 = load i32, i32* @VTU_BUSY, align 4
  %16 = load i32, i32* @VTU_FLASH, align 4
  %17 = shl i32 %16, 12
  %18 = or i32 %15, %17
  %19 = call i32 @MDIO_WRITEREG(i32 %8, i64 %13, i32 %14, i32 %18)
  br label %20

20:                                               ; preds = %1, %35
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = load i64, i64* @GLOBAL_REGISTER, align 8
  %24 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %25 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load i32, i32* @VTU_OPERATION, align 4
  %29 = call i32 @MDIO_READREG(i32 %22, i64 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @VTU_BUSY, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %36

35:                                               ; preds = %20
  br label %20

36:                                               ; preds = %34
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @device_get_parent(i32 %37)
  %39 = load i64, i64* @GLOBAL_REGISTER, align 8
  %40 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %41 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* @VTU_DATA1_REG, align 4
  %45 = call i32 @MDIO_WRITEREG(i32 %38, i64 %43, i32 %44, i32 52428)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @device_get_parent(i32 %46)
  %48 = load i64, i64* @GLOBAL_REGISTER, align 8
  %49 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %50 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load i32, i32* @VTU_DATA2_REG, align 4
  %54 = call i32 @MDIO_WRITEREG(i32 %47, i64 %52, i32 %53, i32 204)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @device_get_parent(i32 %55)
  %57 = load i64, i64* @GLOBAL_REGISTER, align 8
  %58 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %59 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i32, i32* @VTU_VID_REG, align 4
  %63 = call i32 @MDIO_WRITEREG(i32 %56, i64 %61, i32 %62, i32 4097)
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @device_get_parent(i32 %64)
  %66 = load i64, i64* @GLOBAL_REGISTER, align 8
  %67 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %68 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load i32, i32* @VTU_OPERATION, align 4
  %72 = load i32, i32* @VTU_BUSY, align 4
  %73 = load i32, i32* @VTU_LOAD_PURGE, align 4
  %74 = shl i32 %73, 12
  %75 = or i32 %72, %74
  %76 = or i32 %75, 1
  %77 = call i32 @MDIO_WRITEREG(i32 %65, i64 %70, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %36, %93
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @device_get_parent(i32 %79)
  %81 = load i64, i64* @GLOBAL_REGISTER, align 8
  %82 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %3, align 8
  %83 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load i32, i32* @VTU_OPERATION, align 4
  %87 = call i32 @MDIO_READREG(i32 %80, i64 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @VTU_BUSY, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %94

93:                                               ; preds = %78
  br label %78

94:                                               ; preds = %92
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
