; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_update_rx_prod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_update_rx_prod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i32, i64 }
%struct.ustorm_eth_rx_producers = type { i8*, i8*, i8*, i32 }

@DBG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"RX fp[%d]: wrote prods bd_prod=%u cqe_prod=%u sge_prod=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.bxe_fastpath*, i8*, i8*, i8*)* @bxe_update_rx_prod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_update_rx_prod(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.bxe_fastpath*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ustorm_eth_rx_producers, align 8
  %12 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = bitcast %struct.ustorm_eth_rx_producers* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds %struct.ustorm_eth_rx_producers, %struct.ustorm_eth_rx_producers* %11, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds %struct.ustorm_eth_rx_producers, %struct.ustorm_eth_rx_producers* %11, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds %struct.ustorm_eth_rx_producers, %struct.ustorm_eth_rx_producers* %11, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = call i32 (...) @wmb()
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %40, %5
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %27 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %7, align 8
  %28 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = bitcast %struct.ustorm_eth_rx_producers* %11 to i32*
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_WR(%struct.bxe_softc* %26, i64 %33, i32 %38)
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %21

43:                                               ; preds = %21
  %44 = call i32 (...) @wmb()
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %46 = load i32, i32* @DBG_RX, align 4
  %47 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %7, align 8
  %48 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @BLOGD(%struct.bxe_softc* %45, i32 %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %50, i8* %51, i8* %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wmb(...) #2

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #2

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
