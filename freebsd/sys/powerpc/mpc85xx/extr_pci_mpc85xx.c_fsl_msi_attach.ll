; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_msi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_pci_mpc85xx.c_fsl_msi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_msi_softc = type { i64, %struct.TYPE_2__, %struct.fsl_msi_irq* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.fsl_msi_irq = type { i32, i64, i32, i32 }

@msi_vmem = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"MPIC MSI\00", align 1
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@FSL_MSI_TARGET = common dso_local global i64 0, align 8
@FSL_NUM_IRQS = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@fsl_msi_intr_filter = common dso_local global i32 0, align 4
@FSL_NUM_MSIS = common dso_local global i32 0, align 4
@fsl_msis = common dso_local global i32 0, align 4
@slist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fsl_msi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_msi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_msi_softc*, align 8
  %4 = alloca %struct.fsl_msi_irq*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.fsl_msi_softc* @device_get_softc(i32 %6)
  store %struct.fsl_msi_softc* %7, %struct.fsl_msi_softc** %3, align 8
  %8 = load i32*, i32** @msi_vmem, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @M_BESTFIT, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = or i32 %11, %12
  %14 = call i32* @vmem_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 1, i32 1, i32 %13)
  store i32* %14, i32** @msi_vmem, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = call i8* @bus_get_resource_start(i32 %16, i32 %17, i32 0)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = call i8* @bus_get_resource_start(i32 %22, i32 %23, i32 1)
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %15
  %35 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FSL_MSI_TARGET, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %34, %15
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @FSL_NUM_IRQS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %44
  %49 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %49, i32 0, i32 2
  %51 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %51, i64 %53
  store %struct.fsl_msi_irq* %54, %struct.fsl_msi_irq** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %4, align 8
  %57 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %59 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 16, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %4, align 8
  %66 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @SYS_RES_IRQ, align 4
  %69 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %4, align 8
  %70 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %69, i32 0, i32 0
  %71 = load i32, i32* @RF_ACTIVE, align 4
  %72 = call i32 @bus_alloc_resource_any(i32 %67, i32 %68, i32* %70, i32 %71)
  %73 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %4, align 8
  %74 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %2, align 4
  %76 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %4, align 8
  %77 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @INTR_TYPE_MISC, align 4
  %80 = load i32, i32* @INTR_MPSAFE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @fsl_msi_intr_filter, align 4
  %83 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %4, align 8
  %84 = load %struct.fsl_msi_irq*, %struct.fsl_msi_irq** %4, align 8
  %85 = getelementptr inbounds %struct.fsl_msi_irq, %struct.fsl_msi_irq* %84, i32 0, i32 2
  %86 = call i32 @bus_setup_intr(i32 %75, i32 %78, i32 %81, i32 %82, i32* null, %struct.fsl_msi_irq* %83, i32* %85)
  br label %87

87:                                               ; preds = %48
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %44

90:                                               ; preds = %44
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @ofw_bus_get_node(i32 %92)
  %94 = load i32, i32* @FSL_NUM_MSIS, align 4
  %95 = call i32 @powerpc_register_pic(i32 %91, i32 %93, i32 %94, i32 0, i32 0)
  %96 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %97 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 8
  %99 = load i32*, i32** @msi_vmem, align 8
  %100 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %101 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @FSL_NUM_MSIS, align 4
  %105 = load i32, i32* @M_WAITOK, align 4
  %106 = call i32 @vmem_add(i32* %99, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.fsl_msi_softc*, %struct.fsl_msi_softc** %3, align 8
  %108 = getelementptr inbounds %struct.fsl_msi_softc, %struct.fsl_msi_softc* %107, i32 0, i32 1
  %109 = load i32, i32* @slist, align 4
  %110 = call i32 @SLIST_INSERT_HEAD(i32* @fsl_msis, %struct.TYPE_2__* %108, i32 %109)
  ret i32 0
}

declare dso_local %struct.fsl_msi_softc* @device_get_softc(i32) #1

declare dso_local i32* @vmem_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @bus_get_resource_start(i32, i32, i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.fsl_msi_irq*, i32*) #1

declare dso_local i32 @powerpc_register_pic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @vmem_add(i32*, i32, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
