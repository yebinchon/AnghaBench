; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VR_ISR_BUSERR = common dso_local global i32 0, align 4
@VR_ISR_LINKSTAT2 = common dso_local global i32 0, align 4
@VR_ISR_STATSOFLOW = common dso_local global i32 0, align 4
@VR_IMR = common dso_local global i32 0, align 4
@PCIR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"PCI bus error(0x%04x) -- resetting\0A\00", align 1
@VR_F_RESTART = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@REV_ID_VT6105M_A0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"unhandled interrupt, status = 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vr_softc*, i32)* @vr_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr_error(%struct.vr_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vr_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @VR_ISR_BUSERR, align 4
  %8 = load i32, i32* @VR_ISR_LINKSTAT2, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VR_ISR_STATSOFLOW, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VR_ISR_BUSERR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %2
  %19 = load i32, i32* @VR_ISR_BUSERR, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %24 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %29 = load i32, i32* @VR_IMR, align 4
  %30 = call i32 @CSR_WRITE_2(%struct.vr_softc* %28, i32 %29, i32 0)
  %31 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %32 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PCIR_STATUS, align 4
  %35 = call i32 @pci_read_config(i32 %33, i32 %34, i32 2)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %37 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %42 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PCIR_STATUS, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pci_write_config(i32 %43, i32 %44, i32 %45, i32 2)
  %47 = load i32, i32* @VR_F_RESTART, align 4
  %48 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %49 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @EAGAIN, align 4
  store i32 %52, i32* %3, align 4
  br label %90

53:                                               ; preds = %2
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @VR_ISR_LINKSTAT2, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @VR_ISR_LINKSTAT2, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @VR_ISR_STATSOFLOW, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load i32, i32* @VR_ISR_STATSOFLOW, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %74 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @REV_ID_VT6105M_A0, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %68
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.vr_softc*, %struct.vr_softc** %4, align 8
  %85 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %80
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @CSR_WRITE_2(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
