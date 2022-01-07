; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_aue.c_aue_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.aue_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@AUE_CTL0 = common dso_local global i32 0, align 4
@AUE_CTL0_ALLMULTI = common dso_local global i32 0, align 4
@aue_hash_maddr = common dso_local global i32 0, align 4
@AUE_MAR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @aue_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aue_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.aue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.aue_softc* @uether_getsc(%struct.usb_ether* %7)
  store %struct.aue_softc* %8, %struct.aue_softc** %3, align 8
  %9 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %10 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %9)
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @AUE_LOCK_ASSERT(%struct.aue_softc* %12, i32 %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %16 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_ALLMULTI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFF_PROMISC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21, %1
  %29 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %30 = load i32, i32* @AUE_CTL0, align 4
  %31 = load i32, i32* @AUE_CTL0_ALLMULTI, align 4
  %32 = call i32 @AUE_SETBIT(%struct.aue_softc* %29, i32 %30, i32 %31)
  br label %59

33:                                               ; preds = %21
  %34 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %35 = load i32, i32* @AUE_CTL0, align 4
  %36 = load i32, i32* @AUE_CTL0_ALLMULTI, align 4
  %37 = call i32 @AUE_CLRBIT(%struct.aue_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = load i32, i32* @aue_hash_maddr, align 4
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %41 = call i32 @if_foreach_llmaddr(%struct.ifnet* %38, i32 %39, i32* %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %56, %33
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 8
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.aue_softc*, %struct.aue_softc** %3, align 8
  %47 = load i64, i64* @AUE_MAR0, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @aue_csr_write_1(%struct.aue_softc* %46, i64 %50, i32 %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %42

59:                                               ; preds = %28, %42
  ret void
}

declare dso_local %struct.aue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @AUE_LOCK_ASSERT(%struct.aue_softc*, i32) #1

declare dso_local i32 @AUE_SETBIT(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @AUE_CLRBIT(%struct.aue_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #1

declare dso_local i32 @aue_csr_write_1(%struct.aue_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
