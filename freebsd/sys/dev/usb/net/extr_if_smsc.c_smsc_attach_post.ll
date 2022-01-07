; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_attach_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_smsc.c_smsc_attach_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.smsc_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"smsc_attach_post\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@SMSC_MAC_ADDRL = common dso_local global i32 0, align 4
@SMSC_MAC_ADDRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @smsc_attach_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc_attach_post(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.smsc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %7 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %8 = call %struct.smsc_softc* @uether_getsc(%struct.usb_ether* %7)
  store %struct.smsc_softc* %8, %struct.smsc_softc** %3, align 8
  %9 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %10 = call i32 @smsc_dbg_printf(%struct.smsc_softc* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %18 = call i32 @memset(i32* %16, i32 255, i32 %17)
  %19 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %20 = load i32, i32* @SMSC_MAC_ADDRL, align 4
  %21 = call i64 @smsc_read_reg(%struct.smsc_softc* %19, i32 %20, i32* %5)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %93

23:                                               ; preds = %1
  %24 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %25 = load i32, i32* @SMSC_MAC_ADDRH, align 4
  %26 = call i64 @smsc_read_reg(%struct.smsc_softc* %24, i32 %25, i32* %4)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %36 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %46 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 16
  %63 = and i32 %62, 255
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %68 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 255
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %89 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %28, %23, %1
  %94 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %95 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ETHER_IS_VALID(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %139, label %100

100:                                              ; preds = %93
  %101 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %102 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %103 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %107 = call i32 @smsc_eeprom_read(%struct.smsc_softc* %101, i32 1, i32* %105, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %100
  %111 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %112 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @ETHER_IS_VALID(i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %138, label %117

117:                                              ; preds = %110, %100
  %118 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %119 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %123 = call i32 @read_random(i32* %121, i32 %122)
  %124 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %125 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, -2
  store i32 %130, i32* %128, align 4
  %131 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %132 = getelementptr inbounds %struct.smsc_softc, %struct.smsc_softc* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, 2
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %117, %110
  br label %139

139:                                              ; preds = %138, %93
  %140 = load %struct.smsc_softc*, %struct.smsc_softc** %3, align 8
  %141 = call i32 @smsc_chip_init(%struct.smsc_softc* %140)
  ret void
}

declare dso_local %struct.smsc_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local i32 @smsc_dbg_printf(%struct.smsc_softc*, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @smsc_read_reg(%struct.smsc_softc*, i32, i32*) #1

declare dso_local i32 @ETHER_IS_VALID(i32*) #1

declare dso_local i32 @smsc_eeprom_read(%struct.smsc_softc*, i32, i32*, i32) #1

declare dso_local i32 @read_random(i32*, i32) #1

declare dso_local i32 @smsc_chip_init(%struct.smsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
