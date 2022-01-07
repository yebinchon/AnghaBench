; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ata_channel*)*, %struct.ata_channel* }
%struct.ata_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ata_promise_mio_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_promise_mio_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %8, %struct.ata_pci_controller** %3, align 8
  %9 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %10 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @ATA_INL(i32 %11, i32 64)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %14 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ATA_OUTL(i32 %15, i32 64, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %21 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %50, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %30 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.ata_channel*, %struct.ata_channel** %35, align 8
  store %struct.ata_channel* %36, %struct.ata_channel** %4, align 8
  %37 = icmp ne %struct.ata_channel* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %40 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.ata_channel*)*, i32 (%struct.ata_channel*)** %45, align 8
  %47 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %48 = call i32 %46(%struct.ata_channel* %47)
  br label %49

49:                                               ; preds = %38, %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %55 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %54, i32 0, i32 1
  store i8* inttoptr (i64 4294967295 to i8*), i8** %55, align 8
  ret void
}

declare dso_local i64 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
