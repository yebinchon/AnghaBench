; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_memobj_write_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_memobj_write_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32 }

@BWI_MOBJ_DATA = common dso_local global i32 0, align 4
@BWI_MOBJ_DATA_UNALIGN = common dso_local global i32 0, align 4
@BWI_MOBJ_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_memobj_write_2(%struct.bwi_mac* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bwi_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %13 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %12, i32 0, i32 0
  %14 = load %struct.bwi_softc*, %struct.bwi_softc** %13, align 8
  store %struct.bwi_softc* %14, %struct.bwi_softc** %9, align 8
  %15 = load i32, i32* @BWI_MOBJ_DATA, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sdiv i32 %16, 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = srem i32 %18, 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @BWI_MOBJ_DATA_UNALIGN, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %21, %4
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %25 = load i32, i32* @BWI_MOBJ_CTRL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @BWI_MOBJ_CTRL_VAL(i32 %26, i32 %27)
  %29 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %24, i32 %25, i32 %28)
  %30 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @BWI_MOBJ_CTRL_VAL(i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
