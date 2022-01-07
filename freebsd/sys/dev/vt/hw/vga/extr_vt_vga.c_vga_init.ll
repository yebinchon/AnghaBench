; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32, i32, i32*, %struct.vga_softc* }
%struct.vga_softc = type { i32, i32, i32, i32, i32 }

@vga_conssoftc = common dso_local global i32 0, align 4
@VDF_DOWNGRADE = common dso_local global i32 0, align 4
@X86_BUS_SPACE_MEM = common dso_local global i32 0, align 4
@X86_BUS_SPACE_IO = common dso_local global i32 0, align 4
@VGA_REG_BASE = common dso_local global i32 0, align 4
@VGA_REG_SIZE = common dso_local global i32 0, align 4
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"hw.vga.textmode\00", align 1
@VDF_TEXTMODE = common dso_local global i32 0, align 4
@VGA_TXT_BASE = common dso_local global i32 0, align 4
@VGA_TXT_SIZE = common dso_local global i32 0, align 4
@VT_VGA_WIDTH = common dso_local global i32 0, align 4
@VT_VGA_HEIGHT = common dso_local global i32 0, align 4
@VGA_MEM_BASE = common dso_local global i32 0, align 4
@VGA_MEM_SIZE = common dso_local global i32 0, align 4
@CN_DEAD = common dso_local global i32 0, align 4
@CN_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @vga_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_init(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.vga_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  %6 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %7 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %6, i32 0, i32 4
  %8 = load %struct.vga_softc*, %struct.vga_softc** %7, align 8
  %9 = icmp eq %struct.vga_softc* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %12 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %11, i32 0, i32 4
  store %struct.vga_softc* bitcast (i32* @vga_conssoftc to %struct.vga_softc*), %struct.vga_softc** %12, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %15 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %14, i32 0, i32 4
  %16 = load %struct.vga_softc*, %struct.vga_softc** %15, align 8
  store %struct.vga_softc* %16, %struct.vga_softc** %4, align 8
  %17 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %18 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VDF_DOWNGRADE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %13
  %24 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %25 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %30 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @vga_pci_repost(i32* %31)
  br label %33

33:                                               ; preds = %28, %23, %13
  %34 = load i32, i32* @X86_BUS_SPACE_MEM, align 4
  %35 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %36 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @X86_BUS_SPACE_IO, align 4
  %38 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %39 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %41 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VGA_REG_BASE, align 4
  %44 = load i32, i32* @VGA_REG_SIZE, align 4
  %45 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %46 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %45, i32 0, i32 3
  %47 = call i32 @bus_space_map(i32 %42, i32 %43, i32 %44, i32 0, i32* %46)
  %48 = load i64, i64* @vm_guest, align 8
  %49 = load i64, i64* @VM_GUEST_NO, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  %52 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %5)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %33
  %56 = load i32, i32* @VDF_TEXTMODE, align 4
  %57 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %58 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %62 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %61, i32 0, i32 1
  store i32 80, i32* %62, align 4
  %63 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %64 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %63, i32 0, i32 2
  store i32 25, i32* %64, align 8
  %65 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %66 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VGA_TXT_BASE, align 4
  %69 = load i32, i32* @VGA_TXT_SIZE, align 4
  %70 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %71 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %70, i32 0, i32 1
  %72 = call i32 @bus_space_map(i32 %67, i32 %68, i32 %69, i32 0, i32* %71)
  br label %88

73:                                               ; preds = %33
  %74 = load i32, i32* @VT_VGA_WIDTH, align 4
  %75 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %76 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @VT_VGA_HEIGHT, align 4
  %78 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %79 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %81 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VGA_MEM_BASE, align 4
  %84 = load i32, i32* @VGA_MEM_SIZE, align 4
  %85 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %86 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %85, i32 0, i32 1
  %87 = call i32 @bus_space_map(i32 %82, i32 %83, i32 %84, i32 0, i32* %86)
  br label %88

88:                                               ; preds = %73, %55
  %89 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @vga_initialize(%struct.vt_device* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @CN_DEAD, align 4
  store i32 %94, i32* %2, align 4
  br label %99

95:                                               ; preds = %88
  %96 = load %struct.vga_softc*, %struct.vga_softc** %4, align 8
  %97 = getelementptr inbounds %struct.vga_softc, %struct.vga_softc* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %93
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @vga_pci_repost(i32*) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i64 @vga_initialize(%struct.vt_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
