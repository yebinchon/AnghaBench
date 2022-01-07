; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_if_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ixgbe_detach: begin\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"SR-IOV in use; detach first.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT = common dso_local global i32 0, align 4
@IXGBE_CTRL_EXT_DRV_LOAD = common dso_local global i32 0, align 4
@M_IXGBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ixgbe_if_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_if_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @iflib_get_dev(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @INIT_DEBUGOUT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @ixgbe_pci_iov_detach(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @EBUSY, align 4
  store i32 %18, i32* %2, align 4
  br label %42

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @ixgbe_setup_low_power_mode(i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %25 = call i32 @IXGBE_READ_REG(i32* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @IXGBE_CTRL_EXT_DRV_LOAD, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.adapter*, %struct.adapter** %4, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = load i32, i32* @IXGBE_CTRL_EXT, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @IXGBE_WRITE_REG(i32* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ixgbe_free_pci_resources(i32 %35)
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @M_IXGBE, align 4
  %41 = call i32 @free(i32 %39, i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %19, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @INIT_DEBUGOUT(i8*) #1

declare dso_local i64 @ixgbe_pci_iov_detach(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ixgbe_setup_low_power_mode(i32) #1

declare dso_local i32 @IXGBE_READ_REG(i32*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(i32*, i32, i32) #1

declare dso_local i32 @ixgbe_free_pci_resources(i32) #1

declare dso_local i32 @free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
