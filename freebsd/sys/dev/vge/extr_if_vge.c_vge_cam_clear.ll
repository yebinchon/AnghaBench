; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_cam_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_cam_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i64 }

@VGE_CAMCTL = common dso_local global i32 0, align 4
@VGE_CAMCTL_PAGESEL = common dso_local global i32 0, align 4
@VGE_PAGESEL_CAMMASK = common dso_local global i32 0, align 4
@VGE_CAMADDR = common dso_local global i64 0, align 8
@VGE_CAMADDR_ENABLE = common dso_local global i32 0, align 4
@VGE_CAM0 = common dso_local global i64 0, align 8
@VGE_CAMADDR_AVSEL = common dso_local global i32 0, align 4
@VGE_PAGESEL_MAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_cam_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_cam_clear(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %4 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %5 = load i32, i32* @VGE_CAMCTL, align 4
  %6 = load i32, i32* @VGE_CAMCTL_PAGESEL, align 4
  %7 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %4, i32 %5, i32 %6)
  %8 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %9 = load i32, i32* @VGE_CAMCTL, align 4
  %10 = load i32, i32* @VGE_PAGESEL_CAMMASK, align 4
  %11 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %13 = load i64, i64* @VGE_CAMADDR, align 8
  %14 = load i32, i32* @VGE_CAMADDR_ENABLE, align 4
  %15 = call i32 @CSR_WRITE_1(%struct.vge_softc* %12, i64 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %26, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %21 = load i64, i64* @VGE_CAM0, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @CSR_WRITE_1(%struct.vge_softc* %20, i64 %24, i32 0)
  br label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %31 = load i64, i64* @VGE_CAMADDR, align 8
  %32 = load i32, i32* @VGE_CAMADDR_ENABLE, align 4
  %33 = load i32, i32* @VGE_CAMADDR_AVSEL, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @CSR_WRITE_1(%struct.vge_softc* %30, i64 %31, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %46, %29
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %41 = load i64, i64* @VGE_CAM0, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @CSR_WRITE_1(%struct.vge_softc* %40, i64 %44, i32 0)
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %51 = load i64, i64* @VGE_CAMADDR, align 8
  %52 = call i32 @CSR_WRITE_1(%struct.vge_softc* %50, i64 %51, i32 0)
  %53 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %54 = load i32, i32* @VGE_CAMCTL, align 4
  %55 = load i32, i32* @VGE_CAMCTL_PAGESEL, align 4
  %56 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %53, i32 %54, i32 %55)
  %57 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %58 = load i32, i32* @VGE_CAMCTL, align 4
  %59 = load i32, i32* @VGE_PAGESEL_MAR, align 4
  %60 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %57, i32 %58, i32 %59)
  %61 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %62 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  ret void
}

declare dso_local i32 @CSR_CLRBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_SETBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
