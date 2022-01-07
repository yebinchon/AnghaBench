; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"DISCONNECT requested\0A\00", align 1
@taskqueue_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"CONNECT requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_promise_mio_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_mio_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %11, %struct.ata_pci_controller** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.ata_channel*
  store %struct.ata_channel* %14, %struct.ata_channel** %4, align 8
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %22 [
    i32 130, label %20
    i32 132, label %20
    i32 129, label %20
    i32 131, label %21
    i32 128, label %21
  ]

20:                                               ; preds = %1, %1, %1
  store i32 108, i32* %5, align 4
  br label %23

21:                                               ; preds = %1, %1
  br label %22

22:                                               ; preds = %1, %21
  store i32 96, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ATA_INL(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %34 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %39 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 17, %40
  %42 = and i32 %37, %41
  %43 = call i32 @ATA_OUTL(i32 %35, i32 %36, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %46 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %23
  %52 = load i64, i64* @bootverbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @taskqueue_thread, align 4
  %59 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %60 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %59, i32 0, i32 1
  %61 = call i32 @taskqueue_enqueue(i32 %58, i32* %60)
  br label %62

62:                                               ; preds = %57, %23
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %65 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 16, %66
  %68 = and i32 %63, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %62
  %71 = load i64, i64* @bootverbose, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @taskqueue_thread, align 4
  %78 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %79 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %78, i32 0, i32 1
  %80 = call i32 @taskqueue_enqueue(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %62
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %84 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = shl i32 1, %86
  %88 = and i32 %82, %87
  ret i32 %88
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
