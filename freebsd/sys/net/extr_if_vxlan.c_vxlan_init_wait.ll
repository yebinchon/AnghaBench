; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_init_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_init_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32, i32 }

@VXLAN_FLAG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vxlint\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_softc*)* @vxlan_init_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_init_wait(%struct.vxlan_softc* %0) #0 {
  %2 = alloca %struct.vxlan_softc*, align 8
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %2, align 8
  %3 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %4 = call i32 @VXLAN_LOCK_WASSERT(%struct.vxlan_softc* %3)
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VXLAN_FLAG_INIT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %14 = load %struct.vxlan_softc*, %struct.vxlan_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vxlan_softc, %struct.vxlan_softc* %14, i32 0, i32 1
  %16 = load i32, i32* @hz, align 4
  %17 = call i32 @rm_sleep(%struct.vxlan_softc* %13, i32* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %5

18:                                               ; preds = %5
  ret void
}

declare dso_local i32 @VXLAN_LOCK_WASSERT(%struct.vxlan_softc*) #1

declare dso_local i32 @rm_sleep(%struct.vxlan_softc*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
