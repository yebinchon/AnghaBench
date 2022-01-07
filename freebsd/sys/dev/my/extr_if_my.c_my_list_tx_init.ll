; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_list_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_list_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.my_list_data*, %struct.my_chain_data }
%struct.my_list_data = type { i32* }
%struct.my_chain_data = type { i32*, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32* }

@MY_TX_LIST_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.my_softc*)* @my_list_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_list_tx_init(%struct.my_softc* %0) #0 {
  %2 = alloca %struct.my_softc*, align 8
  %3 = alloca %struct.my_chain_data*, align 8
  %4 = alloca %struct.my_list_data*, align 8
  %5 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %2, align 8
  %6 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %7 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %6)
  %8 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %9 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %8, i32 0, i32 1
  store %struct.my_chain_data* %9, %struct.my_chain_data** %3, align 8
  %10 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %11 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %10, i32 0, i32 0
  %12 = load %struct.my_list_data*, %struct.my_list_data** %11, align 8
  store %struct.my_list_data* %12, %struct.my_list_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MY_TX_LIST_CNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  %18 = load %struct.my_list_data*, %struct.my_list_data** %4, align 8
  %19 = getelementptr inbounds %struct.my_list_data, %struct.my_list_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %25 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32* %23, i32** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MY_TX_LIST_CNT, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %17
  %36 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %37 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %41 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %46, align 8
  br label %62

47:                                               ; preds = %17
  %48 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %49 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %53
  %55 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %56 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %61, align 8
  br label %62

62:                                               ; preds = %47, %35
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %13

66:                                               ; preds = %13
  %67 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %68 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %72 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %71, i32 0, i32 3
  store %struct.TYPE_2__* %70, %struct.TYPE_2__** %72, align 8
  %73 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %74 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.my_chain_data*, %struct.my_chain_data** %3, align 8
  %76 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %75, i32 0, i32 1
  store i32 0, i32* %76, align 8
  ret i32 0
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
