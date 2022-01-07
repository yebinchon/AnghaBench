; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy.c_phynode_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/extres/phy/extr_phy.c_phynode_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phynode_enable(%struct.phynode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phynode*, align 8
  %4 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %3, align 8
  %5 = call i32 (...) @PHY_TOPO_ASSERT()
  %6 = load %struct.phynode*, %struct.phynode** %3, align 8
  %7 = call i32 @PHYNODE_XLOCK(%struct.phynode* %6)
  %8 = load %struct.phynode*, %struct.phynode** %3, align 8
  %9 = getelementptr inbounds %struct.phynode, %struct.phynode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.phynode*, %struct.phynode** %3, align 8
  %14 = call i32 @PHYNODE_ENABLE(%struct.phynode* %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.phynode*, %struct.phynode** %3, align 8
  %19 = call i32 @PHYNODE_UNLOCK(%struct.phynode* %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load %struct.phynode*, %struct.phynode** %3, align 8
  %24 = getelementptr inbounds %struct.phynode, %struct.phynode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.phynode*, %struct.phynode** %3, align 8
  %28 = call i32 @PHYNODE_UNLOCK(%struct.phynode* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @PHY_TOPO_ASSERT(...) #1

declare dso_local i32 @PHYNODE_XLOCK(%struct.phynode*) #1

declare dso_local i32 @PHYNODE_ENABLE(%struct.phynode*, i32) #1

declare dso_local i32 @PHYNODE_UNLOCK(%struct.phynode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
