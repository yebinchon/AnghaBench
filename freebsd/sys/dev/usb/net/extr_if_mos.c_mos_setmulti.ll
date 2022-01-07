; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_mos.c_mos_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.mos_softc = type { i32 }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@MOS_CTL = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@mos_hash_maddr = common dso_local global i32 0, align 4
@MOS_CTL_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @mos_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mos_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.mos_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.mos_softc* @uether_getsc(%struct.usb_ether* %8)
  store %struct.mos_softc* %9, %struct.mos_softc** %3, align 8
  %10 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %11 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %10)
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  store i32 0, i32* %7, align 4
  %13 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @MOS_LOCK_ASSERT(%struct.mos_softc* %13, i32 %14)
  %16 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %17 = load i32, i32* @MOS_CTL, align 4
  %18 = call i32 @mos_reg_read_1(%struct.mos_softc* %16, i32 %17)
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
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %1
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = load i32, i32* @mos_hash_maddr, align 4
  %36 = bitcast [8 x i32]* %6 to i32**
  %37 = call i32 @if_foreach_llmaddr(%struct.ifnet* %34, i32 %35, i32** %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* @MOS_CTL_ALLMULTI, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %45 = load i32, i32* @MOS_CTL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mos_reg_write_1(%struct.mos_softc* %44, i32 %45, i32 %46)
  br label %60

48:                                               ; preds = %33
  %49 = load i32, i32* @MOS_CTL_ALLMULTI, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %54 = bitcast [8 x i32]* %6 to i8*
  %55 = call i32 @mos_write_mcast(%struct.mos_softc* %53, i8* %54)
  %56 = load %struct.mos_softc*, %struct.mos_softc** %3, align 8
  %57 = load i32, i32* @MOS_CTL, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @mos_reg_write_1(%struct.mos_softc* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %40
  ret void
}

declare dso_local %struct.mos_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MOS_LOCK_ASSERT(%struct.mos_softc*, i32) #1

declare dso_local i32 @mos_reg_read_1(%struct.mos_softc*, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #1

declare dso_local i32 @mos_reg_write_1(%struct.mos_softc*, i32, i32) #1

declare dso_local i32 @mos_write_mcast(%struct.mos_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
