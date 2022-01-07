; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_write32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32 }
%struct.zyd_pair = type { i8*, i8* }

@ZYD_CMD_IOWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*, i32, i32)* @zyd_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_write32(%struct.zyd_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zyd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.zyd_pair], align 16
  store %struct.zyd_softc* %0, %struct.zyd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ZYD_REG32_HI(i32 %8)
  %10 = call i8* @htole16(i32 %9)
  %11 = getelementptr inbounds [2 x %struct.zyd_pair], [2 x %struct.zyd_pair]* %7, i64 0, i64 0
  %12 = getelementptr inbounds %struct.zyd_pair, %struct.zyd_pair* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 16
  %15 = call i8* @htole16(i32 %14)
  %16 = getelementptr inbounds [2 x %struct.zyd_pair], [2 x %struct.zyd_pair]* %7, i64 0, i64 0
  %17 = getelementptr inbounds %struct.zyd_pair, %struct.zyd_pair* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 16
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ZYD_REG32_LO(i32 %18)
  %20 = call i8* @htole16(i32 %19)
  %21 = getelementptr inbounds [2 x %struct.zyd_pair], [2 x %struct.zyd_pair]* %7, i64 0, i64 1
  %22 = getelementptr inbounds %struct.zyd_pair, %struct.zyd_pair* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 65535
  %25 = call i8* @htole16(i32 %24)
  %26 = getelementptr inbounds [2 x %struct.zyd_pair], [2 x %struct.zyd_pair]* %7, i64 0, i64 1
  %27 = getelementptr inbounds %struct.zyd_pair, %struct.zyd_pair* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 16
  %28 = load %struct.zyd_softc*, %struct.zyd_softc** %4, align 8
  %29 = load i32, i32* @ZYD_CMD_IOWR, align 4
  %30 = getelementptr inbounds [2 x %struct.zyd_pair], [2 x %struct.zyd_pair]* %7, i64 0, i64 0
  %31 = call i32 @zyd_cmd(%struct.zyd_softc* %28, i32 %29, %struct.zyd_pair* %30, i32 32, i32* null, i32 0, i32 0)
  ret i32 %31
}

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @ZYD_REG32_HI(i32) #1

declare dso_local i32 @ZYD_REG32_LO(i32) #1

declare dso_local i32 @zyd_cmd(%struct.zyd_softc*, i32, %struct.zyd_pair*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
