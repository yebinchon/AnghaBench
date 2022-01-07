; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_cancel_tx_packets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_pio_cancel_tx_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_pio_txqueue = type { %struct.bwn_pio_txpkt* }
%struct.bwn_pio_txpkt = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_pio_txqueue*)* @bwn_pio_cancel_tx_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_pio_cancel_tx_packets(%struct.bwn_pio_txqueue* %0) #0 {
  %2 = alloca %struct.bwn_pio_txqueue*, align 8
  %3 = alloca %struct.bwn_pio_txpkt*, align 8
  %4 = alloca i32, align 4
  store %struct.bwn_pio_txqueue* %0, %struct.bwn_pio_txqueue** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %2, align 8
  %8 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %7, i32 0, i32 0
  %9 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %8, align 8
  %10 = call i32 @N(%struct.bwn_pio_txpkt* %9)
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %5
  %13 = load %struct.bwn_pio_txqueue*, %struct.bwn_pio_txqueue** %2, align 8
  %14 = getelementptr inbounds %struct.bwn_pio_txqueue, %struct.bwn_pio_txqueue* %13, i32 0, i32 0
  %15 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %15, i64 %17
  store %struct.bwn_pio_txpkt* %18, %struct.bwn_pio_txpkt** %3, align 8
  %19 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %3, align 8
  %20 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %12
  %24 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @m_freem(i32* %26)
  %28 = load %struct.bwn_pio_txpkt*, %struct.bwn_pio_txpkt** %3, align 8
  %29 = getelementptr inbounds %struct.bwn_pio_txpkt, %struct.bwn_pio_txpkt* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @N(%struct.bwn_pio_txpkt*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
