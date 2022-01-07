; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_get_plen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_get_plen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcode_info = type { i32, i32 }
%struct.fwohci_softc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.fwohci_dbch = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.fw_pkt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@tinfo = common dso_local global %struct.tcode_info* null, align 8
@FWTI_BLOCK_ASY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Unknown tcode %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid packet length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*, %struct.fwohci_dbch*, %struct.fw_pkt*)* @fwohci_get_plen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_get_plen(%struct.fwohci_softc* %0, %struct.fwohci_dbch* %1, %struct.fw_pkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fwohci_softc*, align 8
  %6 = alloca %struct.fwohci_dbch*, align 8
  %7 = alloca %struct.fw_pkt*, align 8
  %8 = alloca %struct.tcode_info*, align 8
  %9 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %5, align 8
  store %struct.fwohci_dbch* %1, %struct.fwohci_dbch** %6, align 8
  store %struct.fw_pkt* %2, %struct.fw_pkt** %7, align 8
  %10 = load %struct.tcode_info*, %struct.tcode_info** @tinfo, align 8
  %11 = load %struct.fw_pkt*, %struct.fw_pkt** %7, align 8
  %12 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %10, i64 %15
  store %struct.tcode_info* %16, %struct.tcode_info** %8, align 8
  %17 = load %struct.tcode_info*, %struct.tcode_info** %8, align 8
  %18 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load %struct.tcode_info*, %struct.tcode_info** %8, align 8
  %24 = getelementptr inbounds %struct.tcode_info, %struct.tcode_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FWTI_BLOCK_ASY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.fw_pkt*, %struct.fw_pkt** %7, align 8
  %31 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @roundup2(i32 %34, i32 4)
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %29, %3
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %46 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fw_pkt*, %struct.fw_pkt** %7, align 8
  %50 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %4, align 4
  br label %72

56:                                               ; preds = %40
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.fwohci_dbch*, %struct.fwohci_dbch** %6, align 8
  %59 = getelementptr inbounds %struct.fwohci_dbch, %struct.fwohci_dbch* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %57, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.fwohci_softc*, %struct.fwohci_softc** %5, align 8
  %65 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 -1, i32* %4, align 4
  br label %72

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %63, %44
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @roundup2(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
