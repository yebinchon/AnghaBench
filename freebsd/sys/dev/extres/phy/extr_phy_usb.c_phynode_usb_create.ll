; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy_usb.c_phynode_usb_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy_usb.c_phynode_usb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.phynode_usb_init_def = type { i32, i32 }
%struct.phynode_usb_sc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phynode* @phynode_usb_create(i32 %0, i32 %1, %struct.phynode_usb_init_def* %2) #0 {
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.phynode_usb_init_def*, align 8
  %8 = alloca %struct.phynode*, align 8
  %9 = alloca %struct.phynode_usb_sc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.phynode_usb_init_def* %2, %struct.phynode_usb_init_def** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.phynode_usb_init_def*, %struct.phynode_usb_init_def** %7, align 8
  %13 = getelementptr inbounds %struct.phynode_usb_init_def, %struct.phynode_usb_init_def* %12, i32 0, i32 1
  %14 = call %struct.phynode* @phynode_create(i32 %10, i32 %11, i32* %13)
  store %struct.phynode* %14, %struct.phynode** %8, align 8
  %15 = load %struct.phynode*, %struct.phynode** %8, align 8
  %16 = icmp eq %struct.phynode* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.phynode* null, %struct.phynode** %4, align 8
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.phynode*, %struct.phynode** %8, align 8
  %20 = call %struct.phynode_usb_sc* @phynode_get_softc(%struct.phynode* %19)
  store %struct.phynode_usb_sc* %20, %struct.phynode_usb_sc** %9, align 8
  %21 = load %struct.phynode_usb_init_def*, %struct.phynode_usb_init_def** %7, align 8
  %22 = getelementptr inbounds %struct.phynode_usb_init_def, %struct.phynode_usb_init_def* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.phynode_usb_sc*, %struct.phynode_usb_sc** %9, align 8
  %25 = getelementptr inbounds %struct.phynode_usb_sc, %struct.phynode_usb_sc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.phynode*, %struct.phynode** %8, align 8
  store %struct.phynode* %26, %struct.phynode** %4, align 8
  br label %27

27:                                               ; preds = %18, %17
  %28 = load %struct.phynode*, %struct.phynode** %4, align 8
  ret %struct.phynode* %28
}

declare dso_local %struct.phynode* @phynode_create(i32, i32, i32*) #1

declare dso_local %struct.phynode_usb_sc* @phynode_get_softc(%struct.phynode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
