; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xmit_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xmit_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32, i32, i64, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_tx_ring*)* @hn_xmit_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_xmit_txeof(%struct.hn_tx_ring* %0) #0 {
  %2 = alloca %struct.hn_tx_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %2, align 8
  %4 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %5 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %11 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %10, i32 0, i32 4
  %12 = call i64 @mtx_trylock(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %16 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %18 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %19 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @hn_xmit(%struct.hn_tx_ring* %17, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %23 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %22, i32 0, i32 4
  %24 = call i32 @mtx_unlock(i32* %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %29 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %32 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %31, i32 0, i32 3
  %33 = call i32 @taskqueue_enqueue(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %27, %14
  br label %45

35:                                               ; preds = %9
  br label %36

36:                                               ; preds = %35, %8
  %37 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %38 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %40 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %2, align 8
  %43 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %42, i32 0, i32 0
  %44 = call i32 @taskqueue_enqueue(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %36, %34
  ret void
}

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @hn_xmit(%struct.hn_tx_ring*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
