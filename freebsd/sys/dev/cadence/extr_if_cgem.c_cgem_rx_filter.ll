; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_rx_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i32 }

@CGEM_NET_CFG = common dso_local global i32 0, align 4
@CGEM_NET_CFG_MULTI_HASH_EN = common dso_local global i32 0, align 4
@CGEM_NET_CFG_NO_BCAST = common dso_local global i32 0, align 4
@CGEM_NET_CFG_COPY_ALL = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@cgem_hash_maddr = common dso_local global i32 0, align 4
@CGEM_HASH_TOP = common dso_local global i32 0, align 4
@CGEM_HASH_BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgem_softc*)* @cgem_rx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_rx_filter(%struct.cgem_softc* %0) #0 {
  %2 = alloca %struct.cgem_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.cgem_softc* %0, %struct.cgem_softc** %2, align 8
  %6 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %7 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %11 = load i32, i32* @CGEM_NET_CFG, align 4
  %12 = call i32 @RD4(%struct.cgem_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @CGEM_NET_CFG_MULTI_HASH_EN, align 4
  %14 = load i32, i32* @CGEM_NET_CFG_NO_BCAST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CGEM_NET_CFG_COPY_ALL, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @if_getflags(i32 %21)
  %23 = load i32, i32* @IFF_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @CGEM_NET_CFG_COPY_ALL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %67

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @if_getflags(i32 %31)
  %33 = load i32, i32* @IFF_BROADCAST, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @CGEM_NET_CFG_NO_BCAST, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @if_getflags(i32 %41)
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %47, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %48, align 4
  br label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @cgem_hash_maddr, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %53 = call i32 @if_foreach_llmaddr(i32 %50, i32 %51, i32* %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @CGEM_NET_CFG_MULTI_HASH_EN, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %67

67:                                               ; preds = %66, %26
  %68 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %69 = load i32, i32* @CGEM_HASH_TOP, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @WR4(%struct.cgem_softc* %68, i32 %69, i32 %71)
  %73 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %74 = load i32, i32* @CGEM_HASH_BOT, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WR4(%struct.cgem_softc* %73, i32 %74, i32 %76)
  %78 = load %struct.cgem_softc*, %struct.cgem_softc** %2, align 8
  %79 = load i32, i32* @CGEM_NET_CFG, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @WR4(%struct.cgem_softc* %78, i32 %79, i32 %80)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RD4(%struct.cgem_softc*, i32) #2

declare dso_local i32 @if_getflags(i32) #2

declare dso_local i32 @if_foreach_llmaddr(i32, i32, i32*) #2

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
