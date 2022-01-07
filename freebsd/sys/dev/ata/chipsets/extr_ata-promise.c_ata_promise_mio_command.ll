; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ata_pci_controller = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ata_channel = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }

@PR_SATA2 = common dso_local global i64 0, align 8
@PR_CMBO2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_promise_mio_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_mio_command(%struct.ata_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_request*, align 8
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i64*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %3, align 8
  %7 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %8 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %12, %struct.ata_pci_controller** %4, align 8
  %13 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %14 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.ata_channel*
  store %struct.ata_channel* %17, %struct.ata_channel** %5, align 8
  %18 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %6, align 8
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = shl i32 %29, 2
  %31 = call i32 @ATA_OUTL(i32 %25, i32 %30, i32 1)
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %33 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PR_SATA2, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %1
  %40 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %41 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PR_CMBO2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %49 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %66

52:                                               ; preds = %47, %1
  %53 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %54 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %57 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 %58, 8
  %60 = add nsw i32 1256, %59
  %61 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %62 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, 15
  %65 = call i32 @ATA_OUTB(i32 %55, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %52, %47, %39
  %67 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %68 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %72 [
    i32 131, label %75
    i32 130, label %75
    i32 129, label %85
    i32 128, label %85
  ]

72:                                               ; preds = %66
  %73 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %74 = call i32 @ata_generic_command(%struct.ata_request* %73)
  store i32 %74, i32* %2, align 4
  br label %123

75:                                               ; preds = %66, %66
  %76 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %77 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  %80 = shl i32 %79, 16
  %81 = or i32 4, %80
  %82 = call i64 @htole32(i32 %81)
  %83 = load i64*, i64** %6, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %82, i64* %84, align 8
  br label %95

85:                                               ; preds = %66, %66
  %86 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %87 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  %90 = shl i32 %89, 16
  %91 = or i32 0, %90
  %92 = call i64 @htole32(i32 %91)
  %93 = load i64*, i64** %6, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %85, %75
  %96 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %97 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @htole32(i32 %100)
  %102 = load i64*, i64** %6, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  store i64 %101, i64* %103, align 8
  %104 = load i64*, i64** %6, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  store i64 0, i64* %105, align 8
  %106 = load i64*, i64** %6, align 8
  %107 = bitcast i64* %106 to i32*
  %108 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %109 = call i32 @ata_promise_apkt(i32* %107, %struct.ata_request* %108)
  %110 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %111 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %114 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 7
  %117 = add nsw i32 576, %116
  %118 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %119 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ATA_OUTL(i32 %112, i32 %117, i32 %121)
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %95, %72
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

declare dso_local i32 @ata_generic_command(%struct.ata_request*) #1

declare dso_local i64 @htole32(i32) #1

declare dso_local i32 @ata_promise_apkt(i32*, %struct.ata_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
