; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_apb.c_apb_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_apb.c_apb_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apb_softc = type { i32*, %struct.intr_event** }
%struct.intr_event = type { i32 }
%struct.thread = type { %struct.trapframe* }
%struct.trapframe = type { i32 }

@AR71XX_MISC_INTR_STATUS = common dso_local global i32 0, align 4
@APB_NIRQS = common dso_local global i32 0, align 4
@ar71xx_soc = common dso_local global i32 0, align 4
@APB_INTR_PMC = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Stray APB IRQ %d\0A\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @apb_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.apb_softc*, align 8
  %4 = alloca %struct.intr_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.trapframe*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.apb_softc*
  store %struct.apb_softc* %10, %struct.apb_softc** %3, align 8
  %11 = load i32, i32* @AR71XX_MISC_INTR_STATUS, align 4
  %12 = call i32 @ATH_READ_REG(i32 %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %92, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @APB_NIRQS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %95

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %91

23:                                               ; preds = %17
  %24 = load i32, i32* @ar71xx_soc, align 4
  switch i32 %24, label %30 [
    i32 139, label %25
    i32 138, label %25
    i32 137, label %25
    i32 136, label %25
    i32 135, label %25
    i32 134, label %25
    i32 133, label %25
    i32 132, label %25
    i32 131, label %25
    i32 130, label %25
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %26 = load i32, i32* @AR71XX_MISC_INTR_STATUS, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = call i32 @ATH_WRITE_REG(i32 %26, i32 %28)
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %25
  %32 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %33 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %32, i32 0, i32 1
  %34 = load %struct.intr_event**, %struct.intr_event*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %34, i64 %36
  %38 = load %struct.intr_event*, %struct.intr_event** %37, align 8
  store %struct.intr_event* %38, %struct.intr_event** %4, align 8
  %39 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %40 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mips_intrcnt_inc(i32 %45)
  %47 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %48 = icmp ne %struct.intr_event* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %31
  %50 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %51 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %50, i32 0, i32 0
  %52 = call i64 @CK_SLIST_EMPTY(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %49, %31
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @APB_INTR_PMC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* @curthread, align 4
  %60 = call %struct.thread* @PCPU_GET(i32 %59)
  store %struct.thread* %60, %struct.thread** %7, align 8
  %61 = load %struct.thread*, %struct.thread** %7, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load %struct.trapframe*, %struct.trapframe** %62, align 8
  store %struct.trapframe* %63, %struct.trapframe** %8, align 8
  br i1 true, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  %66 = call i32 @pmc_intr(%struct.trapframe* %65)
  br label %67

67:                                               ; preds = %64, %58
  br label %92

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 8
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 9
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 10
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %77, %74, %71, %68
  br label %92

84:                                               ; preds = %49
  %85 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %86 = load i32, i32* @curthread, align 4
  %87 = call %struct.thread* @PCPU_GET(i32 %86)
  %88 = getelementptr inbounds %struct.thread, %struct.thread* %87, i32 0, i32 0
  %89 = load %struct.trapframe*, %struct.trapframe** %88, align 8
  %90 = call i32 @intr_event_handle(%struct.intr_event* %85, %struct.trapframe* %89)
  br label %91

91:                                               ; preds = %84, %17
  br label %92

92:                                               ; preds = %91, %83, %67
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %13

95:                                               ; preds = %13
  %96 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %96
}

declare dso_local i32 @ATH_READ_REG(i32) #1

declare dso_local i32 @ATH_WRITE_REG(i32, i32) #1

declare dso_local i32 @mips_intrcnt_inc(i32) #1

declare dso_local i64 @CK_SLIST_EMPTY(i32*) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @pmc_intr(%struct.trapframe*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @intr_event_handle(%struct.intr_event*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
