; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_chan_txrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_get_chan_txrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@A_TP_TX_TRATE = common dso_local global i32 0, align 4
@A_TP_TX_ORATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_get_chan_txrate(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = load i32, i32* @A_TP_TX_TRATE, align 4
  %10 = call i32 @t4_read_reg(%struct.adapter* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @G_TNLRATE0(i32 %12)
  %14 = call i32 @chan_rate(%struct.adapter* %11, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @G_TNLRATE1(i32 %18)
  %20 = call i32 @chan_rate(%struct.adapter* %17, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %42

29:                                               ; preds = %3
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @G_TNLRATE2(i32 %31)
  %33 = call i32 @chan_rate(%struct.adapter* %30, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.adapter*, %struct.adapter** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @G_TNLRATE3(i32 %37)
  %39 = call i32 @chan_rate(%struct.adapter* %36, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %29, %3
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = load i32, i32* @A_TP_TX_ORATE, align 4
  %45 = call i32 @t4_read_reg(%struct.adapter* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @G_OFDRATE0(i32 %47)
  %49 = call i32 @chan_rate(%struct.adapter* %46, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @G_OFDRATE1(i32 %53)
  %55 = call i32 @chan_rate(%struct.adapter* %52, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.adapter*, %struct.adapter** %4, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 2
  br i1 %63, label %64, label %77

64:                                               ; preds = %42
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @G_OFDRATE2(i32 %66)
  %68 = call i32 @chan_rate(%struct.adapter* %65, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @G_OFDRATE3(i32 %72)
  %74 = call i32 @chan_rate(%struct.adapter* %71, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %64, %42
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @chan_rate(%struct.adapter*, i32) #1

declare dso_local i32 @G_TNLRATE0(i32) #1

declare dso_local i32 @G_TNLRATE1(i32) #1

declare dso_local i32 @G_TNLRATE2(i32) #1

declare dso_local i32 @G_TNLRATE3(i32) #1

declare dso_local i32 @G_OFDRATE0(i32) #1

declare dso_local i32 @G_OFDRATE1(i32) #1

declare dso_local i32 @G_OFDRATE2(i32) #1

declare dso_local i32 @G_OFDRATE3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
