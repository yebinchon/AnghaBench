; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_change_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32 }

@ENA_MIN_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Invalid MTU setting. new_mtu: %d max mtu: %d min mtu: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENA_DBG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"set MTU to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to set MTU to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ena_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_change_mtu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.ena_adapter* @if_getsoftc(i32 %8)
  store %struct.ena_adapter* %9, %struct.ena_adapter** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ENA_MIN_MTU, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %2
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %21 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ENA_MIN_MTU, align 4
  %28 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %56

30:                                               ; preds = %15
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ena_com_set_dev_mtu(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load i32, i32* @ENA_DBG, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ena_trace(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @if_setmtu(i32 %45, i32 %46)
  br label %54

48:                                               ; preds = %30
  %49 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.ena_adapter* @if_getsoftc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ena_com_set_dev_mtu(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ena_trace(i32, i8*, i32) #1

declare dso_local i32 @if_setmtu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
