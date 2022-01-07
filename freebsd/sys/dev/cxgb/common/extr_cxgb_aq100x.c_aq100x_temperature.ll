; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_temperature.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_aq100x.c_aq100x_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_DEV_VEND1 = common dso_local global i32 0, align 4
@AQ_THERMAL2 = common dso_local global i32 0, align 4
@AQ_THERMAL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @aq100x_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq100x_temperature(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  %5 = load %struct.cphy*, %struct.cphy** %3, align 8
  %6 = load i32, i32* @MDIO_DEV_VEND1, align 4
  %7 = load i32, i32* @AQ_THERMAL2, align 4
  %8 = call i64 @mdio_read(%struct.cphy* %5, i32 %6, i32 %7, i32* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 65535
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10, %1
  store i32 65535, i32* %2, align 4
  br label %30

18:                                               ; preds = %13
  %19 = load %struct.cphy*, %struct.cphy** %3, align 8
  %20 = load i32, i32* @MDIO_DEV_VEND1, align 4
  %21 = load i32, i32* @AQ_THERMAL1, align 4
  %22 = call i64 @mdio_read(%struct.cphy* %19, i32 %20, i32 %21, i32* %4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 65535, i32* %2, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = lshr i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %24, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
