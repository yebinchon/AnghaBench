; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sk/extr_if_sk.c_sk_rxfilter_yukon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sk/extr_if_sk.c_sk_rxfilter_yukon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_if_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@YUKON_RCR = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@YU_RCR_UFLEN = common dso_local global i32 0, align 4
@YU_RCR_MUFLEN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@sk_hash_maddr_yukon = common dso_local global i32 0, align 4
@YUKON_MCAH1 = common dso_local global i32 0, align 4
@YUKON_MCAH2 = common dso_local global i32 0, align 4
@YUKON_MCAH3 = common dso_local global i32 0, align 4
@YUKON_MCAH4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_if_softc*)* @sk_rxfilter_yukon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_rxfilter_yukon(%struct.sk_if_softc* %0) #0 {
  %2 = alloca %struct.sk_if_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.sk_if_softc* %0, %struct.sk_if_softc** %2, align 8
  %6 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %8 = call i32 @SK_IF_LOCK_ASSERT(%struct.sk_if_softc* %7)
  %9 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sk_if_softc, %struct.sk_if_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %13 = load i32, i32* @YUKON_RCR, align 4
  %14 = call i32 @SK_YU_READ_2(%struct.sk_if_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @YU_RCR_UFLEN, align 4
  %23 = load i32, i32* @YU_RCR_MUFLEN, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @YU_RCR_UFLEN, align 4
  %37 = load i32, i32* @YU_RCR_MUFLEN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -1, i32* %41, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -1, i32* %42, align 4
  br label %63

43:                                               ; preds = %28
  %44 = load i32, i32* @YU_RCR_UFLEN, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %48 = load i32, i32* @sk_hash_maddr_yukon, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %50 = call i32 @if_foreach_llmaddr(%struct.ifnet* %47, i32 %48, i32* %49)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %43
  %59 = load i32, i32* @YU_RCR_MUFLEN, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %21
  %65 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %66 = load i32, i32* @YUKON_MCAH1, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 65535
  %70 = call i32 @SK_YU_WRITE_2(%struct.sk_if_softc* %65, i32 %66, i32 %69)
  %71 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %72 = load i32, i32* @YUKON_MCAH2, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 65535
  %77 = call i32 @SK_YU_WRITE_2(%struct.sk_if_softc* %71, i32 %72, i32 %76)
  %78 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %79 = load i32, i32* @YUKON_MCAH3, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 65535
  %83 = call i32 @SK_YU_WRITE_2(%struct.sk_if_softc* %78, i32 %79, i32 %82)
  %84 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %85 = load i32, i32* @YUKON_MCAH4, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 65535
  %90 = call i32 @SK_YU_WRITE_2(%struct.sk_if_softc* %84, i32 %85, i32 %89)
  %91 = load %struct.sk_if_softc*, %struct.sk_if_softc** %2, align 8
  %92 = load i32, i32* @YUKON_RCR, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @SK_YU_WRITE_2(%struct.sk_if_softc* %91, i32 %92, i32 %93)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SK_IF_LOCK_ASSERT(%struct.sk_if_softc*) #2

declare dso_local i32 @SK_YU_READ_2(%struct.sk_if_softc*, i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #2

declare dso_local i32 @SK_YU_WRITE_2(%struct.sk_if_softc*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
