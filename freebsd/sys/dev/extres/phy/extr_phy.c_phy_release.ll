; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy.c_phy_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy.c_phy_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.phynode* }
%struct.phynode = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Attempt to access unreferenced phy.\0A\00", align 1
@link = common dso_local global i32 0, align 4
@M_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @phy_release(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.phynode*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = load %struct.phynode*, %struct.phynode** %5, align 8
  store %struct.phynode* %6, %struct.phynode** %3, align 8
  %7 = load %struct.phynode*, %struct.phynode** %3, align 8
  %8 = getelementptr inbounds %struct.phynode, %struct.phynode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (...) @PHY_TOPO_SLOCK()
  br label %14

14:                                               ; preds = %19, %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.phynode*, %struct.phynode** %3, align 8
  %21 = call i32 @phynode_disable(%struct.phynode* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load %struct.phynode*, %struct.phynode** %3, align 8
  %28 = call i32 @PHYNODE_XLOCK(%struct.phynode* %27)
  %29 = load %struct.phynode*, %struct.phynode** %3, align 8
  %30 = getelementptr inbounds %struct.phynode, %struct.phynode* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = load i32, i32* @link, align 4
  %33 = call i32 @TAILQ_REMOVE(i32* %30, %struct.TYPE_5__* %31, i32 %32)
  %34 = load %struct.phynode*, %struct.phynode** %3, align 8
  %35 = getelementptr inbounds %struct.phynode, %struct.phynode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.phynode*, %struct.phynode** %3, align 8
  %39 = call i32 @PHYNODE_UNLOCK(%struct.phynode* %38)
  %40 = call i32 (...) @PHY_TOPO_UNLOCK()
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = load i32, i32* @M_PHY, align 4
  %43 = call i32 @free(%struct.TYPE_5__* %41, i32 %42)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PHY_TOPO_SLOCK(...) #1

declare dso_local i32 @phynode_disable(%struct.phynode*) #1

declare dso_local i32 @PHYNODE_XLOCK(%struct.phynode*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @PHYNODE_UNLOCK(%struct.phynode*) #1

declare dso_local i32 @PHY_TOPO_UNLOCK(...) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
