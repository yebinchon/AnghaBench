; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_start_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_start_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32 }

@RXQ_CFG_QUEUE0_ENB = common dso_local global i32 0, align 4
@RXQ_CFG_QUEUE1_ENB = common dso_local global i32 0, align 4
@RXQ_CFG_QUEUE2_ENB = common dso_local global i32 0, align 4
@RXQ_CFG_ENB = common dso_local global i32 0, align 4
@ALC_RXQ_CFG = common dso_local global i32 0, align 4
@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@ALC_TXQ_CFG = common dso_local global i32 0, align 4
@TXQ_CFG_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_start_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_start_queue(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* @RXQ_CFG_QUEUE0_ENB, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @RXQ_CFG_QUEUE0_ENB, align 4
  %10 = load i32, i32* @RXQ_CFG_QUEUE1_ENB, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds i32, i32* %8, i64 1
  %13 = load i32, i32* @RXQ_CFG_QUEUE0_ENB, align 4
  %14 = load i32, i32* @RXQ_CFG_QUEUE1_ENB, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RXQ_CFG_QUEUE2_ENB, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds i32, i32* %12, i64 1
  %19 = load i32, i32* @RXQ_CFG_ENB, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %21 = call i32 @ALC_LOCK_ASSERT(%struct.alc_softc* %20)
  %22 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %23 = load i32, i32* @ALC_RXQ_CFG, align 4
  %24 = call i32 @CSR_READ_4(%struct.alc_softc* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %26 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load i32, i32* @RXQ_CFG_ENB, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @RXQ_CFG_QUEUE0_ENB, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %46 = load i32, i32* @ALC_RXQ_CFG, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.alc_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %50 = load i32, i32* @ALC_TXQ_CFG, align 4
  %51 = call i32 @CSR_READ_4(%struct.alc_softc* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @TXQ_CFG_ENB, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %56 = load i32, i32* @ALC_TXQ_CFG, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @CSR_WRITE_4(%struct.alc_softc* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @ALC_LOCK_ASSERT(%struct.alc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.alc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.alc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
