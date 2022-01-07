; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_tf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_tf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ata_channel = type { i32 }

@ATA_R_48BIT = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_request*)* @ata_serverworks_tf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_serverworks_tf_read(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %5 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %6 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %3, align 8
  %9 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %10 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ATA_R_48BIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %1
  %16 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %17 = load i32, i32* @ATA_COUNT, align 4
  %18 = call i32 @ATA_IDX_INW(%struct.ata_channel* %16, i32 %17)
  %19 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %20 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %24 = load i32, i32* @ATA_SECTOR, align 4
  %25 = call i32 @ATA_IDX_INW(%struct.ata_channel* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 65280
  %30 = shl i32 %29, 24
  %31 = or i32 %27, %30
  %32 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %33 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %37 = load i32, i32* @ATA_CYL_LSB, align 4
  %38 = call i32 @ATA_IDX_INW(%struct.ata_channel* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 65280
  %44 = shl i32 %43, 32
  %45 = or i32 %41, %44
  %46 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %47 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %53 = load i32, i32* @ATA_CYL_MSB, align 4
  %54 = call i32 @ATA_IDX_INW(%struct.ata_channel* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 16
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 65280
  %60 = shl i32 %59, 40
  %61 = or i32 %57, %60
  %62 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %63 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %103

68:                                               ; preds = %1
  %69 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %70 = load i32, i32* @ATA_COUNT, align 4
  %71 = call i32 @ATA_IDX_INW(%struct.ata_channel* %69, i32 %70)
  %72 = and i32 %71, 255
  %73 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %74 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %78 = load i32, i32* @ATA_SECTOR, align 4
  %79 = call i32 @ATA_IDX_INW(%struct.ata_channel* %77, i32 %78)
  %80 = and i32 %79, 255
  %81 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %82 = load i32, i32* @ATA_CYL_LSB, align 4
  %83 = call i32 @ATA_IDX_INW(%struct.ata_channel* %81, i32 %82)
  %84 = and i32 %83, 255
  %85 = shl i32 %84, 8
  %86 = or i32 %80, %85
  %87 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %88 = load i32, i32* @ATA_CYL_MSB, align 4
  %89 = call i32 @ATA_IDX_INW(%struct.ata_channel* %87, i32 %88)
  %90 = and i32 %89, 255
  %91 = shl i32 %90, 16
  %92 = or i32 %86, %91
  %93 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %94 = load i32, i32* @ATA_DRIVE, align 4
  %95 = call i32 @ATA_IDX_INW(%struct.ata_channel* %93, i32 %94)
  %96 = and i32 %95, 15
  %97 = shl i32 %96, 24
  %98 = or i32 %92, %97
  %99 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %100 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %68, %15
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_INW(%struct.ata_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
