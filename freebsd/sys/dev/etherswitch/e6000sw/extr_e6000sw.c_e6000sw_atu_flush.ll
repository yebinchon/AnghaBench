; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_atu_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_atu_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_OPERATION = common dso_local global i32 0, align 4
@ATU_OPERATION = common dso_local global i32 0, align 4
@ATU_UNIT_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ATU unit is busy, cannot access\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Timeout while flushing ATU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @e6000sw_atu_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_atu_flush(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @NO_OPERATION, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @ATU_OPERATION, align 4
  %16 = load i32, i32* @ATU_UNIT_BUSY, align 4
  %17 = call i64 @E6000SW_WAITREADY(i32* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %13
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @REG_GLOBAL, align 4
  %26 = load i32, i32* @ATU_OPERATION, align 4
  %27 = call i32 @e6000sw_readreg(i32* %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @REG_GLOBAL, align 4
  %30 = load i32, i32* @ATU_OPERATION, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ATU_UNIT_BUSY, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @e6000sw_writereg(i32* %28, i32 %29, i32 %30, i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @ATU_OPERATION, align 4
  %39 = load i32, i32* @ATU_UNIT_BUSY, align 4
  %40 = call i64 @E6000SW_WAITREADY(i32* %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %23
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %19, %12
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @E6000SW_WAITREADY(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @e6000sw_readreg(i32*, i32, i32) #1

declare dso_local i32 @e6000sw_writereg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
