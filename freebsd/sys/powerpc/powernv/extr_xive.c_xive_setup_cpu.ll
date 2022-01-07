; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_setup_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_setup_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_softc = type { i32 }
%struct.xive_cpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@xive_cpu_data = common dso_local global i32 0, align 4
@root_pic = common dso_local global i32 0, align 4
@XIVE_TM_QW2_HV_POOL = common dso_local global i64 0, align 8
@TM_WORD2 = common dso_local global i64 0, align 8
@TM_QW2W2_VP = common dso_local global i32 0, align 4
@XIVE_TM_SPC_PULL_POOL_CTX = common dso_local global i32 0, align 4
@TM_WORD0 = common dso_local global i64 0, align 8
@XIVE_TM_CPPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xive_setup_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_setup_cpu() #0 {
  %1 = alloca %struct.xive_softc*, align 8
  %2 = alloca %struct.xive_cpu*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @xive_cpu_data, align 4
  %5 = call %struct.xive_cpu* @DPCPU_PTR(i32 %4)
  store %struct.xive_cpu* %5, %struct.xive_cpu** %2, align 8
  %6 = load i32, i32* @root_pic, align 4
  %7 = call %struct.xive_softc* @device_get_softc(i32 %6)
  store %struct.xive_softc* %7, %struct.xive_softc** %1, align 8
  %8 = load %struct.xive_softc*, %struct.xive_softc** %1, align 8
  %9 = getelementptr inbounds %struct.xive_softc, %struct.xive_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @XIVE_TM_QW2_HV_POOL, align 8
  %12 = load i64, i64* @TM_WORD2, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @bus_read_4(i32 %10, i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TM_QW2W2_VP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %0
  %20 = load %struct.xive_softc*, %struct.xive_softc** %1, align 8
  %21 = getelementptr inbounds %struct.xive_softc, %struct.xive_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XIVE_TM_SPC_PULL_POOL_CTX, align 4
  %24 = call i32 @bus_read_8(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %0
  %26 = load %struct.xive_softc*, %struct.xive_softc** %1, align 8
  %27 = getelementptr inbounds %struct.xive_softc, %struct.xive_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @XIVE_TM_QW2_HV_POOL, align 8
  %30 = load i64, i64* @TM_WORD0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @bus_write_4(i32 %28, i64 %31, i32 255)
  %33 = load %struct.xive_softc*, %struct.xive_softc** %1, align 8
  %34 = getelementptr inbounds %struct.xive_softc, %struct.xive_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* @XIVE_TM_QW2_HV_POOL, align 8
  %37 = load i64, i64* @TM_WORD2, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @TM_QW2W2_VP, align 4
  %40 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %41 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  %44 = call i32 @bus_write_4(i32 %35, i64 %38, i32 %43)
  %45 = load i32, i32* @root_pic, align 4
  %46 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %47 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xive_cpu*, %struct.xive_cpu** %2, align 8
  %51 = getelementptr inbounds %struct.xive_cpu, %struct.xive_cpu* %50, i32 0, i32 1
  %52 = call i32 @xive_unmask(i32 %45, i32 %49, %struct.TYPE_2__* %51)
  %53 = load %struct.xive_softc*, %struct.xive_softc** %1, align 8
  %54 = load i32, i32* @XIVE_TM_CPPR, align 4
  %55 = call i32 @xive_write_1(%struct.xive_softc* %53, i32 %54, i32 255)
  ret void
}

declare dso_local %struct.xive_cpu* @DPCPU_PTR(i32) #1

declare dso_local %struct.xive_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i64) #1

declare dso_local i32 @bus_read_8(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i64, i32) #1

declare dso_local i32 @xive_unmask(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @xive_write_1(%struct.xive_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
