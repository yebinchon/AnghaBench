; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_setenable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xpnt_vf_setenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@HN_RX_FLAG_XPNT_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_xpnt_vf_setenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_xpnt_vf_setenable(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %4 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %5 = call i32 @HN_LOCK_ASSERT(%struct.hn_softc* %4)
  %6 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %7 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %6, i32 0, i32 2
  %8 = call i32 @rm_wlock(i32* %7)
  %9 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %10 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 2
  %16 = call i32 @rm_wunlock(i32* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i32, i32* @HN_RX_FLAG_XPNT_VF, align 4
  %25 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %24
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %17

37:                                               ; preds = %17
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
