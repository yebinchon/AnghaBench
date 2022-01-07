; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_setup_isr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_setup_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { %struct.TYPE_2__*, %struct.amd_ntb_softc*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32*, i32* }

@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bus_alloc_resource IRQ failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@amd_ntb_irq_isr = common dso_local global i32 0, align 4
@amd_ntb_vec_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bus_setup_intr %d failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_softc*, i64, i32, i32)* @amd_ntb_setup_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_setup_isr(%struct.amd_ntb_softc* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd_ntb_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = load i32, i32* %11, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @RF_SHAREABLE, align 4
  %20 = load i32, i32* %11, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %18, %4
  store i64 0, i64* %10, align 8
  br label %23

23:                                               ; preds = %151, %22
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %33 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %31, i64* %37, align 8
  br label %47

38:                                               ; preds = %27
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  %41 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %42 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %40, i64* %46, align 8
  br label %47

47:                                               ; preds = %38, %30
  %48 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %49 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %53 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %11, align 4
  %59 = call i32* @bus_alloc_resource_any(i32 %50, i32 %51, i64* %57, i32 %58)
  %60 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %61 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32* %59, i32** %65, align 8
  %66 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %67 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %47
  %75 = call i32 (i32, i8*, ...) @amd_ntb_printf(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENOMEM, align 4
  store i32 %76, i32* %5, align 4
  br label %155

77:                                               ; preds = %47
  %78 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %79 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %85 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90, %77
  %94 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %95 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %98 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @INTR_MPSAFE, align 4
  %105 = load i32, i32* @INTR_TYPE_MISC, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @amd_ntb_irq_isr, align 4
  %108 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %109 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %110 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = call i32 @bus_setup_intr(i32 %96, i32* %103, i32 %106, i32* null, i32 %107, %struct.amd_ntb_softc* %108, i32** %114)
  store i32 %115, i32* %12, align 4
  br label %143

116:                                              ; preds = %90
  %117 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %118 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %121 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* @INTR_MPSAFE, align 4
  %128 = load i32, i32* @INTR_TYPE_MISC, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @amd_ntb_vec_isr, align 4
  %131 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %132 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %131, i32 0, i32 1
  %133 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %133, i64 %134
  %136 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %6, align 8
  %137 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = call i32 @bus_setup_intr(i32 %119, i32* %126, i32 %129, i32* null, i32 %130, %struct.amd_ntb_softc* %135, i32** %141)
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %116, %93
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i64, i64* %10, align 8
  %148 = call i32 (i32, i8*, ...) @amd_ntb_printf(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %147)
  %149 = load i32, i32* @ENXIO, align 4
  store i32 %149, i32* %5, align 4
  br label %155

150:                                              ; preds = %143
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %10, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %10, align 8
  br label %23

154:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %146, %74
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @amd_ntb_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.amd_ntb_softc*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
