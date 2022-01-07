; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32 }

@VGE_CRS1 = common dso_local global i32 0, align 4
@VGE_CR1_SOFTRESET = common dso_local global i32 0, align 4
@VGE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"soft reset timed out\0A\00", align 1
@VGE_CRS3 = common dso_local global i32 0, align 4
@VGE_CR3_STOP_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_reset(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %4 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %5 = load i32, i32* @VGE_CRS1, align 4
  %6 = load i32, i32* @VGE_CR1_SOFTRESET, align 4
  %7 = call i32 @CSR_WRITE_1(%struct.vge_softc* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @VGE_TIMEOUT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = call i32 @DELAY(i32 5)
  %14 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %15 = load i32, i32* @VGE_CRS1, align 4
  %16 = call i32 @CSR_READ_1(%struct.vge_softc* %14, i32 %15)
  %17 = load i32, i32* @VGE_CR1_SOFTRESET, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %25

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %20, %8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @VGE_TIMEOUT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %35 = load i32, i32* @VGE_CRS3, align 4
  %36 = load i32, i32* @VGE_CR3_STOP_FORCE, align 4
  %37 = call i32 @CSR_WRITE_1(%struct.vge_softc* %34, i32 %35, i32 %36)
  %38 = call i32 @DELAY(i32 2000)
  br label %39

39:                                               ; preds = %29, %25
  %40 = call i32 @DELAY(i32 5000)
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
