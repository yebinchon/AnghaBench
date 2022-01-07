; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_default_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_default_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ATA_FEATURE = common dso_local global i64 0, align 8
@ATA_ERROR = common dso_local global i64 0, align 8
@ATA_COUNT = common dso_local global i64 0, align 8
@ATA_IREASON = common dso_local global i64 0, align 8
@ATA_COMMAND = common dso_local global i64 0, align 8
@ATA_STATUS = common dso_local global i64 0, align 8
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_ALTSTAT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_default_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ata_channel* @device_get_softc(i32 %4)
  store %struct.ata_channel* %5, %struct.ata_channel** %3, align 8
  %6 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @ATA_FEATURE, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* @ATA_ERROR, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %12, i32* %18, align 4
  %19 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @ATA_FEATURE, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %27 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @ATA_ERROR, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %25, i32* %31, align 4
  %32 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @ATA_COUNT, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %40 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @ATA_IREASON, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %38, i32* %44, align 4
  %45 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %46 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* @ATA_COUNT, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %53 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @ATA_IREASON, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %51, i32* %57, align 4
  %58 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %59 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* @ATA_COMMAND, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %66 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* @ATA_STATUS, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %64, i32* %70, align 4
  %71 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %72 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* @ATA_COMMAND, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* @ATA_STATUS, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %77, i32* %83, align 4
  %84 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %85 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* @ATA_CONTROL, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %92 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i64, i64* @ATA_ALTSTAT, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %90, i32* %96, align 4
  %97 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %98 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @ATA_CONTROL, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %105 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* @ATA_ALTSTAT, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %103, i32* %109, align 4
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
