; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_stats_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_stats_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32 }
%struct.smb = type { i32, i32, i32, i32 }

@ALE_RX_MIB_BASE = common dso_local global i64 0, align 8
@ALE_TX_MIB_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_stats_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_stats_clear(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.smb, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %6 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 3
  store i32* %6, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 2
  %10 = icmp ule i32* %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %13 = load i64, i64* @ALE_RX_MIB_BASE, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @CSR_READ_4(%struct.ale_softc* %12, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %11
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  br label %7

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 1
  store i32* %26, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %42, %25
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds %struct.smb, %struct.smb* %3, i32 0, i32 0
  %30 = icmp ule i32* %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %33 = load i64, i64* @ALE_TX_MIB_BASE, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @CSR_READ_4(%struct.ale_softc* %32, i64 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %31
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  br label %27

45:                                               ; preds = %27
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.ale_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
