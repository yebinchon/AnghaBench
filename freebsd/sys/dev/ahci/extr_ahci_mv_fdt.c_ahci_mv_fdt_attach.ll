; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_mv_fdt.c_ahci_mv_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci_mv_fdt.c_ahci_mv_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32, i32*, i64, i32, i32 }

@AHCI_Q_2CH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"marvell,armada-380-ahci\00", align 1
@AHCI_Q_MRVL_SR_DEL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to alloc memory for controller\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to reset controller\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to initialize AHCI, with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_mv_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_mv_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahci_controller*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ahci_controller* @device_get_softc(i32 %6)
  store %struct.ahci_controller* %7, %struct.ahci_controller** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %10 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %12 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @AHCI_Q_2CH, align 4
  %14 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %15 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %17 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @ofw_bus_is_compatible(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @AHCI_Q_MRVL_SR_DEL, align 4
  %23 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %24 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %31 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %30, i32 0, i32 2
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = load i32, i32* @RF_SHAREABLE, align 4
  %34 = or i32 %32, %33
  %35 = call i32* @bus_alloc_resource_any(i32 %28, i32 %29, i64* %31, i32 %34)
  %36 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %37 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %39 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %77

46:                                               ; preds = %27
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ahci_ctlr_reset(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SYS_RES_MEMORY, align 4
  %56 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %57 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %60 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bus_release_resource(i32 %54, i32 %55, i64 %58, i32* %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %77

64:                                               ; preds = %46
  %65 = load %struct.ahci_controller*, %struct.ahci_controller** %4, align 8
  %66 = call i32 @ahci_mv_regret_config(%struct.ahci_controller* %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @ahci_attach(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %71, %51, %42
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ahci_controller* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ahci_ctlr_reset(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @ahci_mv_regret_config(%struct.ahci_controller*) #1

declare dso_local i32 @ahci_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
