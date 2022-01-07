; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_tx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32, i32, i32, %struct.ipw_soft_bd* }
%struct.ipw_soft_bd = type { i32 }

@IPW_FLAG_FW_INITED = common dso_local global i32 0, align 4
@IPW_CSR_TX_READ = common dso_local global i32 0, align 4
@IPW_NTBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_softc*)* @ipw_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_tx_intr(%struct.ipw_softc* %0) #0 {
  %2 = alloca %struct.ipw_softc*, align 8
  %3 = alloca %struct.ipw_soft_bd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %2, align 8
  %6 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IPW_FLAG_FW_INITED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %15 = load i32, i32* @IPW_CSR_TX_READ, align 4
  %16 = call i32 @CSR_READ_4(%struct.ipw_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %18 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32, i32* @IPW_NTBD, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %41, %13
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %29 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %28, i32 0, i32 3
  %30 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ipw_soft_bd, %struct.ipw_soft_bd* %30, i64 %32
  store %struct.ipw_soft_bd* %33, %struct.ipw_soft_bd** %3, align 8
  %34 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %35 = load %struct.ipw_soft_bd*, %struct.ipw_soft_bd** %3, align 8
  %36 = call i32 @ipw_release_sbd(%struct.ipw_softc* %34, %struct.ipw_soft_bd* %35)
  %37 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @IPW_NTBD, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %5, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @IPW_NTBD, align 4
  %51 = sub nsw i32 %50, 1
  br label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, 1
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %51, %49 ], [ %54, %52 ]
  %57 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %60 = call i32 @ipw_start(%struct.ipw_softc* %59)
  br label %61

61:                                               ; preds = %55, %12
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.ipw_softc*, i32) #1

declare dso_local i32 @ipw_release_sbd(%struct.ipw_softc*, %struct.ipw_soft_bd*) #1

declare dso_local i32 @ipw_start(%struct.ipw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
