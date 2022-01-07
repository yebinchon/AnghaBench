; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_pm_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-sata.c_ata_pm_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i64 (i32, i32, i32, i32*)* }

@ATA_PM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error getting PM vendor data\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"error getting PM revision data\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"error getting PM port info\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"SiI 3726 (rev=%x) Port Multiplier with %d (5) ports\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"SiI 4726 (rev=%x) Port Multiplier with %d (5) ports\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Port Multiplier (id=%08x rev=%x) with %d ports\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"p%d: SIGNATURE=%08x\0A\00", align 1
@ATA_ATA_MASTER = common dso_local global i32 0, align 4
@ATA_ATAPI_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_pm_identify(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.ata_channel* @device_get_softc(i32 %9)
  store %struct.ata_channel* %10, %struct.ata_channel** %3, align 8
  %11 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %12 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64 (i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32*)** %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @ATA_PM, align 4
  %17 = call i64 %14(i32 %15, i32 %16, i32 0, i32* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %116

22:                                               ; preds = %1
  %23 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64 (i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32*)** %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @ATA_PM, align 4
  %29 = call i64 %26(i32 %27, i32 %28, i32 1, i32* %5)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %116

34:                                               ; preds = %22
  %35 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %36 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64 (i32, i32, i32, i32*)*, i64 (i32, i32, i32, i32*)** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @ATA_PM, align 4
  %41 = call i64 %38(i32 %39, i32 %40, i32 2, i32* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %2, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %116

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 15
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %60 [
    i32 925241493, label %50
    i32 1193676949, label %55
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %53)
  store i32 5, i32* %6, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %58)
  store i32 5, i32* %6, align 4
  br label %66

60:                                               ; preds = %46
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %55, %50
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %113, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %116

71:                                               ; preds = %67
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ata_sata_phy_reset(i32 %72, i32 %73, i32 1)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %113

77:                                               ; preds = %71
  %78 = call i32 @DELAY(i32 1000000)
  %79 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %80 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (i32, i32)*, i32 (i32, i32)** %81, align 8
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 %82(i32 %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i64, i64* @bootverbose, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %77
  %94 = load i32, i32* %8, align 4
  %95 = ashr i32 %94, 16
  switch i32 %95, label %112 [
    i32 0, label %96
    i32 60180, label %104
  ]

96:                                               ; preds = %93
  %97 = load i32, i32* @ATA_ATA_MASTER, align 4
  %98 = load i32, i32* %7, align 4
  %99 = shl i32 %97, %98
  %100 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %101 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %113

104:                                              ; preds = %93
  %105 = load i32, i32* @ATA_ATAPI_MASTER, align 4
  %106 = load i32, i32* %7, align 4
  %107 = shl i32 %105, %106
  %108 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %109 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %113

112:                                              ; preds = %93
  br label %113

113:                                              ; preds = %112, %104, %96, %76
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %67

116:                                              ; preds = %19, %31, %43, %67
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ata_sata_phy_reset(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
