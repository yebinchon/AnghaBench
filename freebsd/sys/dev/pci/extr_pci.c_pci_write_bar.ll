; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_write_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_write_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_map = type { i32, i32 }
%struct.pci_devinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_map*, i32)* @pci_write_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_write_bar(i32 %0, %struct.pci_map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_devinfo*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_map* %1, %struct.pci_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pci_devinfo* @device_get_ivars(i32 %9)
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %7, align 8
  %11 = load %struct.pci_devinfo*, %struct.pci_devinfo** %7, align 8
  %12 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %11, i32 0, i32 0
  %13 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %14 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @PCIR_IS_BIOS(i32* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 32, i32* %8, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %21 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_maprange(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %27 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pci_write_config(i32 %25, i32 %28, i32 %29, i32 4)
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %36 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 4
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 32
  %41 = call i32 @pci_write_config(i32 %34, i32 %38, i32 %40, i32 4)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %45 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pci_read_config(i32 %43, i32 %46, i32 4)
  %48 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %49 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 64
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %55 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 4
  %58 = call i32 @pci_read_config(i32 %53, i32 %57, i32 4)
  %59 = shl i32 %58, 32
  %60 = load %struct.pci_map*, %struct.pci_map** %5, align 8
  %61 = getelementptr inbounds %struct.pci_map, %struct.pci_map* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %52, %42
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @PCIR_IS_BIOS(i32*, i32) #1

declare dso_local i32 @pci_maprange(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
