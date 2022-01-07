; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_hcb_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_hcb_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_hcb = type { i32 }
%struct.pvscsi_softc = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pvscsi_hcb* (%struct.pvscsi_softc*)* @pvscsi_hcb_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pvscsi_hcb* @pvscsi_hcb_get(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  %3 = alloca %struct.pvscsi_hcb*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %4 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %4, i32 0, i32 1
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* %5, i32 %6)
  %8 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %8, i32 0, i32 0
  %10 = call %struct.pvscsi_hcb* @SLIST_FIRST(i32* %9)
  store %struct.pvscsi_hcb* %10, %struct.pvscsi_hcb** %3, align 8
  %11 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  %12 = icmp ne %struct.pvscsi_hcb* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %14, i32 0, i32 0
  %16 = load i32, i32* @links, align 4
  %17 = call i32 @SLIST_REMOVE_HEAD(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %3, align 8
  ret %struct.pvscsi_hcb* %19
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.pvscsi_hcb* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
