; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_delay_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_config_delay_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32, i32, i8** }
%struct.TYPE_3__ = type { i32 }

@IXGBE_FC_PAUSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_config_delay_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_config_delay_values(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %21 [
    i32 131, label %17
    i32 130, label %17
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %1, %1, %1, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @IXGBE_DV_X540(i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @IXGBE_DV(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @IXGBE_BT2KB(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = call i32 @IXGBE_RXPBSIZE(i32 0)
  %31 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %30)
  %32 = ashr i32 %31, 10
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %48 [
    i32 131, label %45
    i32 130, label %45
    i32 128, label %45
    i32 129, label %45
  ]

45:                                               ; preds = %25, %25, %25, %25
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @IXGBE_LOW_DV_X540(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %25
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @IXGBE_LOW_DV(i32 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %7, align 4
  %53 = call i8* @IXGBE_BT2KB(i32 %52)
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %53, i8** %58, align 8
  %59 = load i32, i32* @IXGBE_FC_PAUSE, align 4
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  ret void
}

declare dso_local i32 @IXGBE_DV_X540(i32, i32) #1

declare dso_local i32 @IXGBE_DV(i32, i32) #1

declare dso_local i8* @IXGBE_BT2KB(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_RXPBSIZE(i32) #1

declare dso_local i32 @IXGBE_LOW_DV_X540(i32) #1

declare dso_local i32 @IXGBE_LOW_DV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
