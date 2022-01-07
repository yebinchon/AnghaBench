; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.vga_resource = type { %struct.resource*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @vga_pci_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @vga_pci_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vga_resource*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %12, align 4
  switch i32 %19, label %59 [
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %8, %8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @device_get_softc(i32 %21)
  %23 = load i32*, i32** %13, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.vga_resource* @lookup_res(i32 %22, i32 %24)
  store %struct.vga_resource* %25, %struct.vga_resource** %18, align 8
  %26 = load %struct.vga_resource*, %struct.vga_resource** %18, align 8
  %27 = icmp eq %struct.vga_resource* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %68

29:                                               ; preds = %20
  %30 = load %struct.vga_resource*, %struct.vga_resource** %18, align 8
  %31 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %31, align 8
  %33 = icmp eq %struct.resource* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call %struct.resource* @bus_alloc_resource(i32 %35, i32 %36, i32* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.vga_resource*, %struct.vga_resource** %18, align 8
  %44 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %43, i32 0, i32 0
  store %struct.resource* %42, %struct.resource** %44, align 8
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.vga_resource*, %struct.vga_resource** %18, align 8
  %47 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %47, align 8
  %49 = icmp ne %struct.resource* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.vga_resource*, %struct.vga_resource** %18, align 8
  %52 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.vga_resource*, %struct.vga_resource** %18, align 8
  %57 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %56, i32 0, i32 0
  %58 = load %struct.resource*, %struct.resource** %57, align 8
  store %struct.resource* %58, %struct.resource** %9, align 8
  br label %68

59:                                               ; preds = %8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call %struct.resource* @bus_alloc_resource(i32 %60, i32 %61, i32* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  store %struct.resource* %67, %struct.resource** %9, align 8
  br label %68

68:                                               ; preds = %59, %55, %28
  %69 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %69
}

declare dso_local %struct.vga_resource* @lookup_res(i32, i32) #1

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
