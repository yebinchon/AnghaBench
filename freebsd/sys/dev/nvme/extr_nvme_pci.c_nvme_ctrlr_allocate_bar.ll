; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_ctrlr_allocate_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_ctrlr_allocate_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_controller = type { i8*, i32, i8*, i64, %struct.nvme_registers*, i32*, i32, i8* }
%struct.nvme_registers = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to allocate pci resource\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_controller*)* @nvme_ctrlr_allocate_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_ctrlr_allocate_bar(%struct.nvme_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_controller*, align 8
  store %struct.nvme_controller* %0, %struct.nvme_controller** %3, align 8
  %4 = call i8* @PCIR_BAR(i32 0)
  %5 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %5, i32 0, i32 7
  store i8* %4, i8** %6, align 8
  %7 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %12 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %11, i32 0, i32 7
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i8** %12, i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %17 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %24 = call i32 @nvme_printf(%struct.nvme_controller* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %1
  %27 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @rman_get_bustag(i32* %29)
  %31 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %34 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @rman_get_bushandle(i32* %35)
  %37 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %38 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %40 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.nvme_registers*
  %43 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %44 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %43, i32 0, i32 4
  store %struct.nvme_registers* %42, %struct.nvme_registers** %44, align 8
  %45 = call i8* @PCIR_BAR(i32 4)
  %46 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %47 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %52, i32 0, i32 0
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = call i8* @bus_alloc_resource_any(i32 %50, i32 %51, i8** %53, i32 %54)
  %56 = load %struct.nvme_controller*, %struct.nvme_controller** %3, align 8
  %57 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %26, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @nvme_printf(%struct.nvme_controller*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i64 @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
