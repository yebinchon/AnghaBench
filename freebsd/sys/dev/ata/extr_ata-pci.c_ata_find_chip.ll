; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_find_chip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_find_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_chip_id = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_chip_id* @ata_find_chip(i32 %0, %struct.ata_chip_id* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_chip_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_chip_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_chip_id*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ata_chip_id* %1, %struct.ata_chip_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  %15 = call i64 @device_get_children(i32 %14, i32** %9, i32* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.ata_chip_id* null, %struct.ata_chip_id** %4, align 8
  br label %68

18:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %61, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_get_slot(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp sle i32 %40, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %39, %32
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ata_chip_id*, %struct.ata_chip_id** %6, align 8
  %51 = call %struct.ata_chip_id* @ata_match_chip(i32 %49, %struct.ata_chip_id* %50)
  store %struct.ata_chip_id* %51, %struct.ata_chip_id** %8, align 8
  %52 = load %struct.ata_chip_id*, %struct.ata_chip_id** %8, align 8
  %53 = icmp ne %struct.ata_chip_id* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* @M_TEMP, align 4
  %57 = call i32 @free(i32* %55, i32 %56)
  %58 = load %struct.ata_chip_id*, %struct.ata_chip_id** %8, align 8
  store %struct.ata_chip_id* %58, %struct.ata_chip_id** %4, align 8
  br label %68

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59, %39, %36
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %19

64:                                               ; preds = %19
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @M_TEMP, align 4
  %67 = call i32 @free(i32* %65, i32 %66)
  store %struct.ata_chip_id* null, %struct.ata_chip_id** %4, align 8
  br label %68

68:                                               ; preds = %64, %54, %17
  %69 = load %struct.ata_chip_id*, %struct.ata_chip_id** %4, align 8
  ret %struct.ata_chip_id* %69
}

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local %struct.ata_chip_id* @ata_match_chip(i32, %struct.ata_chip_id*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
