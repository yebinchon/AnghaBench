; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_phy_db = type { i32, i32, %struct.iwm_phy_db*, %struct.iwm_phy_db* }

@IWM_PHY_DB_CFG = common dso_local global i32 0, align 4
@IWM_PHY_DB_CALIB_NCH = common dso_local global i32 0, align 4
@IWM_PHY_DB_CALIB_CHG_PAPD = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@IWM_PHY_DB_CALIB_CHG_TXP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwm_phy_db_free(%struct.iwm_phy_db* %0) #0 {
  %2 = alloca %struct.iwm_phy_db*, align 8
  %3 = alloca i32, align 4
  store %struct.iwm_phy_db* %0, %struct.iwm_phy_db** %2, align 8
  %4 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %5 = icmp ne %struct.iwm_phy_db* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %69

7:                                                ; preds = %1
  %8 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %9 = load i32, i32* @IWM_PHY_DB_CFG, align 4
  %10 = call i32 @iwm_phy_db_free_section(%struct.iwm_phy_db* %8, i32 %9, i32 0)
  %11 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %12 = load i32, i32* @IWM_PHY_DB_CALIB_NCH, align 4
  %13 = call i32 @iwm_phy_db_free_section(%struct.iwm_phy_db* %11, i32 %12, i32 0)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %7
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %17 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %22 = load i32, i32* @IWM_PHY_DB_CALIB_CHG_PAPD, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @iwm_phy_db_free_section(%struct.iwm_phy_db* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %30 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %29, i32 0, i32 3
  %31 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %30, align 8
  %32 = icmp ne %struct.iwm_phy_db* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %35 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %34, i32 0, i32 3
  %36 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %35, align 8
  %37 = load i32, i32* @M_DEVBUF, align 4
  %38 = call i32 @free(%struct.iwm_phy_db* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %43 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %48 = load i32, i32* @IWM_PHY_DB_CALIB_CHG_TXP, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @iwm_phy_db_free_section(%struct.iwm_phy_db* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %56 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %55, i32 0, i32 2
  %57 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %56, align 8
  %58 = icmp ne %struct.iwm_phy_db* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %61 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %60, i32 0, i32 2
  %62 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %61, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = call i32 @free(%struct.iwm_phy_db* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %2, align 8
  %67 = load i32, i32* @M_DEVBUF, align 4
  %68 = call i32 @free(%struct.iwm_phy_db* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %6
  ret void
}

declare dso_local i32 @iwm_phy_db_free_section(%struct.iwm_phy_db*, i32, i32) #1

declare dso_local i32 @free(%struct.iwm_phy_db*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
