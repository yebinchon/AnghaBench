; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_match_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_match_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_chip_id = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_chip_id* @ata_match_chip(i32 %0, %struct.ata_chip_id* %1) #0 {
  %3 = alloca %struct.ata_chip_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_chip_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ata_chip_id* %1, %struct.ata_chip_id** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @pci_get_devid(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @pci_get_revid(i32 %10)
  store i64 %11, i64* %7, align 8
  br label %12

12:                                               ; preds = %31, %2
  %13 = load %struct.ata_chip_id*, %struct.ata_chip_id** %5, align 8
  %14 = getelementptr inbounds %struct.ata_chip_id, %struct.ata_chip_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.ata_chip_id*, %struct.ata_chip_id** %5, align 8
  %20 = getelementptr inbounds %struct.ata_chip_id, %struct.ata_chip_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ata_chip_id*, %struct.ata_chip_id** %5, align 8
  %26 = getelementptr inbounds %struct.ata_chip_id, %struct.ata_chip_id* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.ata_chip_id*, %struct.ata_chip_id** %5, align 8
  store %struct.ata_chip_id* %30, %struct.ata_chip_id** %3, align 8
  br label %35

31:                                               ; preds = %23, %17
  %32 = load %struct.ata_chip_id*, %struct.ata_chip_id** %5, align 8
  %33 = getelementptr inbounds %struct.ata_chip_id, %struct.ata_chip_id* %32, i32 1
  store %struct.ata_chip_id* %33, %struct.ata_chip_id** %5, align 8
  br label %12

34:                                               ; preds = %12
  store %struct.ata_chip_id* null, %struct.ata_chip_id** %3, align 8
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.ata_chip_id*, %struct.ata_chip_id** %3, align 8
  ret %struct.ata_chip_id* %36
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
