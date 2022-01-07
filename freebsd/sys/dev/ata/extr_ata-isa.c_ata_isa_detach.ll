; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-isa.c_ata_isa_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-isa.c_ata_isa_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_CTLADDR_RID = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IOADDR_RID = common dso_local global i32 0, align 4
@ATA_IDX_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_isa_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_isa_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ata_channel* @device_get_softc(i32 %6)
  store %struct.ata_channel* %7, %struct.ata_channel** %4, align 8
  %8 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %9 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ata_detach(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SYS_RES_IOPORT, align 4
  %20 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %21 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %22 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* @ATA_CONTROL, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bus_release_resource(i32 %18, i32 %19, i32 %20, i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_IOPORT, align 4
  %31 = load i32, i32* @ATA_IOADDR_RID, align 4
  %32 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @ATA_IDX_ADDR, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %31, i32 %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %13, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ata_detach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
