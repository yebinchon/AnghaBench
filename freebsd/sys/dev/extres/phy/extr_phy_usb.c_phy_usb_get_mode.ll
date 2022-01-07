; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy_usb.c_phy_usb_get_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy_usb.c_phy_usb_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.phynode* }
%struct.phynode = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"Attempt to access unreferenced phy.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_usb_get_mode(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phynode*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.phynode*, %struct.phynode** %8, align 8
  store %struct.phynode* %9, %struct.phynode** %6, align 8
  %10 = load %struct.phynode*, %struct.phynode** %6, align 8
  %11 = getelementptr inbounds %struct.phynode, %struct.phynode* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @PHY_TOPO_SLOCK()
  %17 = load %struct.phynode*, %struct.phynode** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @phynode_usb_get_mode(%struct.phynode* %17, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = call i32 (...) @PHY_TOPO_UNLOCK()
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PHY_TOPO_SLOCK(...) #1

declare dso_local i32 @phynode_usb_get_mode(%struct.phynode*, i32*) #1

declare dso_local i32 @PHY_TOPO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
