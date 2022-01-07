; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_edma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { i64, i32, i32, i32, i32 }
%struct.mvs_channel = type { i32 }

@IC_DONE_IRQ = common dso_local global i32 0, align 4
@MVS_EDMA_OFF = common dso_local global i32 0, align 4
@CHIP_SOC_MIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mvs_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_edma(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvs_controller*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.mvs_controller* @device_get_softc(i32 %10)
  store %struct.mvs_controller* %11, %struct.mvs_controller** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.mvs_controller* @device_get_softc(i32 %12)
  %14 = bitcast %struct.mvs_controller* %13 to %struct.mvs_channel*
  %15 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @IC_DONE_IRQ, align 4
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, 2
  %20 = shl i32 %17, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %22 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %62

26:                                               ; preds = %3
  %27 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %28 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %27, i32 0, i32 3
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MVS_EDMA_OFF, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %36 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %43 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %33
  %47 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %48 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CHIP_SOC_MIM, align 4
  %51 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %52 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %55 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %53, %56
  %58 = call i32 @ATA_OUTL(i32 %49, i32 %50, i32 %57)
  %59 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %60 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %59, i32 0, i32 3
  %61 = call i32 @mtx_unlock(i32* %60)
  br label %62

62:                                               ; preds = %46, %25
  ret void
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
