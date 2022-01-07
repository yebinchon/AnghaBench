; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"ixgbe_resume: begin\00", align 1
@IXGBE_WUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Woken up by (WUS): %#010x\0A\00", align 1
@IXGBE_WUFC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_if_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.adapter* @iflib_get_softc(i32 %8)
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @iflib_get_dev(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.ifnet* @iflib_get_ifp(i32 %12)
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %6, align 8
  %16 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %18 = load i32, i32* @IXGBE_WUS, align 4
  %19 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %25 = load i32, i32* @IXGBE_WUS, align 4
  %26 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %24, i32 %25)
  %27 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %30 = load i32, i32* @IXGBE_WUS, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %29, i32 %30, i32 -1)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = load i32, i32* @IXGBE_WUFC, align 4
  %34 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i32 %33, i32 0)
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFF_UP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @ixgbe_if_init(i32 %42)
  br label %44

44:                                               ; preds = %41, %28
  ret i32 0
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_if_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
