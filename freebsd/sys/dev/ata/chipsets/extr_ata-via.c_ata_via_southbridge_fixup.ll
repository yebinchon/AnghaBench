; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_southbridge_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_southbridge_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_VIA8363 = common dso_local global i64 0, align 8
@ATA_VIA8371 = common dso_local global i64 0, align 8
@ATA_VIA8662 = common dso_local global i64 0, align 8
@ATA_VIA8361 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Correcting VIA config for southbridge data corruption bug\0A\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_via_southbridge_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_via_southbridge_fixup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i64 @device_get_children(i32 %8, i32** %3, i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %90

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %83, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @pci_get_devid(i32 %22)
  %24 = load i64, i64* @ATA_VIA8363, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %53, label %26

26:                                               ; preds = %17
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pci_get_devid(i32 %31)
  %33 = load i64, i64* @ATA_VIA8371, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %53, label %35

35:                                               ; preds = %26
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @pci_get_devid(i32 %40)
  %42 = load i64, i64* @ATA_VIA8662, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %35
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @pci_get_devid(i32 %49)
  %51 = load i64, i64* @ATA_VIA8361, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %44, %35, %26, %17
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pci_read_config(i32 %58, i32 118, i32 1)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 240
  %62 = icmp ne i32 %61, 208
  br i1 %62, label %63, label %81

63:                                               ; preds = %53
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pci_write_config(i32 %70, i32 117, i32 128, i32 1)
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, 15
  %79 = or i32 %78, 208
  %80 = call i32 @pci_write_config(i32 %76, i32 118, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %63, %53
  br label %86

82:                                               ; preds = %44
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %13

86:                                               ; preds = %81, %13
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @M_TEMP, align 4
  %89 = call i32 @free(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %11
  ret void
}

declare dso_local i64 @device_get_children(i32, i32**, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
