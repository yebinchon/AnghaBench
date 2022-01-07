; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_log_card.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_log_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_ivars = type { i64, i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Card at relative address 0x%04x%s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" added\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" card: %s\0A\00", align 1
@bus_timing_max = common dso_local global i32 0, align 4
@bus_timing_normal = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c" quirks: %b\0A\00", align 1
@MMC_QUIRKS_FMT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c" bus: %ubit, %uMHz (%s timing)\0A\00", align 1
@bus_width_1 = common dso_local global i64 0, align 8
@bus_width_4 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c" memory: %u blocks, erase sector %u blocks%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c", read-only\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mmc_ivars*, i32)* @mmc_log_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_log_card(i32 %0, %struct.mmc_ivars* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_ivars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mmc_ivars* %1, %struct.mmc_ivars** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %10 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11, i8* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @bus_timing_max, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %35, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @bus_timing_normal, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %28, i32 0, i32 5
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @isset(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %38

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %23

38:                                               ; preds = %33, %23
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MMC_QUIRKS_FMT, align 4
  %44 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @bus_width_1, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %60

52:                                               ; preds = %38
  %53 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @bus_width_4, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 4, i32 8
  br label %60

60:                                               ; preds = %52, %51
  %61 = phi i32 [ 1, %51 ], [ %59, %52 ]
  %62 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @mmc_timing_to_dtr(%struct.mmc_ivars* %62, i32 %63)
  %65 = sdiv i32 %64, 1000000
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @mmc_timing_to_string(i32 %66)
  %68 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %61, i32 %65, i8* %67)
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %71 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mmc_ivars*, %struct.mmc_ivars** %5, align 8
  %77 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %82 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %72, i32 %75, i8* %81)
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @isset(i32*, i32) #1

declare dso_local i32 @mmc_timing_to_dtr(%struct.mmc_ivars*, i32) #1

declare dso_local i8* @mmc_timing_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
