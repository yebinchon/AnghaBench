; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_pci.c_ocs_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocs_softc = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"no driver context?!?\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"can't detach with target mode enabled\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@M_OCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ocs_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocs_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @device_get_softc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.ocs_softc*
  store %struct.ocs_softc* %7, %struct.ocs_softc** %4, align 8
  %8 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %9 = icmp ne %struct.ocs_softc* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %18, %13
  %28 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %29 = call i32 @ocs_device_detach(%struct.ocs_softc* %28)
  %30 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %36 = call i32 @ocs_scsi_tgt_del_device(%struct.ocs_softc* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @M_OCS, align 4
  %42 = call i32 @free(i32 %40, i32 %41)
  %43 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %44 = call i32 @ocs_device_lock_free(%struct.ocs_softc* %43)
  %45 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %46 = call i32 @ocs_debug_detach(%struct.ocs_softc* %45)
  %47 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %48 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ocs_ramlog_free(%struct.ocs_softc* %47, i32 %50)
  %52 = load %struct.ocs_softc*, %struct.ocs_softc** %4, align 8
  %53 = call i32 @ocs_release_bus(%struct.ocs_softc* %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %37, %23, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ocs_device_detach(%struct.ocs_softc*) #1

declare dso_local i32 @ocs_scsi_tgt_del_device(%struct.ocs_softc*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @ocs_device_lock_free(%struct.ocs_softc*) #1

declare dso_local i32 @ocs_debug_detach(%struct.ocs_softc*) #1

declare dso_local i32 @ocs_ramlog_free(%struct.ocs_softc*, i32) #1

declare dso_local i32 @ocs_release_bus(%struct.ocs_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
