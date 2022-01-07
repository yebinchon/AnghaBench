; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_edma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_controller = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.mvs_channel = type { i32 }

@IC_DONE_IRQ = common dso_local global i32 0, align 4
@MVS_EDMA_OFF = common dso_local global i32 0, align 4
@CHIP_MIM = common dso_local global i32 0, align 4
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
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %20, 4
  %22 = add nsw i32 %19, %21
  %23 = shl i32 %17, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %25 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %76

29:                                               ; preds = %3
  %30 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %31 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %30, i32 0, i32 4
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MVS_EDMA_OFF, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %39 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %49

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %46 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %51 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %54 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %52, %55
  %57 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %58 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %60 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %49
  %64 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %65 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CHIP_MIM, align 4
  %68 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %69 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ATA_OUTL(i32 %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %63, %49
  %73 = load %struct.mvs_controller*, %struct.mvs_controller** %7, align 8
  %74 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %73, i32 0, i32 4
  %75 = call i32 @mtx_unlock(i32* %74)
  br label %76

76:                                               ; preds = %72, %28
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
