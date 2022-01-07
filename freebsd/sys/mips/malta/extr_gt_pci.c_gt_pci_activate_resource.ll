; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/malta/extr_gt_pci.c_gt_pci_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @gt_pci_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt_pci_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SYS_RES_IOPORT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17, %5
  %22 = load %struct.resource*, %struct.resource** %11, align 8
  %23 = call i32 @rman_get_bustag(%struct.resource* %22)
  %24 = load %struct.resource*, %struct.resource** %11, align 8
  %25 = call i32 @rman_get_bushandle(%struct.resource* %24)
  %26 = load %struct.resource*, %struct.resource** %11, align 8
  %27 = call i32 @rman_get_size(%struct.resource* %26)
  %28 = call i32 @bus_space_map(i32 %23, i32 %25, i32 %27, i32 0, i32* %12)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.resource*, %struct.resource** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @rman_set_bushandle(%struct.resource* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %17
  %38 = load %struct.resource*, %struct.resource** %11, align 8
  %39 = call i32 @rman_activate_resource(%struct.resource* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
