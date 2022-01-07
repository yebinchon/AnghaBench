; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@MY_TCRRCR = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MY_AM = common dso_local global i32 0, align 4
@MY_MAR0 = common dso_local global i32 0, align 4
@MY_MAR1 = common dso_local global i32 0, align 4
@my_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.my_softc*)* @my_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @my_setmulti(%struct.my_softc* %0) #0 {
  %2 = alloca %struct.my_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %2, align 8
  %6 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %8 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %7)
  %9 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %10 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %13 = load i32, i32* @MY_TCRRCR, align 4
  %14 = call i32 @CSR_READ_4(%struct.my_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_ALLMULTI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %21, %1
  %29 = load i32, i32* @MY_AM, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %33 = load i32, i32* @MY_TCRRCR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.my_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %37 = load i32, i32* @MY_MAR0, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.my_softc* %36, i32 %37, i32 -1)
  %39 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %40 = load i32, i32* @MY_MAR1, align 4
  %41 = call i32 @CSR_WRITE_4(%struct.my_softc* %39, i32 %40, i32 -1)
  br label %78

42:                                               ; preds = %21
  %43 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %44 = load i32, i32* @MY_MAR0, align 4
  %45 = call i32 @CSR_WRITE_4(%struct.my_softc* %43, i32 %44, i32 0)
  %46 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %47 = load i32, i32* @MY_MAR1, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.my_softc* %46, i32 %47, i32 0)
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = load i32, i32* @my_hash_maddr, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %52 = call i64 @if_foreach_llmaddr(%struct.ifnet* %49, i32 %50, i32* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* @MY_AM, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %63

58:                                               ; preds = %42
  %59 = load i32, i32* @MY_AM, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %65 = load i32, i32* @MY_MAR0, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @CSR_WRITE_4(%struct.my_softc* %64, i32 %65, i32 %67)
  %69 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %70 = load i32, i32* @MY_MAR1, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @CSR_WRITE_4(%struct.my_softc* %69, i32 %70, i32 %72)
  %74 = load %struct.my_softc*, %struct.my_softc** %2, align 8
  %75 = load i32, i32* @MY_TCRRCR, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @CSR_WRITE_4(%struct.my_softc* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %63, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #2

declare dso_local i32 @CSR_READ_4(%struct.my_softc*, i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.my_softc*, i32, i32) #2

declare dso_local i64 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
