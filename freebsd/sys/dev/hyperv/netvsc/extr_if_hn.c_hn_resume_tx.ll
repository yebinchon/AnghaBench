; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_resume_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_resume_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.hn_tx_ring* }
%struct.hn_tx_ring = type { i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"invalid TX ring count %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_resume_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_resume_tx(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hn_tx_ring*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %7, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %12, i8* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %36, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %23 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %22, i32 0, i32 1
  %24 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %24, i64 %26
  store %struct.hn_tx_ring* %27, %struct.hn_tx_ring** %6, align 8
  %28 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %28, i32 0, i32 0
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %32 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %17

39:                                               ; preds = %17
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
