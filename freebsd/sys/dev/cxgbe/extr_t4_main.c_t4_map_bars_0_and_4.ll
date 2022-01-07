; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_map_bars_0_and_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_map_bars_0_and_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32*, i8*, i32, i32*, i32, i32, i32, i8* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot map registers.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DOORBELL_KDB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot map MSI-X BAR.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_map_bars_0_and_4(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %4 = call i8* @PCIR_BAR(i32 0)
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 8
  store i8* %4, i8** %6, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SYS_RES_MEMORY, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 8
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %9, i32 %10, i8** %12, i32 %13)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 4
  store i32* %15, i32** %17, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %1
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @rman_get_bustag(i32* %31)
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @rman_get_bushandle(i32* %37)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @rman_get_size(i32* %43)
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 3
  %49 = load i32, i32* @DOORBELL_KDB, align 4
  %50 = call i32 @setbit(i32* %48, i32 %49)
  %51 = call i8* @PCIR_BAR(i32 4)
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SYS_RES_MEMORY, align 4
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 2
  %60 = load i32, i32* @RF_ACTIVE, align 4
  %61 = call i8* @bus_alloc_resource_any(i32 %56, i32 %57, i8** %59, i32 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %28
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %69, %22
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @setbit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
