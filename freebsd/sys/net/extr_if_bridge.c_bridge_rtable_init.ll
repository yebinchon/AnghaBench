; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtable_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_rtable_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32, i32, i32* }

@BRIDGE_RTHASH_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_softc*)* @bridge_rtable_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_rtable_init(%struct.bridge_softc* %0) #0 {
  %2 = alloca %struct.bridge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bridge_softc* %0, %struct.bridge_softc** %2, align 8
  %4 = load i32, i32* @BRIDGE_RTHASH_SIZE, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 4, %5
  %7 = trunc i64 %6 to i32
  %8 = load i32, i32* @M_DEVBUF, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call i32* @malloc(i32 %7, i32 %8, i32 %9)
  %11 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %11, i32 0, i32 2
  store i32* %10, i32** %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BRIDGE_RTHASH_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @LIST_INIT(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %13

28:                                               ; preds = %13
  %29 = call i32 (...) @arc4random()
  %30 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bridge_softc*, %struct.bridge_softc** %2, align 8
  %33 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %32, i32 0, i32 0
  %34 = call i32 @LIST_INIT(i32* %33)
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @arc4random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
