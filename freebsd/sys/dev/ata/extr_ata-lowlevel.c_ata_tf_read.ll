; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_tf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_tf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ata_channel = type { i32 }

@ATA_R_48BIT = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i32 0, align 4
@ATA_A_4BIT = common dso_local global i32 0, align 4
@ATA_A_HOB = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_DRIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_request*)* @ata_tf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_tf_read(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_channel*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %4 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %5 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ata_channel* @device_get_softc(i32 %6)
  store %struct.ata_channel* %7, %struct.ata_channel** %3, align 8
  %8 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %9 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATA_R_48BIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %1
  %15 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %16 = load i32, i32* @ATA_CONTROL, align 4
  %17 = load i32, i32* @ATA_A_4BIT, align 4
  %18 = load i32, i32* @ATA_A_HOB, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %15, i32 %16, i32 %19)
  %21 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %22 = load i32, i32* @ATA_COUNT, align 4
  %23 = call i32 @ATA_IDX_INB(%struct.ata_channel* %21, i32 %22)
  %24 = shl i32 %23, 8
  %25 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %26 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %30 = load i32, i32* @ATA_SECTOR, align 4
  %31 = call i32 @ATA_IDX_INB(%struct.ata_channel* %29, i32 %30)
  %32 = shl i32 %31, 24
  %33 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %34 = load i32, i32* @ATA_CYL_LSB, align 4
  %35 = call i32 @ATA_IDX_INB(%struct.ata_channel* %33, i32 %34)
  %36 = shl i32 %35, 32
  %37 = or i32 %32, %36
  %38 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %39 = load i32, i32* @ATA_CYL_MSB, align 4
  %40 = call i32 @ATA_IDX_INB(%struct.ata_channel* %38, i32 %39)
  %41 = shl i32 %40, 40
  %42 = or i32 %37, %41
  %43 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %44 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %48 = load i32, i32* @ATA_CONTROL, align 4
  %49 = load i32, i32* @ATA_A_4BIT, align 4
  %50 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %47, i32 %48, i32 %49)
  %51 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %52 = load i32, i32* @ATA_COUNT, align 4
  %53 = call i32 @ATA_IDX_INB(%struct.ata_channel* %51, i32 %52)
  %54 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %55 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %61 = load i32, i32* @ATA_SECTOR, align 4
  %62 = call i32 @ATA_IDX_INB(%struct.ata_channel* %60, i32 %61)
  %63 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %64 = load i32, i32* @ATA_CYL_LSB, align 4
  %65 = call i32 @ATA_IDX_INB(%struct.ata_channel* %63, i32 %64)
  %66 = shl i32 %65, 8
  %67 = or i32 %62, %66
  %68 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %69 = load i32, i32* @ATA_CYL_MSB, align 4
  %70 = call i32 @ATA_IDX_INB(%struct.ata_channel* %68, i32 %69)
  %71 = shl i32 %70, 16
  %72 = or i32 %67, %71
  %73 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %74 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %72
  store i32 %78, i32* %76, align 4
  br label %110

79:                                               ; preds = %1
  %80 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %81 = load i32, i32* @ATA_COUNT, align 4
  %82 = call i32 @ATA_IDX_INB(%struct.ata_channel* %80, i32 %81)
  %83 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %84 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  %87 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %88 = load i32, i32* @ATA_SECTOR, align 4
  %89 = call i32 @ATA_IDX_INB(%struct.ata_channel* %87, i32 %88)
  %90 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %91 = load i32, i32* @ATA_CYL_LSB, align 4
  %92 = call i32 @ATA_IDX_INB(%struct.ata_channel* %90, i32 %91)
  %93 = shl i32 %92, 8
  %94 = or i32 %89, %93
  %95 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %96 = load i32, i32* @ATA_CYL_MSB, align 4
  %97 = call i32 @ATA_IDX_INB(%struct.ata_channel* %95, i32 %96)
  %98 = shl i32 %97, 16
  %99 = or i32 %94, %98
  %100 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %101 = load i32, i32* @ATA_DRIVE, align 4
  %102 = call i32 @ATA_IDX_INB(%struct.ata_channel* %100, i32 %101)
  %103 = and i32 %102, 15
  %104 = shl i32 %103, 24
  %105 = or i32 %99, %104
  %106 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %107 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i32 %105, i32* %109, align 4
  br label %110

110:                                              ; preds = %79, %14
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
