; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-card.c_ata_pccard_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-card.c_ata_pccard_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_DATA = common dso_local global i64 0, align 8
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_CTLADDR_RID = common dso_local global i32 0, align 4
@ATA_IOADDR_RID = common dso_local global i32 0, align 4
@ATA_MAX_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_pccard_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_pccard_detach(i32 %0) #0 {
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
  br label %75

13:                                               ; preds = %1
  %14 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ata_detach(i32 %16)
  %18 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @ATA_CONTROL, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* @ATA_DATA, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %24, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %13
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_IOPORT, align 4
  %36 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %37 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %38 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* @ATA_CONTROL, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @bus_release_resource(i32 %34, i32 %35, i32 %36, i32* %43)
  br label %45

45:                                               ; preds = %33, %13
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SYS_RES_IOPORT, align 4
  %48 = load i32, i32* @ATA_IOADDR_RID, align 4
  %49 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %50 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* @ATA_DATA, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %48, i32* %55)
  %57 = load i64, i64* @ATA_DATA, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %71, %45
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ATA_MAX_RES, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %65 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %59

74:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ata_detach(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
