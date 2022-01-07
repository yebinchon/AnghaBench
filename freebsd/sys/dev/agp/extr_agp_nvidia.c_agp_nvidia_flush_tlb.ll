; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_flush_tlb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_flush_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_nvidia_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@AGP_NVIDIA_1_WBC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"TLB flush took more than 3 seconds.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @agp_nvidia_flush_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_nvidia_flush_tlb(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_nvidia_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i64 @device_get_softc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.agp_nvidia_softc*
  store %struct.agp_nvidia_softc* %11, %struct.agp_nvidia_softc** %3, align 8
  %12 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %13 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %1
  %17 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %18 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AGP_NVIDIA_1_WBC, align 4
  %21 = call i32 @pci_read_config(i32 %19, i32 %20, i32 4)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %23 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %28 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AGP_NVIDIA_1_WBC, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pci_write_config(i32 %29, i32 %30, i32 %31, i32 4)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %52, %16
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 3000
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %38 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AGP_NVIDIA_1_WBC, align 4
  %41 = call i32 @pci_read_config(i32 %39, i32 %40, i32 4)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %43 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %55

49:                                               ; preds = %36
  %50 = call i32 @DELAY(i32 1000)
  br label %51

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %33

55:                                               ; preds = %48, %33
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 3000
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %1
  %63 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %64 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %6, align 8
  %69 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %3, align 8
  %70 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = sext i32 %76 to i64
  %78 = udiv i64 %75, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %93, %62
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %89, 4
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load volatile i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %80

96:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %110, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = udiv i64 %106, 4
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load volatile i32, i32* %108, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %97

113:                                              ; preds = %97
  ret void
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
