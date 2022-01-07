; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_load_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.t4_data = type { i64, i32 }

@SLEEP_OK = common dso_local global i32 0, align 4
@INTR_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"t4ldcf\00", align 1
@M_CXGBE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_data*)* @load_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_cfg(%struct.adapter* %0, %struct.t4_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.t4_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.t4_data* %1, %struct.t4_data** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = load i32, i32* @SLEEP_OK, align 4
  %10 = load i32, i32* @INTR_OK, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @begin_synchronized_op(%struct.adapter* %8, i32* null, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %19 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = call i32 @t4_load_cfg(%struct.adapter* %23, i32* null, i64 0)
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %60

26:                                               ; preds = %17
  %27 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %28 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @M_CXGBE, align 4
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = call i32* @malloc(i64 %29, i32 %30, i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %6, align 4
  br label %60

37:                                               ; preds = %26
  %38 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %39 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %43 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @copyin(i32 %40, i32* %41, i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load %struct.adapter*, %struct.adapter** %4, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.t4_data*, %struct.t4_data** %5, align 8
  %52 = getelementptr inbounds %struct.t4_data, %struct.t4_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @t4_load_cfg(%struct.adapter* %49, i32* %50, i64 %53)
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %48, %37
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @M_CXGBE, align 4
  %59 = call i32 @free(i32* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %35, %22
  %61 = load %struct.adapter*, %struct.adapter** %4, align 8
  %62 = call i32 @end_synchronized_op(%struct.adapter* %61, i32 0)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @begin_synchronized_op(%struct.adapter*, i32*, i32, i8*) #1

declare dso_local i32 @t4_load_cfg(%struct.adapter*, i32*, i64) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @end_synchronized_op(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
