; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_cam_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_cam_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BFE_CAM_DATA_LO = common dso_local global i32 0, align 4
@BFE_CAM_HI_VALID = common dso_local global i32 0, align 4
@BFE_CAM_DATA_HI = common dso_local global i32 0, align 4
@BFE_CAM_CTRL = common dso_local global i32 0, align 4
@BFE_CAM_WRITE = common dso_local global i32 0, align 4
@BFE_CAM_INDEX_SHIFT = common dso_local global i32 0, align 4
@BFE_CAM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*, i64*, i32)* @bfe_cam_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_cam_write(%struct.bfe_softc* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.bfe_softc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64*, i64** %5, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 2
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 24
  store i32 %12, i32* %7, align 4
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 3
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 4
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i64*, i64** %5, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 5
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %34 = load i32, i32* @BFE_CAM_DATA_LO, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @BFE_CAM_HI_VALID, align 4
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 8
  %43 = or i32 %37, %42
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = or i32 %43, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %50 = load i32, i32* @BFE_CAM_DATA_HI, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %49, i32 %50, i32 %51)
  %53 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %54 = load i32, i32* @BFE_CAM_CTRL, align 4
  %55 = load i32, i32* @BFE_CAM_WRITE, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BFE_CAM_INDEX_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %53, i32 %54, i32 %59)
  %61 = load %struct.bfe_softc*, %struct.bfe_softc** %4, align 8
  %62 = load i32, i32* @BFE_CAM_CTRL, align 4
  %63 = load i32, i32* @BFE_CAM_BUSY, align 4
  %64 = call i32 @bfe_wait_bit(%struct.bfe_softc* %61, i32 %62, i32 %63, i32 10000, i32 1)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @bfe_wait_bit(%struct.bfe_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
