; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_filter_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_set_filter_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.tp_params }
%struct.tp_params = type { i32 }

@F_VNIC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HOLD_LOCK = common dso_local global i32 0, align 4
@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"t4setfm\00", align 1
@LOCK_HELD = common dso_local global i32 0, align 4
@ULD_TOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_filter_mode(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tp_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tp_params* %12, %struct.tp_params** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @mode_to_iconf(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.tp_params*, %struct.tp_params** %6, align 8
  %17 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %15, %18
  %20 = load i32, i32* @F_VNIC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mode_to_fconf(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load i32, i32* @HOLD_LOCK, align 4
  %30 = load i32, i32* @SLEEP_OK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @INTR_OK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @begin_synchronized_op(%struct.adapter* %28, i32* null, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %63

39:                                               ; preds = %25
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.adapter*, %struct.adapter** %4, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %39
  %52 = load i32, i32* @EBUSY, align 4
  store i32 %52, i32* %9, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load %struct.adapter*, %struct.adapter** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @t4_set_filter_mode(%struct.adapter* %54, i32 %55, i32 1)
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %51
  %59 = load %struct.adapter*, %struct.adapter** %4, align 8
  %60 = load i32, i32* @LOCK_HELD, align 4
  %61 = call i32 @end_synchronized_op(%struct.adapter* %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %37, %23
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mode_to_iconf(i32) #1

declare dso_local i32 @mode_to_fconf(i32) #1

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @t4_set_filter_mode(%struct.adapter*, i32, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
