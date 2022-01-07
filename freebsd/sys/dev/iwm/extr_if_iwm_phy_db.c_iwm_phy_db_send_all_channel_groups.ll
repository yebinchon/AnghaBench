; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_send_all_channel_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_phy_db.c_iwm_phy_db_send_all_channel_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_phy_db = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwm_phy_db_entry = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Can't SEND phy_db section %d (%d), err %d\0A\00", align 1
@IWM_DEBUG_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Sent PHY_DB HCMD, type = %d num = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_phy_db*, i32, i64)* @iwm_phy_db_send_all_channel_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_phy_db_send_all_channel_groups(%struct.iwm_phy_db* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwm_phy_db*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwm_phy_db_entry*, align 8
  store %struct.iwm_phy_db* %0, %struct.iwm_phy_db** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %61, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %11
  %16 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.iwm_phy_db_entry* @iwm_phy_db_get_section(%struct.iwm_phy_db* %16, i32 %17, i64 %18)
  store %struct.iwm_phy_db_entry* %19, %struct.iwm_phy_db_entry** %10, align 8
  %20 = load %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry** %10, align 8
  %21 = icmp ne %struct.iwm_phy_db_entry* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %15
  %25 = load %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry** %10, align 8
  %26 = getelementptr inbounds %struct.iwm_phy_db_entry, %struct.iwm_phy_db_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %61

30:                                               ; preds = %24
  %31 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry** %10, align 8
  %34 = getelementptr inbounds %struct.iwm_phy_db_entry, %struct.iwm_phy_db_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.iwm_phy_db_entry*, %struct.iwm_phy_db_entry** %10, align 8
  %37 = getelementptr inbounds %struct.iwm_phy_db_entry, %struct.iwm_phy_db_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iwm_send_phy_db_cmd(%struct.iwm_phy_db* %31, i32 %32, i32 %35, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %30
  %43 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %44 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %65

53:                                               ; preds = %30
  %54 = load %struct.iwm_phy_db*, %struct.iwm_phy_db** %5, align 8
  %55 = getelementptr inbounds %struct.iwm_phy_db, %struct.iwm_phy_db* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* @IWM_DEBUG_CMD, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @IWM_DPRINTF(%struct.TYPE_2__* %56, i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %53, %29
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %11

64:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %42, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.iwm_phy_db_entry* @iwm_phy_db_get_section(%struct.iwm_phy_db*, i32, i64) #1

declare dso_local i32 @iwm_send_phy_db_cmd(%struct.iwm_phy_db*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @IWM_DPRINTF(%struct.TYPE_2__*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
