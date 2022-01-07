; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_cam_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_cam_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i32 }

@VGE_CAM_MAXADDRS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VGE_CAMCTL = common dso_local global i64 0, align 8
@VGE_CAMCTL_PAGESEL = common dso_local global i32 0, align 4
@VGE_PAGESEL_CAMDATA = common dso_local global i32 0, align 4
@VGE_CAMADDR = common dso_local global i64 0, align 8
@VGE_CAMADDR_ENABLE = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@VGE_CAM0 = common dso_local global i64 0, align 8
@VGE_CAMCTL_WRITE = common dso_local global i32 0, align 4
@VGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"setting CAM filter failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VGE_PAGESEL_CAMMASK = common dso_local global i32 0, align 4
@VGE_PAGESEL_MAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vge_softc*, i32*)* @vge_cam_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vge_cam_set(%struct.vge_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vge_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %9 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VGE_CAM_MAXADDRS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSPC, align 4
  store i32 %14, i32* %3, align 4
  br label %123

15:                                               ; preds = %2
  %16 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %17 = load i64, i64* @VGE_CAMCTL, align 8
  %18 = load i32, i32* @VGE_CAMCTL_PAGESEL, align 4
  %19 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %16, i64 %17, i32 %18)
  %20 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %21 = load i64, i64* @VGE_CAMCTL, align 8
  %22 = load i32, i32* @VGE_PAGESEL_CAMDATA, align 4
  %23 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %20, i64 %21, i32 %22)
  %24 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %25 = load i64, i64* @VGE_CAMADDR, align 8
  %26 = load i32, i32* @VGE_CAMADDR_ENABLE, align 4
  %27 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %28 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %26, %29
  %31 = call i32 @CSR_WRITE_1(%struct.vge_softc* %24, i64 %25, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %48, %15
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %38 = load i64, i64* @VGE_CAM0, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CSR_WRITE_1(%struct.vge_softc* %37, i64 %41, i32 %46)
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %53 = load i64, i64* @VGE_CAMCTL, align 8
  %54 = load i32, i32* @VGE_CAMCTL_WRITE, align 4
  %55 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %52, i64 %53, i32 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %70, %51
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @VGE_TIMEOUT, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = call i32 @DELAY(i32 1)
  %62 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %63 = load i64, i64* @VGE_CAMCTL, align 8
  %64 = call i32 @CSR_READ_1(%struct.vge_softc* %62, i64 %63)
  %65 = load i32, i32* @VGE_CAMCTL_WRITE, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %73

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %56

73:                                               ; preds = %68, %56
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @VGE_TIMEOUT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %79 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  store i32 %82, i32* %7, align 4
  br label %110

83:                                               ; preds = %73
  %84 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %85 = load i64, i64* @VGE_CAMCTL, align 8
  %86 = load i32, i32* @VGE_CAMCTL_PAGESEL, align 4
  %87 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %84, i64 %85, i32 %86)
  %88 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %89 = load i64, i64* @VGE_CAMCTL, align 8
  %90 = load i32, i32* @VGE_PAGESEL_CAMMASK, align 4
  %91 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %88, i64 %89, i32 %90)
  %92 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %93 = load i64, i64* @VGE_CAM0, align 8
  %94 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %95 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %93, %98
  %100 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %101 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 7
  %104 = shl i32 1, %103
  %105 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %92, i64 %99, i32 %104)
  %106 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %107 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %83, %77
  %111 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %112 = load i64, i64* @VGE_CAMADDR, align 8
  %113 = call i32 @CSR_WRITE_1(%struct.vge_softc* %111, i64 %112, i32 0)
  %114 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %115 = load i64, i64* @VGE_CAMCTL, align 8
  %116 = load i32, i32* @VGE_CAMCTL_PAGESEL, align 4
  %117 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %114, i64 %115, i32 %116)
  %118 = load %struct.vge_softc*, %struct.vge_softc** %4, align 8
  %119 = load i64, i64* @VGE_CAMCTL, align 8
  %120 = load i32, i32* @VGE_PAGESEL_MAR, align 4
  %121 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %118, i64 %119, i32 %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %110, %13
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @CSR_CLRBIT_1(%struct.vge_softc*, i64, i32) #1

declare dso_local i32 @CSR_SETBIT_1(%struct.vge_softc*, i64, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
