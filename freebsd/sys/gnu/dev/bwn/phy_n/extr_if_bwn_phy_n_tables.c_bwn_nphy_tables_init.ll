; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_tables.c_bwn_nphy_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwn_nphy_tables_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %3 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %4 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 16
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = call i32 @bwn_nphy_tables_init_rev16(%struct.bwn_mac* %9)
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 7
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %19 = call i32 @bwn_nphy_tables_init_rev7(%struct.bwn_mac* %18)
  br label %33

20:                                               ; preds = %11
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = call i32 @bwn_nphy_tables_init_rev3(%struct.bwn_mac* %27)
  br label %32

29:                                               ; preds = %20
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %31 = call i32 @bwn_nphy_tables_init_rev0(%struct.bwn_mac* %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %17
  br label %34

34:                                               ; preds = %33, %8
  ret void
}

declare dso_local i32 @bwn_nphy_tables_init_rev16(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tables_init_rev7(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tables_init_rev3(%struct.bwn_mac*) #1

declare dso_local i32 @bwn_nphy_tables_init_rev0(%struct.bwn_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
