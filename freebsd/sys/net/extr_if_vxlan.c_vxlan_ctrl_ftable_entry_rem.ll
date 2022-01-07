; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_ftable_entry_rem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vxlan.c_vxlan_ctrl_ftable_entry_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_softc = type { i32 }
%struct.ifvxlancmd = type { i32 }
%struct.vxlan_ftable_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_softc*, i8*)* @vxlan_ctrl_ftable_entry_rem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_ctrl_ftable_entry_rem(%struct.vxlan_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.vxlan_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifvxlancmd*, align 8
  %6 = alloca %struct.vxlan_ftable_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.vxlan_softc* %0, %struct.vxlan_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ifvxlancmd*
  store %struct.ifvxlancmd* %9, %struct.ifvxlancmd** %5, align 8
  %10 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %11 = call i32 @VXLAN_WLOCK(%struct.vxlan_softc* %10)
  %12 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %13 = load %struct.ifvxlancmd*, %struct.ifvxlancmd** %5, align 8
  %14 = getelementptr inbounds %struct.ifvxlancmd, %struct.ifvxlancmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.vxlan_ftable_entry* @vxlan_ftable_entry_lookup(%struct.vxlan_softc* %12, i32 %15)
  store %struct.vxlan_ftable_entry* %16, %struct.vxlan_ftable_entry** %6, align 8
  %17 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %18 = icmp ne %struct.vxlan_ftable_entry* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %21 = load %struct.vxlan_ftable_entry*, %struct.vxlan_ftable_entry** %6, align 8
  %22 = call i32 @vxlan_ftable_entry_destroy(%struct.vxlan_softc* %20, %struct.vxlan_ftable_entry* %21)
  store i32 0, i32* %7, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.vxlan_softc*, %struct.vxlan_softc** %3, align 8
  %27 = call i32 @VXLAN_WUNLOCK(%struct.vxlan_softc* %26)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @VXLAN_WLOCK(%struct.vxlan_softc*) #1

declare dso_local %struct.vxlan_ftable_entry* @vxlan_ftable_entry_lookup(%struct.vxlan_softc*, i32) #1

declare dso_local i32 @vxlan_ftable_entry_destroy(%struct.vxlan_softc*, %struct.vxlan_ftable_entry*) #1

declare dso_local i32 @VXLAN_WUNLOCK(%struct.vxlan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
