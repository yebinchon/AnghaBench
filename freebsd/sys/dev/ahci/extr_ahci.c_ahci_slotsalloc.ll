; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_slotsalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_slotsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32, i32, %struct.TYPE_3__, i32, %struct.ahci_slot* }
%struct.TYPE_3__ = type { i32 }
%struct.ahci_slot = type { i32, %struct.TYPE_4__, i32, i32*, i32, %struct.ahci_channel* }
%struct.TYPE_4__ = type { i32 }

@AHCI_SLOT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FAILURE - create data_map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ahci_slotsalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_slotsalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_slot*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.ahci_channel* @device_get_softc(i32 %6)
  store %struct.ahci_channel* %7, %struct.ahci_channel** %3, align 8
  %8 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %8, i32 0, i32 4
  %10 = load %struct.ahci_slot*, %struct.ahci_slot** %9, align 8
  %11 = call i32 @bzero(%struct.ahci_slot* %10, i32 8)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %56, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %15 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %12
  %19 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %19, i32 0, i32 4
  %21 = load %struct.ahci_slot*, %struct.ahci_slot** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %21, i64 %23
  store %struct.ahci_slot* %24, %struct.ahci_slot** %5, align 8
  %25 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %26 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %27 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %26, i32 0, i32 5
  store %struct.ahci_channel* %25, %struct.ahci_channel** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %30 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @AHCI_SLOT_EMPTY, align 4
  %32 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %33 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %35 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %37 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %36, i32 0, i32 2
  %38 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %39 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %38, i32 0, i32 3
  %40 = call i32 @callout_init_mtx(i32* %37, i32* %39, i32 0)
  %41 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %42 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ahci_slot*, %struct.ahci_slot** %5, align 8
  %46 = getelementptr inbounds %struct.ahci_slot, %struct.ahci_slot* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i64 @bus_dmamap_create(i32 %44, i32 0, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %18
  %51 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %52 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %18
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %12

59:                                               ; preds = %12
  ret void
}

declare dso_local %struct.ahci_channel* @device_get_softc(i32) #1

declare dso_local i32 @bzero(%struct.ahci_slot*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
