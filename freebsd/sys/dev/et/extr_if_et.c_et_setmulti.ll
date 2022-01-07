; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@ET_PKTFILT = common dso_local global i64 0, align 8
@ET_RXMAC_CTRL = common dso_local global i64 0, align 8
@ET_PKTFILT_BCAST = common dso_local global i32 0, align 4
@ET_PKTFILT_MCAST = common dso_local global i32 0, align 4
@ET_PKTFILT_UCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@ET_RXMAC_CTRL_NO_PKTFILT = common dso_local global i32 0, align 4
@et_hash_maddr = common dso_local global i32 0, align 4
@ET_MULTI_HASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_setmulti(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %9 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %11 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %10)
  %12 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %13 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %12, i32 0, i32 0
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %3, align 8
  %15 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %16 = load i64, i64* @ET_PKTFILT, align 8
  %17 = call i32 @CSR_READ_4(%struct.et_softc* %15, i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %19 = load i64, i64* @ET_RXMAC_CTRL, align 8
  %20 = call i32 @CSR_READ_4(%struct.et_softc* %18, i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @ET_PKTFILT_BCAST, align 4
  %22 = load i32, i32* @ET_PKTFILT_MCAST, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ET_PKTFILT_UCAST, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_PROMISC, align 4
  %33 = load i32, i32* @IFF_ALLMULTI, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @ET_RXMAC_CTRL_NO_PKTFILT, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %76

41:                                               ; preds = %1
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = load i32, i32* @et_hash_maddr, align 4
  %44 = bitcast [4 x i32]* %4 to i32**
  %45 = call i32 @if_foreach_llmaddr(%struct.ifnet* %42, i32 %43, i32** %44)
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %61, %41
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %51 = load i64, i64* @ET_MULTI_HASH, align 8
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.et_softc* %50, i64 %55, i32 %59)
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* @ET_PKTFILT_MCAST, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @ET_RXMAC_CTRL_NO_PKTFILT, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %37
  %77 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %78 = load i64, i64* @ET_PKTFILT, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @CSR_WRITE_4(%struct.et_softc* %77, i64 %78, i32 %79)
  %81 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %82 = load i64, i64* @ET_RXMAC_CTRL, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @CSR_WRITE_4(%struct.et_softc* %81, i64 %82, i32 %83)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #2

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i64) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #2

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
