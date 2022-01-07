; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_alloc_pci_res_itl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_alloc_pci_res_itl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { i32, i32, i32*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hpt_iopmu_itl* }
%struct.hpt_iopmu_itl = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to get iop base adrress.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"alloc mem res failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpt_iop_hba*)* @hptiop_alloc_pci_res_itl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_alloc_pci_res_itl(%struct.hpt_iop_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpt_iop_hba*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %3, align 8
  %4 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %5 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %4, i32 0, i32 0
  store i32 16, i32* %5, align 8
  %6 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %7 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SYS_RES_MEMORY, align 4
  %10 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %11 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %10, i32 0, i32 0
  %12 = load i32, i32* @RF_ACTIVE, align 4
  %13 = call i32* @bus_alloc_resource_any(i32 %8, i32 %9, i32* %11, i32 %12)
  %14 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %15 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %17 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %22 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

25:                                               ; preds = %1
  %26 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %27 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @rman_get_bustag(i32* %28)
  %30 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %31 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %33 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rman_get_bushandle(i32* %34)
  %36 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %37 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %39 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @rman_get_virtual(i32* %40)
  %42 = inttoptr i64 %41 to %struct.hpt_iopmu_itl*
  %43 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %44 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.hpt_iopmu_itl* %42, %struct.hpt_iopmu_itl** %46, align 8
  %47 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %48 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.hpt_iopmu_itl*, %struct.hpt_iopmu_itl** %50, align 8
  %52 = icmp ne %struct.hpt_iopmu_itl* %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %25
  %54 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %55 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SYS_RES_MEMORY, align 4
  %58 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %59 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %62 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @bus_release_resource(i32 %56, i32 %57, i32 %60, i32* %63)
  %65 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %3, align 8
  %66 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %70

69:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %53, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @rman_get_virtual(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
