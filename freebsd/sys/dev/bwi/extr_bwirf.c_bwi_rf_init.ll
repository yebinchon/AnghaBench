; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf }
%struct.bwi_rf = type { i64, i32, i32 }

@BWI_RF_T_BCM2060 = common dso_local global i64 0, align 8
@BWI_RF_F_INITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_init(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_rf*, align 8
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %4 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %4, i32 0, i32 0
  store %struct.bwi_rf* %5, %struct.bwi_rf** %3, align 8
  %6 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %7 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BWI_RF_T_BCM2060, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %14 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BWI_RF_F_INITED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %21 = load %struct.bwi_rf*, %struct.bwi_rf** %3, align 8
  %22 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @RF_WRITE(%struct.bwi_mac* %20, i32 120, i32 %23)
  br label %28

25:                                               ; preds = %12
  %26 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %27 = call i32 @bwi_rf_init_bcm2050(%struct.bwi_mac* %26)
  br label %28

28:                                               ; preds = %25, %19
  br label %29

29:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bwi_rf_init_bcm2050(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
