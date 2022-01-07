; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_memobj_read_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_memobj_read_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_softc* }
%struct.bwi_softc = type { i32 }

@BWI_MOBJ_CTRL = common dso_local global i32 0, align 4
@BWI_MOBJ_DATA_UNALIGN = common dso_local global i32 0, align 4
@BWI_MOBJ_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_memobj_read_4(%struct.bwi_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %5, align 8
  %12 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %11, i32 0, i32 0
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %12, align 8
  store %struct.bwi_softc* %13, %struct.bwi_softc** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = srem i32 %16, 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  %21 = load i32, i32* @BWI_MOBJ_CTRL, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @BWI_MOBJ_CTRL_VAL(i32 %22, i32 %23)
  %25 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %20, i32 %21, i32 %24)
  %26 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  %27 = load i32, i32* @BWI_MOBJ_DATA_UNALIGN, align 4
  %28 = call i32 @CSR_READ_2(%struct.bwi_softc* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 16
  store i32 %30, i32* %10, align 4
  %31 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  %32 = load i32, i32* @BWI_MOBJ_CTRL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @BWI_MOBJ_CTRL_VAL(i32 %33, i32 %35)
  %37 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %31, i32 %32, i32 %36)
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  %39 = load i32, i32* @BWI_MOBJ_DATA, align 4
  %40 = call i32 @CSR_READ_2(%struct.bwi_softc* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %3
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  %46 = load i32, i32* @BWI_MOBJ_CTRL, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @BWI_MOBJ_CTRL_VAL(i32 %47, i32 %48)
  %50 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %45, i32 %46, i32 %49)
  %51 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  %52 = load i32, i32* @BWI_MOBJ_DATA, align 4
  %53 = call i32 @CSR_READ_4(%struct.bwi_softc* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %44, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @BWI_MOBJ_CTRL_VAL(i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
