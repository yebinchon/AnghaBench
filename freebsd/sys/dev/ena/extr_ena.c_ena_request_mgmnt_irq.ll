; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_request_mgmnt_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_request_mgmnt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_irq* }
%struct.ena_irq = type { i32, i32*, i32, i32, i32 }

@RF_ACTIVE = common dso_local global i64 0, align 8
@RF_SHAREABLE = common dso_local global i64 0, align 8
@ENA_MGMNT_IRQ_IDX = common dso_local global i64 0, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not allocate irq vector: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ena_intr_msix_mgmnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to register interrupt handler for irq %ju: %d\0A\00", align 1
@ENA_INFO = common dso_local global i32 0, align 4
@ENA_ADMQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"releasing resource for irq %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"dev has no parent while releasing res for irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_request_mgmnt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_request_mgmnt_irq(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca %struct.ena_irq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %8 = load i64, i64* @RF_ACTIVE, align 8
  %9 = load i64, i64* @RF_SHAREABLE, align 8
  %10 = or i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 1
  %13 = load %struct.ena_irq*, %struct.ena_irq** %12, align 8
  %14 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %15 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %13, i64 %14
  store %struct.ena_irq* %15, %struct.ena_irq** %4, align 8
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SYS_RES_IRQ, align 4
  %20 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %21 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %20, i32 0, i32 2
  %22 = load i64, i64* %5, align 8
  %23 = call i32* @bus_alloc_resource_any(i32 %18, i32 %19, i32* %21, i64 %22)
  %24 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %25 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %27 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %38 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %114

42:                                               ; preds = %1
  %43 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %47 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @INTR_TYPE_NET, align 4
  %50 = load i32, i32* @INTR_MPSAFE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ena_intr_msix_mgmnt, align 4
  %53 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %54 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %57 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %56, i32 0, i32 3
  %58 = call i32 @bus_setup_intr(i32 %45, i32* %48, i32 %51, i32* null, i32 %52, i32 %55, i32* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %42
  %65 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %69 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rman_get_start(i32* %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72)
  br label %78

74:                                               ; preds = %42
  %75 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %76 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %114

78:                                               ; preds = %64
  %79 = load i32, i32* @ENA_INFO, align 4
  %80 = load i32, i32* @ENA_ADMQ, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %83 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ena_trace(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %87 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SYS_RES_IRQ, align 4
  %90 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %91 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %94 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @bus_release_resource(i32 %88, i32 %89, i32 %92, i32* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %78
  %103 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %107 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %102, %78
  %111 = load %struct.ena_irq*, %struct.ena_irq** %4, align 8
  %112 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %74, %33
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @ena_trace(i32, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
