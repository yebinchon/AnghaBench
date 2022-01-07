; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_force_sis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_init.c_pqisrc_force_sis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Controller FW is not runnning\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i32 0, align 4
@CTRL_SIS_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqisrc_force_sis(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @SIS_IS_KERNEL_PANIC(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @DBG_INIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @PQI_STATUS_FAILURE, align 4
  store i32 %11, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @PQI_GET_CTRL_MODE(i32* %13)
  %15 = load i64, i64* @CTRL_SIS_MODE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %49

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @SIS_IS_KERNEL_UP(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* @CTRL_SIS_MODE, align 8
  %26 = call i32 @PQI_SAVE_CTRL_MODE(i32* %24, i64 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @sis_disable_interrupt(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @pqi_reset(i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %28
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @pqisrc_reenable_sis(i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %37
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* @CTRL_SIS_MODE, align 8
  %47 = call i32 @PQI_SAVE_CTRL_MODE(i32* %45, i64 %46)
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %42, %35, %23, %17, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @SIS_IS_KERNEL_PANIC(i32*) #1

declare dso_local i32 @DBG_INIT(i8*) #1

declare dso_local i64 @PQI_GET_CTRL_MODE(i32*) #1

declare dso_local i64 @SIS_IS_KERNEL_UP(i32*) #1

declare dso_local i32 @PQI_SAVE_CTRL_MODE(i32*, i64) #1

declare dso_local i32 @sis_disable_interrupt(i32*) #1

declare dso_local i32 @pqi_reset(i32*) #1

declare dso_local i32 @pqisrc_reenable_sis(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
