; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_i2c_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_i2c_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifi2creq = type { i32, i32*, i32, i64 }
%struct.adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i64, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ifi2creq*)* @ixgbe_if_i2c_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_i2c_req(i32 %0, %struct.ifi2creq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifi2creq*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ifi2creq* %1, %struct.ifi2creq** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.adapter* @iflib_get_softc(i32 %9)
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %7, align 8
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.ixgbe_hw.0*, i64, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32, i32*)** %16, align 8
  %18 = icmp eq i32 (%struct.ixgbe_hw.0*, i64, i32, i32*)* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %25 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %22
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ixgbe_hw.0*, i64, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i64, i32, i32*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %37 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %43 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ifi2creq*, %struct.ifi2creq** %5, align 8
  %46 = getelementptr inbounds %struct.ifi2creq, %struct.ifi2creq* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 %33(%struct.ixgbe_hw.0* %35, i64 %41, i32 %44, i32* %50)
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %22

55:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
