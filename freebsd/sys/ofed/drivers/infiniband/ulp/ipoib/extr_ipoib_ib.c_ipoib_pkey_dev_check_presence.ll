; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_pkey_dev_check_presence.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_pkey_dev_check_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*)* @ipoib_pkey_dev_check_presence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_pkey_dev_check_presence(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ib_find_pkey(i32 %6, i32 %9, i32 %12, i32* %3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 0
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %20, %15
  ret void
}

declare dso_local i64 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
