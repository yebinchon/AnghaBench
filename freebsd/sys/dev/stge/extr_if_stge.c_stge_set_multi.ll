; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_set_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_set_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@STGE_ReceiveMode = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@RM_ReceiveAllFrames = common dso_local global i32 0, align 4
@RM_ReceiveMulticast = common dso_local global i32 0, align 4
@STGE_HashTable0 = common dso_local global i32 0, align 4
@STGE_HashTable1 = common dso_local global i32 0, align 4
@stge_hash_maddr = common dso_local global i32 0, align 4
@RM_ReceiveMulticastHash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_set_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_set_multi(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %7 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %8 = call i32 @STGE_LOCK_ASSERT(%struct.stge_softc* %7)
  %9 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %9, i32 0, i32 0
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %13 = load i32, i32* @STGE_ReceiveMode, align 4
  %14 = call i32 @CSR_READ_2(%struct.stge_softc* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = load i32, i32* @IFF_ALLMULTI, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %1
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_PROMISC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @RM_ReceiveAllFrames, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %46

34:                                               ; preds = %23
  %35 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_ALLMULTI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @RM_ReceiveMulticast, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %48 = load i32, i32* @STGE_ReceiveMode, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @CSR_WRITE_2(%struct.stge_softc* %47, i32 %48, i32 %49)
  br label %96

51:                                               ; preds = %1
  %52 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %53 = load i32, i32* @STGE_HashTable0, align 4
  %54 = call i32 @CSR_WRITE_4(%struct.stge_softc* %52, i32 %53, i32 0)
  %55 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %56 = load i32, i32* @STGE_HashTable1, align 4
  %57 = call i32 @CSR_WRITE_4(%struct.stge_softc* %55, i32 %56, i32 0)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %59 = call i32 @bzero(i32* %58, i32 8)
  %60 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %61 = load i32, i32* @stge_hash_maddr, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %63 = call i32 @if_foreach_llmaddr(%struct.ifnet* %60, i32 %61, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @RM_ReceiveMulticast, align 4
  %65 = load i32, i32* @RM_ReceiveAllFrames, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %51
  %73 = load i32, i32* @RM_ReceiveMulticastHash, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %81

76:                                               ; preds = %51
  %77 = load i32, i32* @RM_ReceiveMulticastHash, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %72
  %82 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %83 = load i32, i32* @STGE_HashTable0, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @CSR_WRITE_4(%struct.stge_softc* %82, i32 %83, i32 %85)
  %87 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %88 = load i32, i32* @STGE_HashTable1, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CSR_WRITE_4(%struct.stge_softc* %87, i32 %88, i32 %90)
  %92 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %93 = load i32, i32* @STGE_ReceiveMode, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @CSR_WRITE_2(%struct.stge_softc* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %81, %46
  ret void
}

declare dso_local i32 @STGE_LOCK_ASSERT(%struct.stge_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
