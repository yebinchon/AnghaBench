; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_setup_memwin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_setup_memwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memwin_init = type { i32, i32 }
%struct.adapter = type { %struct.memwin* }
%struct.memwin = type { i32, i32, i32, i64 }

@PCIM_BAR_MEM_BASE = common dso_local global i64 0, align 8
@t4_memwin = common dso_local global %struct.memwin_init* null, align 8
@t5_memwin = common dso_local global %struct.memwin_init* null, align 8
@NUM_MEMWIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"memory window access\00", align 1
@A_PCIE_MEM_ACCESS_BASE_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @setup_memwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_memwin(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.memwin_init*, align 8
  %4 = alloca %struct.memwin*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = call i64 @is_t4(%struct.adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i32 @PCIR_BAR(i32 0)
  %13 = call i32 @t4_hw_pci_read_cfg4(%struct.adapter* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @PCIM_BAR_MEM_BASE, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.memwin_init*, %struct.memwin_init** @t4_memwin, align 8
  %19 = getelementptr inbounds %struct.memwin_init, %struct.memwin_init* %18, i64 0
  store %struct.memwin_init* %19, %struct.memwin_init** %3, align 8
  br label %23

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %21 = load %struct.memwin_init*, %struct.memwin_init** @t5_memwin, align 8
  %22 = getelementptr inbounds %struct.memwin_init, %struct.memwin_init* %21, i64 0
  store %struct.memwin_init* %22, %struct.memwin_init** %3, align 8
  br label %23

23:                                               ; preds = %20, %10
  store i32 0, i32* %5, align 4
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = load %struct.memwin*, %struct.memwin** %25, align 8
  %27 = getelementptr inbounds %struct.memwin, %struct.memwin* %26, i64 0
  store %struct.memwin* %27, %struct.memwin** %4, align 8
  br label %28

28:                                               ; preds = %76, %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @NUM_MEMWIN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = load %struct.memwin*, %struct.memwin** %4, align 8
  %34 = getelementptr inbounds %struct.memwin, %struct.memwin* %33, i32 0, i32 1
  %35 = call i32 @rw_init(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.memwin_init*, %struct.memwin_init** %3, align 8
  %37 = getelementptr inbounds %struct.memwin_init, %struct.memwin_init* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.memwin*, %struct.memwin** %4, align 8
  %40 = getelementptr inbounds %struct.memwin, %struct.memwin* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.memwin_init*, %struct.memwin_init** %3, align 8
  %42 = getelementptr inbounds %struct.memwin_init, %struct.memwin_init* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.memwin*, %struct.memwin** %4, align 8
  %45 = getelementptr inbounds %struct.memwin, %struct.memwin* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.memwin*, %struct.memwin** %4, align 8
  %47 = getelementptr inbounds %struct.memwin, %struct.memwin* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = load i32, i32* @A_PCIE_MEM_ACCESS_BASE_WIN, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @PCIE_MEM_ACCESS_REG(i32 %49, i32 %50)
  %52 = load %struct.memwin*, %struct.memwin** %4, align 8
  %53 = getelementptr inbounds %struct.memwin, %struct.memwin* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @V_BIR(i32 0)
  %58 = or i32 %56, %57
  %59 = load %struct.memwin*, %struct.memwin** %4, align 8
  %60 = getelementptr inbounds %struct.memwin, %struct.memwin* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ilog2(i32 %61)
  %63 = sub nsw i64 %62, 10
  %64 = call i32 @V_WINDOW(i64 %63)
  %65 = or i32 %58, %64
  %66 = call i32 @t4_write_reg(%struct.adapter* %48, i32 %51, i32 %65)
  %67 = load %struct.memwin*, %struct.memwin** %4, align 8
  %68 = getelementptr inbounds %struct.memwin, %struct.memwin* %67, i32 0, i32 1
  %69 = call i32 @rw_wlock(i32* %68)
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @position_memwin(%struct.adapter* %70, i32 %71, i32 0)
  %73 = load %struct.memwin*, %struct.memwin** %4, align 8
  %74 = getelementptr inbounds %struct.memwin, %struct.memwin* %73, i32 0, i32 1
  %75 = call i32 @rw_wunlock(i32* %74)
  br label %76

76:                                               ; preds = %32
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  %79 = load %struct.memwin_init*, %struct.memwin_init** %3, align 8
  %80 = getelementptr inbounds %struct.memwin_init, %struct.memwin_init* %79, i32 1
  store %struct.memwin_init* %80, %struct.memwin_init** %3, align 8
  %81 = load %struct.memwin*, %struct.memwin** %4, align 8
  %82 = getelementptr inbounds %struct.memwin, %struct.memwin* %81, i32 1
  store %struct.memwin* %82, %struct.memwin** %4, align 8
  br label %28

83:                                               ; preds = %28
  %84 = load %struct.adapter*, %struct.adapter** %2, align 8
  %85 = load i32, i32* @A_PCIE_MEM_ACCESS_BASE_WIN, align 4
  %86 = call i32 @PCIE_MEM_ACCESS_REG(i32 %85, i32 2)
  %87 = call i32 @t4_read_reg(%struct.adapter* %84, i32 %86)
  ret void
}

declare dso_local i64 @is_t4(%struct.adapter*) #1

declare dso_local i32 @t4_hw_pci_read_cfg4(%struct.adapter*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @PCIE_MEM_ACCESS_REG(i32, i32) #1

declare dso_local i32 @V_BIR(i32) #1

declare dso_local i32 @V_WINDOW(i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @position_memwin(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
