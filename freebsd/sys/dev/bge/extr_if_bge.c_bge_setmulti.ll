; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@BGE_MAR0 = common dso_local global i64 0, align 8
@bge_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_setmulti(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %6 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  %7 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %8 = call i32 @BGE_LOCK_ASSERT(%struct.bge_softc* %7)
  %9 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @if_getflags(i32 %12)
  %14 = load i32, i32* @IFF_ALLMULTI, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @if_getflags(i32 %18)
  %20 = load i32, i32* @IFF_PROMISC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %29 = load i64, i64* @BGE_MAR0, align 8
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = call i32 @CSR_WRITE_4(%struct.bge_softc* %28, i64 %33, i32 -1)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %24

38:                                               ; preds = %24
  br label %77

39:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %45 = load i64, i64* @BGE_MAR0, align 8
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %45, %48
  %50 = call i32 @CSR_WRITE_4(%struct.bge_softc* %44, i64 %49, i32 0)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @bge_hash_maddr, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %58 = call i32 @if_foreach_llmaddr(i32 %55, i32 %56, i32* %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %74, %54
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %64 = load i64, i64* @BGE_MAR0, align 8
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CSR_WRITE_4(%struct.bge_softc* %63, i64 %68, i32 %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %59

77:                                               ; preds = %38, %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BGE_LOCK_ASSERT(%struct.bge_softc*) #2

declare dso_local i32 @if_getflags(i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i64, i32) #2

declare dso_local i32 @if_foreach_llmaddr(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
