; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.h_bxe_ack_sb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.h_bxe_ack_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@INT_BLOCK_HC = common dso_local global i64 0, align 8
@IGU_SEG_ACCESS_DEF = common dso_local global i64 0, align 8
@ATTENTION_ID = common dso_local global i64 0, align 8
@IGU_SEG_ACCESS_ATTN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, i64, i64, i32, i64, i64)* @bxe_ack_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_ack_sb(%struct.bxe_softc* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %15 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INT_BLOCK_HC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %6
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @bxe_hc_ack_sb(%struct.bxe_softc* %21, i64 %22, i64 %23, i32 %24, i64 %25, i64 %26)
  br label %60

28:                                               ; preds = %6
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %30 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %13, align 8
  br label %52

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @IGU_SEG_ACCESS_DEF, align 8
  store i64 %41, i64* %13, align 8
  br label %51

42:                                               ; preds = %34
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @ATTENTION_ID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @IGU_SEG_ACCESS_ATTN, align 8
  store i64 %47, i64* %13, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i64, i64* @IGU_SEG_ACCESS_DEF, align 8
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %40
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @bxe_igu_ack_sb(%struct.bxe_softc* %53, i64 %54, i64 %55, i32 %56, i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %52, %20
  ret void
}

declare dso_local i32 @bxe_hc_ack_sb(%struct.bxe_softc*, i64, i64, i32, i64, i64) #1

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_igu_ack_sb(%struct.bxe_softc*, i64, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
