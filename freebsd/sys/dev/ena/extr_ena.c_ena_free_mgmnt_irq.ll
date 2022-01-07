; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_mgmnt_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_free_mgmnt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_irq* }
%struct.ena_irq = type { i32, i32*, i64, i32 }

@ENA_MGMNT_IRQ_IDX = common dso_local global i64 0, align 8
@ENA_INFO = common dso_local global i32 0, align 4
@ENA_ADMQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tear down irq: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to tear down irq: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"release resource irq: %d\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"dev has no parent while releasing res for irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_free_mgmnt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_free_mgmnt_irq(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_irq*, align 8
  %4 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %5 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %5, i32 0, i32 1
  %7 = load %struct.ena_irq*, %struct.ena_irq** %6, align 8
  %8 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %9 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %7, i64 %8
  store %struct.ena_irq* %9, %struct.ena_irq** %3, align 8
  %10 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %11 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load i32, i32* @ENA_INFO, align 4
  %16 = load i32, i32* @ENA_ADMQ, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %19 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ena_trace(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %26 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %29 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bus_teardown_intr(i32 %24, i32* %27, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %14
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %42 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %37, %14
  %46 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %47 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %1
  %49 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %50 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %88

53:                                               ; preds = %48
  %54 = load i32, i32* @ENA_INFO, align 4
  %55 = load i32, i32* @ENA_ADMQ, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %58 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ena_trace(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SYS_RES_IRQ, align 4
  %65 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %66 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %69 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @bus_release_resource(i32 %63, i32 %64, i32 %67, i32* %70)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %73 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %53
  %80 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ena_irq*, %struct.ena_irq** %3, align 8
  %84 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %79, %53
  br label %88

88:                                               ; preds = %87, %48
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
