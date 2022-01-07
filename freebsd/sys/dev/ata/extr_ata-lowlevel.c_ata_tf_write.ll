; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_tf_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-lowlevel.c_ata_tf_write.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_request*)* @ata_tf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_tf_write(%struct.ata_request* %0) #0 {
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
  br i1 %13, label %14, label %111

14:                                               ; preds = %1
  %15 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %16 = load i32, i32* @ATA_FEATURE, align 4
  %17 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %18 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 8
  %23 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %15, i32 %16, i32 %22)
  %24 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %25 = load i32, i32* @ATA_FEATURE, align 4
  %26 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %27 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %24, i32 %25, i32 %30)
  %32 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %33 = load i32, i32* @ATA_COUNT, align 4
  %34 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %35 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 8
  %40 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %32, i32 %33, i32 %39)
  %41 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %42 = load i32, i32* @ATA_COUNT, align 4
  %43 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %44 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %41, i32 %42, i32 %47)
  %49 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %50 = load i32, i32* @ATA_SECTOR, align 4
  %51 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %52 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 24
  %57 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %49, i32 %50, i32 %56)
  %58 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %59 = load i32, i32* @ATA_SECTOR, align 4
  %60 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %61 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %58, i32 %59, i32 %64)
  %66 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %67 = load i32, i32* @ATA_CYL_LSB, align 4
  %68 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %69 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 32
  %74 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %66, i32 %67, i32 %73)
  %75 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %76 = load i32, i32* @ATA_CYL_LSB, align 4
  %77 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %78 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 8
  %83 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %75, i32 %76, i32 %82)
  %84 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %85 = load i32, i32* @ATA_CYL_MSB, align 4
  %86 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %87 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 40
  %92 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %84, i32 %85, i32 %91)
  %93 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %94 = load i32, i32* @ATA_CYL_MSB, align 4
  %95 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %96 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 16
  %101 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %93, i32 %94, i32 %100)
  %102 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %103 = load i32, i32* @ATA_DRIVE, align 4
  %104 = load i32, i32* @ATA_D_LBA, align 4
  %105 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %106 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ATA_DEV(i32 %107)
  %109 = or i32 %104, %108
  %110 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %102, i32 %103, i32 %109)
  br label %173

111:                                              ; preds = %1
  %112 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %113 = load i32, i32* @ATA_FEATURE, align 4
  %114 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %115 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %112, i32 %113, i32 %118)
  %120 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %121 = load i32, i32* @ATA_COUNT, align 4
  %122 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %123 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %120, i32 %121, i32 %126)
  %128 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %129 = load i32, i32* @ATA_SECTOR, align 4
  %130 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %131 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %128, i32 %129, i32 %134)
  %136 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %137 = load i32, i32* @ATA_CYL_LSB, align 4
  %138 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %139 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 8
  %144 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %136, i32 %137, i32 %143)
  %145 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %146 = load i32, i32* @ATA_CYL_MSB, align 4
  %147 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %148 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 16
  %153 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %145, i32 %146, i32 %152)
  %154 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %155 = load i32, i32* @ATA_DRIVE, align 4
  %156 = load i32, i32* @ATA_D_IBM, align 4
  %157 = load i32, i32* @ATA_D_LBA, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %160 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ATA_DEV(i32 %161)
  %163 = or i32 %158, %162
  %164 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %165 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %168, 24
  %170 = and i32 %169, 15
  %171 = or i32 %163, %170
  %172 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %154, i32 %155, i32 %171)
  br label %173

173:                                              ; preds = %111, %14
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_DEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
