; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_io_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_io_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.ena_irq* }
%struct.ena_irq = type { i32, i32*, i64, i32 }

@ENA_IO_IRQ_FIRST_IDX = common dso_local global i32 0, align 4
@ENA_INFO = common dso_local global i32 0, align 4
@ENA_IOQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tear down irq: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to tear down irq: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"release resource irq: %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"dev has no parent while releasing res for irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_free_io_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_io_irq(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_irq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %6 = load i32, i32* @ENA_IO_IRQ_FIRST_IDX, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %99, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %102

13:                                               ; preds = %7
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 2
  %16 = load %struct.ena_irq*, %struct.ena_irq** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %16, i64 %18
  store %struct.ena_irq* %19, %struct.ena_irq** %3, align 8
  %20 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %21 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %13
  %25 = load i32, i32* @ENA_INFO, align 4
  %26 = load i32, i32* @ENA_IOQ, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %29 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ena_trace(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %36 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %39 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bus_teardown_intr(i32 %34, i32* %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %24
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %52 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %47, %24
  %56 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %57 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %56, i32 0, i32 2
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %13
  %59 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %60 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %98

63:                                               ; preds = %58
  %64 = load i32, i32* @ENA_INFO, align 4
  %65 = load i32, i32* @ENA_IOQ, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %68 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ena_trace(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SYS_RES_IRQ, align 4
  %75 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %76 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %79 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @bus_release_resource(i32 %73, i32 %74, i32 %77, i32* %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %83 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %63
  %90 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %94 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %89, %63
  br label %98

98:                                               ; preds = %97, %58
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %7

102:                                              ; preds = %7
  ret void
}

declare dso_local i32 @ena_trace(i32, i8*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
