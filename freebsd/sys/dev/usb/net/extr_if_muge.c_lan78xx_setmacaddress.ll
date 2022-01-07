; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_setmacaddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_lan78xx_setmacaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.muge_softc = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"setting mac address to %02x:%02x:%02x:%02x:%02x:%02x\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@ETH_RX_ADDRL = common dso_local global i32 0, align 4
@ETH_RX_ADDRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.muge_softc*, i32*)* @lan78xx_setmacaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_setmacaddress(%struct.muge_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.muge_softc* %0, %struct.muge_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @muge_dbg_printf(%struct.muge_softc* %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %28 = load i32, i32* @MA_OWNED, align 4
  %29 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %27, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %33, %37
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %38, %42
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  store i32 %47, i32* %6, align 4
  %48 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %49 = load i32, i32* @ETH_RX_ADDRL, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @lan78xx_write_reg(%struct.muge_softc* %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %2
  br label %67

54:                                               ; preds = %2
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %64 = load i32, i32* @ETH_RX_ADDRH, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @lan78xx_write_reg(%struct.muge_softc* %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %54, %53
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
