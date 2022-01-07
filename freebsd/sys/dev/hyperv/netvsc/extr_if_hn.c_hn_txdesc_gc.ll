; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_gc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_txdesc_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_tx_ring = type { i32 }
%struct.hn_txdesc = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid txd refs %d\00", align 1
@HN_TXD_FLAG_ONAGG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"can't free txdesc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_tx_ring*, %struct.hn_txdesc*)* @hn_txdesc_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_txdesc_gc(%struct.hn_tx_ring* %0, %struct.hn_txdesc* %1) #0 {
  %3 = alloca %struct.hn_tx_ring*, align 8
  %4 = alloca %struct.hn_txdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.hn_tx_ring* %0, %struct.hn_tx_ring** %3, align 8
  store %struct.hn_txdesc* %1, %struct.hn_txdesc** %4, align 8
  %6 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %7 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %12 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ true, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %19 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @KASSERT(i32 %17, i8* %22)
  %24 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %25 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %15
  %29 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %30 = getelementptr inbounds %struct.hn_txdesc, %struct.hn_txdesc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HN_TXD_FLAG_ONAGG, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %3, align 8
  %37 = load %struct.hn_txdesc*, %struct.hn_txdesc** %4, align 8
  %38 = call i32 @hn_txdesc_put(%struct.hn_tx_ring* %36, %struct.hn_txdesc* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %28, %15
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @hn_txdesc_put(%struct.hn_tx_ring*, %struct.hn_txdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
