; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_disable_sec_rx_path_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_disable_sec_rx_path_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ixgbe_disable_sec_rx_path_generic\00", align 1
@IXGBE_SECRXCTRL = common dso_local global i32 0, align 4
@IXGBE_SECRXCTRL_RX_DIS = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT = common dso_local global i32 0, align 4
@IXGBE_SECRXSTAT_SECRX_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Rx unit being enabled before security path fully disabled.  Continuing with init.\0A\00", align 1
@IXGBE_SUCCESS = common dso_local global i32 0, align 4
@IXGBE_MAX_SECRX_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_disable_sec_rx_path_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %5 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %8 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @IXGBE_SECRXCTRL_RX_DIS, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %13 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %12, i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 40
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = load i32, i32* @IXGBE_SECRXSTAT, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @IXGBE_SECRXSTAT_SECRX_RDY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %34

28:                                               ; preds = %19
  %29 = call i32 @usec_delay(i32 1000)
  br label %30

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %16

34:                                               ; preds = %27, %16
  %35 = load i32, i32* %3, align 4
  %36 = icmp sge i32 %35, 40
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* @IXGBE_SUCCESS, align 4
  ret i32 %40
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
