; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_ctrlr_configure_intx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_ctrlr_configure_intx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i32, i32*, i32*, i32, i64, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to allocate shared IRQ\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@nvme_ctrlr_intx_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to setup intx handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_configure_intx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_configure_intx(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %4 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %5 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %4, i32 0, i32 5
  store i64 0, i64* %5, align 8
  %6 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SYS_RES_IRQ, align 4
  %14 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %14, i32 0, i32 4
  %16 = load i32, i32* @RF_SHAREABLE, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = or i32 %16, %17
  %19 = call i32* @bus_alloc_resource_any(i32 %12, i32 %13, i64* %15, i32 %18)
  %20 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %21 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %28 = call i32 @nvme_printf(%struct.nvme_controller* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %54

30:                                               ; preds = %1
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %35 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @INTR_TYPE_MISC, align 4
  %38 = load i32, i32* @INTR_MPSAFE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @nvme_ctrlr_intx_handler, align 4
  %41 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %42 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %43 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %42, i32 0, i32 1
  %44 = call i32 @bus_setup_intr(i32 %33, i32* %36, i32 %39, i32* null, i32 %40, %struct.nvme_controller* %41, i32** %43)
  %45 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %46 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %30
  %50 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %51 = call i32 @nvme_printf(%struct.nvme_controller* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %49, %26
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.nvme_controller*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
