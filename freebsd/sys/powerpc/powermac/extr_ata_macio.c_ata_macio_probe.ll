; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_macio.c_ata_macio_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_ata_macio.c_ata_macio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_macio_softc = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ata\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ide\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ata-4\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Apple MacIO Ultra ATA Controller\00", align 1
@ATA_UDMA4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Apple MacIO ATA Controller\00", align 1
@ATA_WDMA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_macio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_macio_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ata_macio_softc*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @ofw_bus_get_type(i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @ofw_bus_get_name(i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.ata_macio_softc* @device_get_softc(i32 %21)
  store %struct.ata_macio_softc* %22, %struct.ata_macio_softc** %6, align 8
  %23 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %6, align 8
  %24 = call i32 @bzero(%struct.ata_macio_softc* %23, i32 8)
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_set_desc(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %6, align 8
  %32 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %31, i32 0, i32 0
  store i32 4, i32* %32, align 4
  %33 = load i32, i32* @ATA_UDMA4, align 4
  %34 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %6, align 8
  %35 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %44

36:                                               ; preds = %20
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_set_desc(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %6, align 8
  %40 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %39, i32 0, i32 0
  store i32 3, i32* %40, align 4
  %41 = load i32, i32* @ATA_WDMA2, align 4
  %42 = load %struct.ata_macio_softc*, %struct.ata_macio_softc** %6, align 8
  %43 = getelementptr inbounds %struct.ata_macio_softc, %struct.ata_macio_softc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ata_probe(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i8* @ofw_bus_get_type(i32) #1

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.ata_macio_softc* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ata_macio_softc*, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @ata_probe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
