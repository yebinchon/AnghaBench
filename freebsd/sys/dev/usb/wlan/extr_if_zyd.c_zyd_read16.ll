; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_read16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32 }
%struct.zyd_pair = type { i32 }

@ZYD_CMD_IORD = common dso_local global i32 0, align 4
@ZYD_CMD_FLAG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*, i32, i32*)* @zyd_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_read16(%struct.zyd_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.zyd_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zyd_pair, align 4
  %8 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @htole16(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.zyd_softc*, %struct.zyd_softc** %4, align 8
  %12 = load i32, i32* @ZYD_CMD_IORD, align 4
  %13 = load i32, i32* @ZYD_CMD_FLAG_READ, align 4
  %14 = call i32 @zyd_cmd(%struct.zyd_softc* %11, i32 %12, i32* %5, i32 4, %struct.zyd_pair* %7, i32 4, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.zyd_pair, %struct.zyd_pair* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16toh(i32 %19)
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @zyd_cmd(%struct.zyd_softc*, i32, i32*, i32, %struct.zyd_pair*, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
