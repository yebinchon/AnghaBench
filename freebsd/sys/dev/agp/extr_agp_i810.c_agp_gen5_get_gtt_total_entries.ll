; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_gen5_get_gtt_total_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_gen5_get_gtt_total_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32 }

@AGP_I830_GCC1 = common dso_local global i32 0, align 4
@AGP_G4x_GCC1_SIZE_MASK = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_SIZE_1MB = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_SIZE_1_5MB = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_SIZE_2MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown page table size\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_gen5_get_gtt_total_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_gen5_get_gtt_total_entries(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_i810_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.agp_i810_softc* @device_get_softc(i32 %6)
  store %struct.agp_i810_softc* %7, %struct.agp_i810_softc** %4, align 8
  %8 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %9 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AGP_I830_GCC1, align 4
  %12 = call i32 @pci_read_config(i32 %10, i32 %11, i32 2)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @AGP_G4x_GCC1_SIZE_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %28 [
    i32 132, label %16
    i32 130, label %16
    i32 129, label %20
    i32 131, label %24
    i32 128, label %24
  ]

16:                                               ; preds = %1, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @AGP_I810_PGTBL_SIZE_1MB, align 4
  %19 = call i32 @agp_gen5_adjust_pgtbl_size(i32 %17, i32 %18)
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AGP_I810_PGTBL_SIZE_1_5MB, align 4
  %23 = call i32 @agp_gen5_adjust_pgtbl_size(i32 %21, i32 %22)
  br label %32

24:                                               ; preds = %1, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @AGP_I810_PGTBL_SIZE_2MB, align 4
  %27 = call i32 @agp_gen5_adjust_pgtbl_size(i32 %25, i32 %26)
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %24, %20, %16
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @agp_i965_get_gtt_total_entries(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @agp_gen5_adjust_pgtbl_size(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @agp_i965_get_gtt_total_entries(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
