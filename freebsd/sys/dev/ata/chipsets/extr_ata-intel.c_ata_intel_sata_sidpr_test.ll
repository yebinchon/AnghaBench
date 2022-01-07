; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_sidpr_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_sidpr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32 }

@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@ATA_SCONTROL = common dso_local global i32 0, align 4
@ATA_SC_IPM_MASK = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_PARTIAL = common dso_local global i32 0, align 4
@ATA_SC_IPM_DIS_SLUMBER = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"SControl registers are not functional: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_intel_sata_sidpr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_sata_sidpr_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %4, align 8
  %9 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %10 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ATA_NO_SLAVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %57, %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ATA_SCONTROL, align 4
  %24 = call i32 @ata_intel_sata_sidpr_read(i32 %21, i32 %22, i32 %23, i32* %6)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ATA_SC_IPM_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %29 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %68

33:                                               ; preds = %20
  %34 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %35 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ATA_SCONTROL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @ata_intel_sata_sidpr_write(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ATA_SCONTROL, align 4
  %47 = call i32 @ata_intel_sata_sidpr_read(i32 %44, i32 %45, i32 %46, i32* %6)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ATA_SC_IPM_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @ATA_SC_IPM_DIS_PARTIAL, align 4
  %52 = load i32, i32* @ATA_SC_IPM_DIS_SLUMBER, align 4
  %53 = or i32 %51, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %68

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  br label %17

60:                                               ; preds = %17
  %61 = load i64, i64* @bootverbose, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %60
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %55, %32
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ata_intel_sata_sidpr_read(i32, i32, i32, i32*) #1

declare dso_local i32 @ata_intel_sata_sidpr_write(i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
