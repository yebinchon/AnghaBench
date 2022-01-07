; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_setscanopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_setscanopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32 }
%struct.ipw_scan_options = type { i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"Scan options: mask 0x%x flags 0x%x\0A\00", align 1
@IPW_CMD_SET_SCAN_OPTIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_softc*, i32, i32)* @ipw_setscanopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_setscanopts(%struct.ipw_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipw_scan_options, align 8
  store %struct.ipw_softc* %0, %struct.ipw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @DPRINTF(i8* %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @htole32(i32 %13)
  %15 = getelementptr inbounds %struct.ipw_scan_options, %struct.ipw_scan_options* %7, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @htole32(i32 %16)
  %18 = getelementptr inbounds %struct.ipw_scan_options, %struct.ipw_scan_options* %7, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load %struct.ipw_softc*, %struct.ipw_softc** %4, align 8
  %20 = load i32, i32* @IPW_CMD_SET_SCAN_OPTIONS, align 4
  %21 = call i32 @ipw_cmd(%struct.ipw_softc* %19, i32 %20, %struct.ipw_scan_options* %7, i32 16)
  ret i32 %21
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @ipw_cmd(%struct.ipw_softc*, i32, %struct.ipw_scan_options*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
