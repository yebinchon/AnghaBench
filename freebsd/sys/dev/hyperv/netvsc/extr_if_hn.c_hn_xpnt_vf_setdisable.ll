; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_setdisable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_setdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.TYPE_2__*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@HN_RX_FLAG_XPNT_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*, i32)* @hn_xpnt_vf_setdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_xpnt_vf_setdisable(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %7 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %6)
  %8 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %8, i32 0, i32 2
  %10 = call i32 @rm_wlock(i32* %9)
  %11 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %14 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %21 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %20, i32 0, i32 3
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %24 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %23, i32 0, i32 2
  %25 = call i32 @rm_wunlock(i32* %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %44, %22
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %29 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32, i32* @HN_RX_FLAG_XPNT_VF, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %36 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %34
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %26

47:                                               ; preds = %26
  ret void
}

declare dso_local i32 @HN_LOCK_ASSERT(%struct.hn_softc*) #1

declare dso_local i32 @rm_wlock(i32*) #1

declare dso_local i32 @rm_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
