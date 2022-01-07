; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_tbl_write_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwiphy.c_bwi_tbl_write_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_phy }
%struct.bwi_phy = type { i64, i64, i64 }

@.str = private unnamed_addr constant [54 x i8] c"phy_tbl_data_lo %d phy_tbl_data_hi %d phy_tbl_ctrl %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*, i32, i32)* @bwi_tbl_write_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_tbl_write_4(%struct.bwi_mac* %0, i32 %1, i32 %2) #0 {
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
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %16 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %21 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14, %3
  %25 = phi i1 [ false, %14 ], [ false, %3 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %28 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %31 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %34 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @KASSERT(i32 %26, i8* %36)
  %38 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %39 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %40 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @PHY_WRITE(%struct.bwi_mac* %38, i64 %41, i32 %42)
  %44 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %45 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %46 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 16
  %50 = call i32 @PHY_WRITE(%struct.bwi_mac* %44, i64 %47, i32 %49)
  %51 = load %struct.bwi_mac*, %struct.bwi_mac** %4, align 8
  %52 = load %struct.bwi_phy*, %struct.bwi_phy** %7, align 8
  %53 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 65535
  %57 = call i32 @PHY_WRITE(%struct.bwi_mac* %51, i64 %54, i32 %56)
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
