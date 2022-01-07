; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_alloc_ring_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-desc.c_xgbe_alloc_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, %struct.xgbe_channel* }
%struct.xgbe_channel = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"-->xgbe_alloc_ring_resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"error initializing Tx ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"error initializing Rx ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"<--xgbe_alloc_ring_resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_alloc_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_alloc_ring_resources(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %7 = call i32 @DBGPR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 3
  %10 = load %struct.xgbe_channel*, %struct.xgbe_channel** %9, align 8
  store %struct.xgbe_channel* %10, %struct.xgbe_channel** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %19 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %20 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @xgbe_init_ring(%struct.xgbe_prv_data* %18, i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %51

30:                                               ; preds = %17
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %32 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %33 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @xgbe_init_ring(%struct.xgbe_prv_data* %31, i32 %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %51

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %48 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %47, i32 1
  store %struct.xgbe_channel* %48, %struct.xgbe_channel** %4, align 8
  br label %11

49:                                               ; preds = %11
  %50 = call i32 @DBGPR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

51:                                               ; preds = %41, %28
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %53 = call i32 @xgbe_free_ring_resources(%struct.xgbe_prv_data* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i32 @xgbe_init_ring(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @xgbe_free_ring_resources(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
