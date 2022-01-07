; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_unmap_bios.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_unmap_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga_resource = type { i32* }

@VGA_PCI_BIOS_SHADOW_SIZE = common dso_local global i32 0, align 4
@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIR_BIOS_1 = common dso_local global i32 0, align 4
@PCIR_BIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"vga_pci_unmap_bios: bios not mapped\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vga_pci_unmap_bios: mismatch\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vga_pci_unmap_bios(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vga_resource*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %58

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @vga_pci_is_boot_display(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load i32, i32* @VGA_PCI_BIOS_SHADOW_SIZE, align 4
  %18 = call i32 @pmap_unmapdev(i32 %16, i32 %17)
  br label %58

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIR_HDRTYPE, align 4
  %22 = call i32 @pci_read_config(i32 %20, i32 %21, i32 1)
  switch i32 %22, label %26 [
    i32 129, label %23
    i32 128, label %25
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @PCIR_BIOS_1, align 4
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @PCIR_BIOS, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %25, %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %58

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_softc(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.vga_resource* @lookup_res(i32 %34, i32 %35)
  store %struct.vga_resource* %36, %struct.vga_resource** %5, align 8
  %37 = load %struct.vga_resource*, %struct.vga_resource** %5, align 8
  %38 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.vga_resource*, %struct.vga_resource** %5, align 8
  %44 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @rman_get_virtual(i32* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = icmp eq i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.vga_resource*, %struct.vga_resource** %5, align 8
  %55 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @vga_pci_release_resource(i32 %51, i32* null, i32 %52, i32 %53, i32* %56)
  br label %58

58:                                               ; preds = %32, %31, %14, %9
  ret void
}

declare dso_local i64 @vga_pci_is_boot_display(i32) #1

declare dso_local i32 @pmap_unmapdev(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local %struct.vga_resource* @lookup_res(i32, i32) #1

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @rman_get_virtual(i32*) #1

declare dso_local i32 @vga_pci_release_resource(i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
