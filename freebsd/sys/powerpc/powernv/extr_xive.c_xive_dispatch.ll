; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }
%struct.xive_softc = type { i32 }
%struct.xive_cpu = type { i32 }

@XIVE_TM_SPC_ACK = common dso_local global i32 0, align 4
@TM_QW3NSR_HE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected interrupt he type: %d\0A\00", align 1
@xive_cpu_data = common dso_local global i32 0, align 4
@XIVE_TM_CPPR = common dso_local global i32 0, align 4
@MAX_XIVE_IRQS = common dso_local global i64 0, align 8
@xive_ipi_vector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.trapframe*)* @xive_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_dispatch(i32 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.xive_softc*, align 8
  %6 = alloca %struct.xive_cpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.xive_softc* @device_get_softc(i32 %11)
  store %struct.xive_softc* %12, %struct.xive_softc** %5, align 8
  br label %13

13:                                               ; preds = %57, %2
  %14 = load %struct.xive_softc*, %struct.xive_softc** %5, align 8
  %15 = load i32, i32* @XIVE_TM_SPC_ACK, align 4
  %16 = call i32 @xive_read_2(%struct.xive_softc* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TM_QW3NSR_HE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %58

25:                                               ; preds = %13
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %33 [
    i32 130, label %27
    i32 128, label %28
    i32 131, label %28
    i32 129, label %32
  ]

27:                                               ; preds = %25
  br label %59

28:                                               ; preds = %25, %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %59

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %25, %32
  %34 = load i32, i32* @xive_cpu_data, align 4
  %35 = call %struct.xive_cpu* @DPCPU_PTR(i32 %34)
  store %struct.xive_cpu* %35, %struct.xive_cpu** %6, align 8
  %36 = load %struct.xive_softc*, %struct.xive_softc** %5, align 8
  %37 = load i32, i32* @XIVE_TM_CPPR, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @xive_write_1(%struct.xive_softc* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %53, %33
  %41 = load %struct.xive_cpu*, %struct.xive_cpu** %6, align 8
  %42 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %41, i32 0, i32 0
  %43 = call i64 @xive_read_eq(i32* %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %57

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @MAX_XIVE_IRQS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @xive_ipi_vector, align 8
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %56 = call i32 @powerpc_dispatch_intr(i64 %54, %struct.trapframe* %55)
  br label %40

57:                                               ; preds = %46
  br label %13

58:                                               ; preds = %24
  br label %59

59:                                               ; preds = %58, %28, %27
  %60 = load %struct.xive_softc*, %struct.xive_softc** %5, align 8
  %61 = load i32, i32* @XIVE_TM_CPPR, align 4
  %62 = call i32 @xive_write_1(%struct.xive_softc* %60, i32 %61, i32 255)
  ret void
}

declare dso_local %struct.xive_softc* @device_get_softc(i32) #1

declare dso_local i32 @xive_read_2(%struct.xive_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local %struct.xive_cpu* @DPCPU_PTR(i32) #1

declare dso_local i32 @xive_write_1(%struct.xive_softc*, i32, i32) #1

declare dso_local i64 @xive_read_eq(i32*) #1

declare dso_local i32 @powerpc_dispatch_intr(i64, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
