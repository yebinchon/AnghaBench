; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_esp_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_esp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32 }

@ALS_ESP_RST = common dso_local global i32 0, align 4
@ALS_ESP_RD_STATUS8 = common dso_local global i32 0, align 4
@ALS_ESP_RD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"als_esp_reset timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @als_esp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_esp_reset(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %7 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %8 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ALS_ESP_RST, align 4
  %14 = call i32 @bus_space_write_1(i32 %9, i32 %12, i32 %13, i32 1)
  %15 = call i32 @DELAY(i32 10)
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ALS_ESP_RST, align 4
  %23 = call i32 @bus_space_write_1(i32 %18, i32 %21, i32 %22, i32 0)
  %24 = call i32 @DELAY(i32 30)
  store i32 1000, i32* %4, align 4
  br label %25

25:                                               ; preds = %52, %1
  %26 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %27 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ALS_ESP_RD_STATUS8, align 4
  %33 = call i32 @bus_space_read_1(i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %25
  %38 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ALS_ESP_RD_DATA, align 4
  %45 = call i32 @bus_space_read_1(i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 170
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %65

49:                                               ; preds = %37
  br label %56

50:                                               ; preds = %25
  %51 = call i32 @DELAY(i32 20)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %25, label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %61 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %56
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %48
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_space_read_1(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
