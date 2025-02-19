; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_isused.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_lo_isused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf }
%struct.bwi_rf = type { i32, %struct.bwi_rf_lo* }
%struct.bwi_rf_lo = type { i32 }

@BWI_RFLO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"idx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*, %struct.bwi_rf_lo*)* @bwi_rf_lo_isused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_rf_lo_isused(%struct.bwi_mac* %0, %struct.bwi_rf_lo* %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_rf_lo*, align 8
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store %struct.bwi_rf_lo* %1, %struct.bwi_rf_lo** %4, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 0
  store %struct.bwi_rf* %8, %struct.bwi_rf** %5, align 8
  %9 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %4, align 8
  %10 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %11 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %10, i32 0, i32 1
  %12 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %11, align 8
  %13 = ptrtoint %struct.bwi_rf_lo* %9 to i64
  %14 = ptrtoint %struct.bwi_rf_lo* %12 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @BWI_RFLO_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ false, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %26, i8* %29)
  %31 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %32 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @isset(i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @isset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
