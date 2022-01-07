; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_pci.c_ahci_ata_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_pci.c_ahci_ata_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8* }

@ENXIO = common dso_local global i32 0, align 4
@ahci_ids = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"%s AHCI SATA controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"AHCI SATA controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_ata_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_ata_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @pci_get_devid(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @pci_get_revid(i32 %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @device_get_ivars(i32 %12)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %58, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %18
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ahci_ids, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @snprintf(i8* %45, i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* %3, align 4
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %55 = call i32 @device_set_desc_copy(i32 %53, i8* %54)
  %56 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %35, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %18

61:                                               ; preds = %18
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_set_desc_copy(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %44, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i64 @pci_get_revid(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
