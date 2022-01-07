; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_tbl_write_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_tbl_write_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy }
%struct.bwi_phy = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"phy_tbl_ctrl %d phy_tbl_data_lo %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*, i32, i32)* @bwi_tbl_write_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_tbl_write_2(%struct.bwi_mac* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bwi_phy*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 0
  store %struct.bwi_phy* %9, %struct.bwi_phy** %7, align 8
  %10 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %11 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %16 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi i1 [ false, %3 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %23 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %26 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @KASSERT(i32 %21, i8* %28)
  %30 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %31 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %32 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @PHY_WRITE(%struct.bwi_mac* %30, i64 %33, i32 %34)
  %36 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %37 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %38 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @PHY_WRITE(%struct.bwi_mac* %36, i64 %39, i32 %40)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
