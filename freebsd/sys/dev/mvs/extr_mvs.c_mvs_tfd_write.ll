; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_tfd_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_tfd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_cmd }
%struct.ata_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mvs_channel = type { i32 }

@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @mvs_tfd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_tfd_write(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mvs_channel*, align 8
  %6 = alloca %struct.ata_cmd*, align 8
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mvs_channel* @device_get_softc(i32 %7)
  store %struct.mvs_channel* %8, %struct.mvs_channel** %5, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ata_cmd* %11, %struct.ata_cmd** %6, align 8
  %12 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %13 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATA_DRIVE, align 4
  %16 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ATA_OUTB(i32 %14, i32 %15, i32 %18)
  %20 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %21 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ATA_CONTROL, align 4
  %24 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ATA_OUTB(i32 %22, i32 %23, i32 %26)
  %28 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATA_FEATURE, align 4
  %32 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ATA_OUTB(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %37 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATA_FEATURE, align 4
  %40 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %41 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ATA_OUTB(i32 %38, i32 %39, i32 %42)
  %44 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %45 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATA_COUNT, align 4
  %48 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ATA_OUTB(i32 %46, i32 %47, i32 %50)
  %52 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %53 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATA_COUNT, align 4
  %56 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ATA_OUTB(i32 %54, i32 %55, i32 %58)
  %60 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %61 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ATA_SECTOR, align 4
  %64 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ATA_OUTB(i32 %62, i32 %63, i32 %66)
  %68 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %69 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ATA_SECTOR, align 4
  %72 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ATA_OUTB(i32 %70, i32 %71, i32 %74)
  %76 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %77 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ATA_CYL_LSB, align 4
  %80 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ATA_OUTB(i32 %78, i32 %79, i32 %82)
  %84 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %85 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATA_CYL_LSB, align 4
  %88 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %89 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ATA_OUTB(i32 %86, i32 %87, i32 %90)
  %92 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %93 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATA_CYL_MSB, align 4
  %96 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %97 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ATA_OUTB(i32 %94, i32 %95, i32 %98)
  %100 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %101 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ATA_CYL_MSB, align 4
  %104 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %105 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ATA_OUTB(i32 %102, i32 %103, i32 %106)
  %108 = load %struct.mvs_channel*, %struct.mvs_channel** %5, align 8
  %109 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ATA_COMMAND, align 4
  %112 = load %struct.ata_cmd*, %struct.ata_cmd** %6, align 8
  %113 = getelementptr inbounds %struct.ata_cmd, %struct.ata_cmd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ATA_OUTB(i32 %110, i32 %111, i32 %114)
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
