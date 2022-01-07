; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i965_get_gtt_total_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i965_get_gtt_total_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32, i32* }

@AGP_I810_PGTBL_CTL = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_SIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown page table size\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_i965_get_gtt_total_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i965_get_gtt_total_entries(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_i810_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.agp_i810_softc* @device_get_softc(i32 %6)
  store %struct.agp_i810_softc* %7, %struct.agp_i810_softc** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %9 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %14 = call i32 @bus_read_4(i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @AGP_I810_PGTBL_SIZE_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %36 [
    i32 133, label %18
    i32 130, label %21
    i32 128, label %24
    i32 132, label %27
    i32 129, label %30
    i32 131, label %33
  ]

18:                                               ; preds = %1
  %19 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %20 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %19, i32 0, i32 0
  store i32 32768, i32* %20, align 8
  br label %40

21:                                               ; preds = %1
  %22 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %23 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %22, i32 0, i32 0
  store i32 65536, i32* %23, align 8
  br label %40

24:                                               ; preds = %1
  %25 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %26 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %25, i32 0, i32 0
  store i32 131072, i32* %26, align 8
  br label %40

27:                                               ; preds = %1
  %28 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %29 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %28, i32 0, i32 0
  store i32 262144, i32* %29, align 8
  br label %40

30:                                               ; preds = %1
  %31 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %32 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %31, i32 0, i32 0
  store i32 524288, i32* %32, align 8
  br label %40

33:                                               ; preds = %1
  %34 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %3, align 8
  %35 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %34, i32 0, i32 0
  store i32 393216, i32* %35, align 8
  br label %40

36:                                               ; preds = %1
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %33, %30, %27, %24, %21, %18
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
