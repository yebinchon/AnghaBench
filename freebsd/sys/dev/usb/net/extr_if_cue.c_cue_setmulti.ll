; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_cue.c_cue_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.cue_softc = type { i32 }
%struct.ifnet = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@CUE_CMD_WRITESRAM = common dso_local global i32 0, align 4
@CUE_MCAST_TABLE_ADDR = common dso_local global i32 0, align 4
@cue_hash_maddr = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @cue_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cue_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.cue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.cue_softc* @uether_getsc(%struct.usb_ether* %8)
  store %struct.cue_softc* %9, %struct.cue_softc** %3, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @CUE_LOCK_ASSERT(%struct.cue_softc* %13, i32 %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_ALLMULTI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IFF_PROMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22, %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %37, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %35
  store i32 255, i32* %36, align 4
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %42 = load i32, i32* @CUE_CMD_WRITESRAM, align 4
  %43 = load i32, i32* @CUE_MCAST_TABLE_ADDR, align 4
  %44 = bitcast [8 x i32]* %7 to i32**
  %45 = call i32 @cue_mem(%struct.cue_softc* %41, i32 %42, i32 %43, i32** %44, i32 8)
  br label %77

46:                                               ; preds = %22
  %47 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %48 = load i32, i32* @cue_hash_maddr, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %50 = call i32 @if_foreach_llmaddr(%struct.ifnet* %47, i32 %48, i32* %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_BROADCAST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %46
  %58 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %59 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cue_mchash(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, 7
  %64 = shl i32 1, %63
  %65 = load i32, i32* %5, align 4
  %66 = ashr i32 %65, 3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %57, %46
  %72 = load %struct.cue_softc*, %struct.cue_softc** %3, align 8
  %73 = load i32, i32* @CUE_CMD_WRITESRAM, align 4
  %74 = load i32, i32* @CUE_MCAST_TABLE_ADDR, align 4
  %75 = bitcast [8 x i32]* %7 to i32**
  %76 = call i32 @cue_mem(%struct.cue_softc* %72, i32 %73, i32 %74, i32** %75, i32 8)
  br label %77

77:                                               ; preds = %71, %40
  ret void
}

declare dso_local %struct.cue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @CUE_LOCK_ASSERT(%struct.cue_softc*, i32) #1

declare dso_local i32 @cue_mem(%struct.cue_softc*, i32, i32, i32**, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @cue_mchash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
