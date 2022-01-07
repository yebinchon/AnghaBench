; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_alloc_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_alloc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.irq = type { i32, i32, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to allocate IRQ for rid %d, name %s.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_NET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to setup interrupt for rid %d, name %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.irq*, i32, i32*, i8*, i8*)* @t4_alloc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_alloc_irq(%struct.adapter* %0, %struct.irq* %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.irq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store %struct.irq* %1, %struct.irq** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.irq*, %struct.irq** %9, align 8
  %17 = getelementptr inbounds %struct.irq, %struct.irq* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.adapter*, %struct.adapter** %8, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SYS_RES_IRQ, align 4
  %22 = load %struct.irq*, %struct.irq** %9, align 8
  %23 = getelementptr inbounds %struct.irq, %struct.irq* %22, i32 0, i32 0
  %24 = load i32, i32* @RF_SHAREABLE, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = or i32 %24, %25
  %27 = call i32* @bus_alloc_resource_any(i32 %20, i32 %21, i32* %23, i32 %26)
  %28 = load %struct.irq*, %struct.irq** %9, align 8
  %29 = getelementptr inbounds %struct.irq, %struct.irq* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.irq*, %struct.irq** %9, align 8
  %31 = getelementptr inbounds %struct.irq, %struct.irq* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %6
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 (i32, i8*, i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %7, align 4
  br label %85

42:                                               ; preds = %6
  %43 = load %struct.adapter*, %struct.adapter** %8, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.irq*, %struct.irq** %9, align 8
  %47 = getelementptr inbounds %struct.irq, %struct.irq* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @INTR_MPSAFE, align 4
  %50 = load i32, i32* @INTR_TYPE_NET, align 4
  %51 = or i32 %49, %50
  %52 = load i32*, i32** %11, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.irq*, %struct.irq** %9, align 8
  %55 = getelementptr inbounds %struct.irq, %struct.irq* %54, i32 0, i32 1
  %56 = call i32 @bus_setup_intr(i32 %45, i32* %48, i32 %51, i32* null, i32* %52, i8* %53, i32* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %42
  %60 = load %struct.adapter*, %struct.adapter** %8, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 (i32, i8*, i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %64, i32 %65)
  br label %83

67:                                               ; preds = %42
  %68 = load i8*, i8** %13, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.adapter*, %struct.adapter** %8, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.irq*, %struct.irq** %9, align 8
  %75 = getelementptr inbounds %struct.irq, %struct.irq* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.irq*, %struct.irq** %9, align 8
  %78 = getelementptr inbounds %struct.irq, %struct.irq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @bus_describe_intr(i32 %73, i32* %76, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %70, %67
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %34
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
