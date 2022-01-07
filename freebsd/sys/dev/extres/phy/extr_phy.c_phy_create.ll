; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy.c_phy_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy.c_phy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i64, %struct.phynode*, i32 }
%struct.phynode = type { i32, i32 }

@M_PHY = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.phynode*, i32)* @phy_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @phy_create(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca %struct.phynode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy*, align 8
  store %struct.phynode* %0, %struct.phynode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @PHY_TOPO_ASSERT()
  %7 = load i32, i32* @M_PHY, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.phy* @malloc(i32 24, i32 %7, i32 %10)
  store %struct.phy* %11, %struct.phy** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.phy*, %struct.phy** %5, align 8
  %14 = getelementptr inbounds %struct.phy, %struct.phy* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.phynode*, %struct.phynode** %3, align 8
  %16 = load %struct.phy*, %struct.phy** %5, align 8
  %17 = getelementptr inbounds %struct.phy, %struct.phy* %16, i32 0, i32 1
  store %struct.phynode* %15, %struct.phynode** %17, align 8
  %18 = load %struct.phy*, %struct.phy** %5, align 8
  %19 = getelementptr inbounds %struct.phy, %struct.phy* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.phynode*, %struct.phynode** %3, align 8
  %21 = call i32 @PHYNODE_XLOCK(%struct.phynode* %20)
  %22 = load %struct.phynode*, %struct.phynode** %3, align 8
  %23 = getelementptr inbounds %struct.phynode, %struct.phynode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.phynode*, %struct.phynode** %3, align 8
  %27 = getelementptr inbounds %struct.phynode, %struct.phynode* %26, i32 0, i32 0
  %28 = load %struct.phy*, %struct.phy** %5, align 8
  %29 = load i32, i32* @link, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.phy* %28, i32 %29)
  %31 = load %struct.phynode*, %struct.phynode** %3, align 8
  %32 = call i32 @PHYNODE_UNLOCK(%struct.phynode* %31)
  %33 = load %struct.phy*, %struct.phy** %5, align 8
  ret %struct.phy* %33
}

declare dso_local i32 @PHY_TOPO_ASSERT(...) #1

declare dso_local %struct.phy* @malloc(i32, i32, i32) #1

declare dso_local i32 @PHYNODE_XLOCK(%struct.phynode*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.phy*, i32) #1

declare dso_local i32 @PHYNODE_UNLOCK(%struct.phynode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
