; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csapcm.c_csa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_info = type { i64, i32 }

@BA0_EGPIODR = common dso_local global i32 0, align 4
@EGPIODR_GPOE0 = common dso_local global i32 0, align 4
@BA0_EGPIOPTR = common dso_local global i32 0, align 4
@EGPIOPTR_GPPT0 = common dso_local global i32 0, align 4
@EGPIODR_GPOE2 = common dso_local global i32 0, align 4
@EGPIOPTR_GPPT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csa_info*)* @csa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csa_init(%struct.csa_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csa_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.csa_info* %0, %struct.csa_info** %3, align 8
  %5 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %6 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %5, i32 0, i32 1
  store i32* %6, i32** %4, align 8
  %7 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %8 = getelementptr inbounds %struct.csa_info, %struct.csa_info* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %10 = call i32 @csa_stopplaydma(%struct.csa_info* %9)
  %11 = load %struct.csa_info*, %struct.csa_info** %3, align 8
  %12 = call i32 @csa_stopcapturedma(%struct.csa_info* %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @csa_startdsp(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @csa_setplaysamplerate(i32* %18, i32 8000)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @csa_setcapturesamplerate(i32* %20, i32 8000)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @BA0_EGPIODR, align 4
  %24 = load i32, i32* @EGPIODR_GPOE0, align 4
  %25 = call i32 @csa_writeio(i32* %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @BA0_EGPIOPTR, align 4
  %28 = load i32, i32* @EGPIOPTR_GPPT0, align 4
  %29 = call i32 @csa_writeio(i32* %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @BA0_EGPIODR, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @BA0_EGPIODR, align 4
  %34 = call i32 @csa_readio(i32* %32, i32 %33)
  %35 = load i32, i32* @EGPIODR_GPOE2, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @csa_writeio(i32* %30, i32 %31, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @BA0_EGPIOPTR, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @BA0_EGPIOPTR, align 4
  %42 = call i32 @csa_readio(i32* %40, i32 %41)
  %43 = load i32, i32* @EGPIOPTR_GPPT2, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @csa_writeio(i32* %38, i32 %39, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %17, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @csa_stopplaydma(%struct.csa_info*) #1

declare dso_local i32 @csa_stopcapturedma(%struct.csa_info*) #1

declare dso_local i64 @csa_startdsp(i32*) #1

declare dso_local i32 @csa_setplaysamplerate(i32*, i32) #1

declare dso_local i32 @csa_setcapturesamplerate(i32*, i32) #1

declare dso_local i32 @csa_writeio(i32*, i32, i32) #1

declare dso_local i32 @csa_readio(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
