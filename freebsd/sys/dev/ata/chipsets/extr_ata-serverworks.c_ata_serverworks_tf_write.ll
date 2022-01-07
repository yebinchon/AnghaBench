; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_tf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_tf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ata_channel = type { i32 }

@ATA_R_48BIT = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_request*)* @ata_serverworks_tf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_serverworks_tf_write(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_channel*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %4 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %5 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ata_channel* @device_get_softc(i32 %6)
  store %struct.ata_channel* %7, %struct.ata_channel** %3, align 8
  %8 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %9 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATA_R_48BIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %93

14:                                               ; preds = %1
  %15 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %16 = load i32, i32* @ATA_FEATURE, align 4
  %17 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %18 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %15, i32 %16, i32 %21)
  %23 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %24 = load i32, i32* @ATA_COUNT, align 4
  %25 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %26 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %23, i32 %24, i32 %29)
  %31 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %32 = load i32, i32* @ATA_SECTOR, align 4
  %33 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %34 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 65280
  %40 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %41 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = or i32 %39, %45
  %47 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %31, i32 %32, i32 %46)
  %48 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %49 = load i32, i32* @ATA_CYL_LSB, align 4
  %50 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %51 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 65280
  %57 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %58 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = or i32 %56, %63
  %65 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %48, i32 %49, i32 %64)
  %66 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %67 = load i32, i32* @ATA_CYL_MSB, align 4
  %68 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %69 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 32
  %74 = and i32 %73, 65280
  %75 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %76 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = or i32 %74, %81
  %83 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %66, i32 %67, i32 %82)
  %84 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %85 = load i32, i32* @ATA_DRIVE, align 4
  %86 = load i32, i32* @ATA_D_LBA, align 4
  %87 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %88 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ATA_DEV(i32 %89)
  %91 = or i32 %86, %90
  %92 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %84, i32 %85, i32 %91)
  br label %155

93:                                               ; preds = %1
  %94 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %95 = load i32, i32* @ATA_FEATURE, align 4
  %96 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %97 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %94, i32 %95, i32 %100)
  %102 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %103 = load i32, i32* @ATA_COUNT, align 4
  %104 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %105 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %102, i32 %103, i32 %108)
  %110 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %111 = load i32, i32* @ATA_SECTOR, align 4
  %112 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %113 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %110, i32 %111, i32 %116)
  %118 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %119 = load i32, i32* @ATA_CYL_LSB, align 4
  %120 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %121 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 8
  %126 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %118, i32 %119, i32 %125)
  %127 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %128 = load i32, i32* @ATA_CYL_MSB, align 4
  %129 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %130 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 16
  %135 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %127, i32 %128, i32 %134)
  %136 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %137 = load i32, i32* @ATA_DRIVE, align 4
  %138 = load i32, i32* @ATA_D_IBM, align 4
  %139 = load i32, i32* @ATA_D_LBA, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %142 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ATA_DEV(i32 %143)
  %145 = or i32 %140, %144
  %146 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %147 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 24
  %152 = and i32 %151, 15
  %153 = or i32 %145, %152
  %154 = call i32 @ATA_IDX_OUTW(%struct.ata_channel* %136, i32 %137, i32 %153)
  br label %155

155:                                              ; preds = %93, %14
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_OUTW(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
