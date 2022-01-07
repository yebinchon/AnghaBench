; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_release_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_vga_pci.c_vga_pci_release_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.vga_resource = type { i32, %struct.resource* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vga_pci resource mismatch\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"vga_pci resource reference count underflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @vga_pci_release_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_pci_release_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.vga_resource*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %69 [
    i32 128, label %15
    i32 129, label %15
  ]

15:                                               ; preds = %5, %5
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @device_get_softc(i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.vga_resource* @lookup_res(i32 %17, i32 %18)
  store %struct.vga_resource* %19, %struct.vga_resource** %12, align 8
  %20 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %21 = icmp eq %struct.vga_resource* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %6, align 4
  br label %75

24:                                               ; preds = %15
  %25 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %26 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %25, i32 0, i32 1
  %27 = load %struct.resource*, %struct.resource** %26, align 8
  %28 = icmp eq %struct.resource* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %75

31:                                               ; preds = %24
  %32 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %33 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %32, i32 0, i32 1
  %34 = load %struct.resource*, %struct.resource** %33, align 8
  %35 = load %struct.resource*, %struct.resource** %11, align 8
  %36 = icmp eq %struct.resource* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %40 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %45 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  store i32 0, i32* %6, align 4
  br label %75

48:                                               ; preds = %31
  %49 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %50 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.resource*, %struct.resource** %11, align 8
  %59 = call i32 @bus_release_resource(i32 %55, i32 %56, i32 %57, %struct.resource* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %64 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %63, i32 0, i32 1
  store %struct.resource* null, %struct.resource** %64, align 8
  %65 = load %struct.vga_resource*, %struct.vga_resource** %12, align 8
  %66 = getelementptr inbounds %struct.vga_resource, %struct.vga_resource* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %48
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %6, align 4
  br label %75

69:                                               ; preds = %5
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.resource*, %struct.resource** %11, align 8
  %74 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 %72, %struct.resource* %73)
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %69, %67, %43, %29, %22
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.vga_resource* @lookup_res(i32, i32) #1

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
