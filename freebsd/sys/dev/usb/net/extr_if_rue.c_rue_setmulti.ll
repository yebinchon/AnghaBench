; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_rue.c_rue_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.rue_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@RUE_RCR = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RUE_RCR_AAM = common dso_local global i32 0, align 4
@RUE_RCR_AAP = common dso_local global i32 0, align 4
@RUE_RCR_AM = common dso_local global i32 0, align 4
@RUE_MAR0 = common dso_local global i32 0, align 4
@RUE_MAR4 = common dso_local global i32 0, align 4
@rue_hash_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @rue_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rue_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.rue_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.rue_softc* @uether_getsc(%struct.usb_ether* %8)
  store %struct.rue_softc* %9, %struct.rue_softc** %3, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @RUE_LOCK_ASSERT(%struct.rue_softc* %13, i32 %14)
  %16 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %17 = load i32, i32* @RUE_RCR, align 4
  %18 = call i32 @rue_csr_read_2(%struct.rue_softc* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_ALLMULTI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_PROMISC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %25, %1
  %33 = load i32, i32* @RUE_RCR_AAM, align 4
  %34 = load i32, i32* @RUE_RCR_AAP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @RUE_RCR_AM, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %43 = load i32, i32* @RUE_RCR, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @rue_csr_write_2(%struct.rue_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %47 = load i32, i32* @RUE_MAR0, align 4
  %48 = call i32 @rue_csr_write_4(%struct.rue_softc* %46, i32 %47, i32 -1)
  %49 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %50 = load i32, i32* @RUE_MAR4, align 4
  %51 = call i32 @rue_csr_write_4(%struct.rue_softc* %49, i32 %50, i32 -1)
  br label %95

52:                                               ; preds = %25
  %53 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %54 = load i32, i32* @RUE_MAR0, align 4
  %55 = call i32 @rue_csr_write_4(%struct.rue_softc* %53, i32 %54, i32 0)
  %56 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %57 = load i32, i32* @RUE_MAR4, align 4
  %58 = call i32 @rue_csr_write_4(%struct.rue_softc* %56, i32 %57, i32 0)
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load i32, i32* @rue_hash_maddr, align 4
  %61 = bitcast [2 x i32]* %6 to i32**
  %62 = call i32 @if_foreach_llmaddr(%struct.ifnet* %59, i32 %60, i32** %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i32, i32* @RUE_RCR_AM, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %74

69:                                               ; preds = %52
  %70 = load i32, i32* @RUE_RCR_AM, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* @RUE_RCR_AAM, align 4
  %76 = load i32, i32* @RUE_RCR_AAP, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %82 = load i32, i32* @RUE_RCR, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @rue_csr_write_2(%struct.rue_softc* %81, i32 %82, i32 %83)
  %85 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %86 = load i32, i32* @RUE_MAR0, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rue_csr_write_4(%struct.rue_softc* %85, i32 %86, i32 %88)
  %90 = load %struct.rue_softc*, %struct.rue_softc** %3, align 8
  %91 = load i32, i32* @RUE_MAR4, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @rue_csr_write_4(%struct.rue_softc* %90, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %74, %32
  ret void
}

declare dso_local %struct.rue_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @RUE_LOCK_ASSERT(%struct.rue_softc*, i32) #1

declare dso_local i32 @rue_csr_read_2(%struct.rue_softc*, i32) #1

declare dso_local i32 @rue_csr_write_2(%struct.rue_softc*, i32, i32) #1

declare dso_local i32 @rue_csr_write_4(%struct.rue_softc*, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
