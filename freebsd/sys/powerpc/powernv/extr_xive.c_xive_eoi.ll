; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_eoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq = type { i32, i64, i64 }
%struct.xive_cpu = type { %struct.xive_irq }

@MAX_XIVE_IRQS = common dso_local global i64 0, align 8
@xive_cpu_data = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_EOI_VIA_FW = common dso_local global i32 0, align 4
@OPAL_INT_EOI = common dso_local global i32 0, align 4
@OPAL_XIVE_IRQ_STORE_EOI = common dso_local global i32 0, align 4
@XIVE_IRQ_STORE_EOI = common dso_local global i64 0, align 8
@OPAL_XIVE_IRQ_LSI = common dso_local global i32 0, align 4
@XIVE_IRQ_LOAD_EOI = common dso_local global i64 0, align 8
@XIVE_IRQ_PQ_00 = common dso_local global i64 0, align 8
@XIVE_IRQ_VAL_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @xive_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_eoi(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xive_irq*, align 8
  %8 = alloca %struct.xive_cpu*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MAX_XIVE_IRQS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @xive_cpu_data, align 4
  %15 = call %struct.xive_cpu* @DPCPU_PTR(i32 %14)
  store %struct.xive_cpu* %15, %struct.xive_cpu** %8, align 8
  %16 = load %struct.xive_cpu*, %struct.xive_cpu** %8, align 8
  %17 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %16, i32 0, i32 0
  store %struct.xive_irq* %17, %struct.xive_irq** %7, align 8
  br label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.xive_irq*
  store %struct.xive_irq* %20, %struct.xive_irq** %7, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %23 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @OPAL_XIVE_IRQ_EOI_VIA_FW, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @OPAL_INT_EOI, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @opal_call(i32 %29, i64 %30)
  br label %84

32:                                               ; preds = %21
  %33 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %34 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OPAL_XIVE_IRQ_STORE_EOI, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %41 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @XIVE_IRQ_STORE_EOI, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @xive_write_mmap8(i64 %44, i32 0)
  br label %83

46:                                               ; preds = %32
  %47 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %48 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @OPAL_XIVE_IRQ_LSI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %55 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XIVE_IRQ_LOAD_EOI, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @xive_read_mmap8(i64 %58)
  br label %82

60:                                               ; preds = %46
  %61 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %62 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @XIVE_IRQ_PQ_00, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @xive_read_mmap8(i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @XIVE_IRQ_VAL_Q, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %73 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %78 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @xive_write_mmap8(i64 %79, i32 0)
  br label %81

81:                                               ; preds = %76, %71, %60
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82, %39
  br label %84

84:                                               ; preds = %83, %28
  ret void
}

declare dso_local %struct.xive_cpu* @DPCPU_PTR(i32) #1

declare dso_local i32 @opal_call(i32, i64) #1

declare dso_local i32 @xive_write_mmap8(i64, i32) #1

declare dso_local i32 @xive_read_mmap8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
