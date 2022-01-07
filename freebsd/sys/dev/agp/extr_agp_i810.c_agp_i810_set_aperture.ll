; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_set_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"bad aperture size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AGP_I810_MISCC = common dso_local global i32 0, align 4
@AGP_I810_MISCC_WINSIZE = common dso_local global i32 0, align 4
@AGP_I810_MISCC_WINSIZE_32 = common dso_local global i32 0, align 4
@AGP_I810_MISCC_WINSIZE_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @agp_i810_set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i810_set_aperture(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.agp_i810_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.agp_i810_softc* @device_get_softc(i32 %8)
  store %struct.agp_i810_softc* %9, %struct.agp_i810_softc** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 33554432
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 67108864
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %12, %2
  %21 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %22 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @AGP_I810_MISCC, align 4
  %25 = call i32 @pci_read_config(i32 %23, i32 %24, i32 2)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @AGP_I810_MISCC_WINSIZE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 33554432
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32, i32* @AGP_I810_MISCC_WINSIZE_32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %20
  %37 = load i32, i32* @AGP_I810_MISCC_WINSIZE_64, align 4
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %6, align 8
  %42 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AGP_I810_MISCC, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pci_write_config(i32 %43, i32 %44, i32 %45, i32 2)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
