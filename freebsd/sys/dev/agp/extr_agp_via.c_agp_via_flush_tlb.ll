; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_flush_tlb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_via.c_agp_via_flush_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_via_softc = type { i32* }

@via_v2_regs = common dso_local global i32* null, align 8
@REG_GARTCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @agp_via_flush_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_via_flush_tlb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_via_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.agp_via_softc* @device_get_softc(i32 %5)
  store %struct.agp_via_softc* %6, %struct.agp_via_softc** %3, align 8
  %7 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %8 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32*, i32** @via_v2_regs, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %15 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @REG_GARTCTRL, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_write_config(i32 %13, i32 %19, i32 143, i32 4)
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %23 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @REG_GARTCTRL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pci_write_config(i32 %21, i32 %27, i32 15, i32 4)
  br label %57

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %32 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @REG_GARTCTRL, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pci_read_config(i32 %30, i32 %36, i32 4)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %40 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @REG_GARTCTRL, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, -129
  %47 = call i32 @pci_write_config(i32 %38, i32 %44, i32 %46, i32 4)
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.agp_via_softc*, %struct.agp_via_softc** %3, align 8
  %50 = getelementptr inbounds %struct.agp_via_softc, %struct.agp_via_softc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @REG_GARTCTRL, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @pci_write_config(i32 %48, i32 %54, i32 %55, i32 4)
  br label %57

57:                                               ; preds = %29, %12
  ret void
}

declare dso_local %struct.agp_via_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
