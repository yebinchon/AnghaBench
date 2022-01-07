; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_enable_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_fdir_enable_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ixgbe_fdir_enable_82599\00", align 1
@IXGBE_FDIRHKEY = common dso_local global i32 0, align 4
@IXGBE_ATR_BUCKET_HASH_KEY = common dso_local global i32 0, align 4
@IXGBE_FDIRSKEY = common dso_local global i32 0, align 4
@IXGBE_ATR_SIGNATURE_HASH_KEY = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL = common dso_local global i32 0, align 4
@IXGBE_FDIR_INIT_DONE_POLL = common dso_local global i32 0, align 4
@IXGBE_FDIRCTRL_INIT_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Flow Director poll time exceeded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*, i32)* @ixgbe_fdir_enable_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_fdir_enable_82599(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_FDIRHKEY, align 4
  %9 = load i32, i32* @IXGBE_ATR_BUCKET_HASH_KEY, align 4
  %10 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %7, i32 %8, i32 %9)
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = load i32, i32* @IXGBE_FDIRSKEY, align 4
  %13 = load i32, i32* @IXGBE_ATR_SIGNATURE_HASH_KEY, align 4
  %14 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %11, i32 %12, i32 %13)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %15, i32 %16, i32 %17)
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %20 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %35, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %27 = load i32, i32* @IXGBE_FDIRCTRL, align 4
  %28 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %26, i32 %27)
  %29 = load i32, i32* @IXGBE_FDIRCTRL_INIT_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %38

33:                                               ; preds = %25
  %34 = call i32 @msec_delay(i32 1)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %21

38:                                               ; preds = %32, %21
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IXGBE_FDIR_INIT_DONE_POLL, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
