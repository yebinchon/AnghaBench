; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_get_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_get_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_phy_db_entry = type { i32 }
%struct.iwm_phy_db = type { i64, i64, %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry, %struct.iwm_phy_db_entry }

@IWM_PHY_DB_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwm_phy_db_entry* (%struct.iwm_phy_db*, i32, i64)* @iwm_phy_db_get_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwm_phy_db_entry* @iwm_phy_db_get_section(%struct.iwm_phy_db* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.iwm_phy_db_entry*, align 8
  %5 = alloca %struct.iwm_phy_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.iwm_phy_db* %0, %struct.iwm_phy_db** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %9 = icmp ne %struct.iwm_phy_db* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IWM_PHY_DB_MAX, align 4
  %13 = icmp uge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  store %struct.iwm_phy_db_entry* null, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %49 [
    i32 128, label %17
    i32 129, label %20
    i32 131, label %23
    i32 130, label %36
  ]

17:                                               ; preds = %15
  %18 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %19 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %18, i32 0, i32 5
  store %struct.iwm_phy_db_entry* %19, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

20:                                               ; preds = %15
  %21 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %22 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %21, i32 0, i32 4
  store %struct.iwm_phy_db_entry* %22, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

23:                                               ; preds = %15
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %26 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store %struct.iwm_phy_db_entry* null, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

30:                                               ; preds = %23
  %31 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %32 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %31, i32 0, i32 3
  %33 = load %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.iwm_phy_db_entry, %struct.iwm_phy_db_entry* %33, i64 %34
  store %struct.iwm_phy_db_entry* %35, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

36:                                               ; preds = %15
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %39 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store %struct.iwm_phy_db_entry* null, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

43:                                               ; preds = %36
  %44 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %45 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %44, i32 0, i32 2
  %46 = load %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.iwm_phy_db_entry, %struct.iwm_phy_db_entry* %46, i64 %47
  store %struct.iwm_phy_db_entry* %48, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

49:                                               ; preds = %15
  store %struct.iwm_phy_db_entry* null, %struct.iwm_phy_db_entry** %4, align 8
  br label %50

50:                                               ; preds = %49, %43, %42, %30, %29, %20, %17, %14
  %51 = load %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry** %4, align 8
  ret %struct.iwm_phy_db_entry* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
