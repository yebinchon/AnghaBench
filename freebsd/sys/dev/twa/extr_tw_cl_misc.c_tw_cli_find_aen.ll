; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_find_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_find_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSL_ESUCCESS = common dso_local global i32 0, align 4
@TW_OSL_EGENFAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_find_aen(%struct.tw_cli_ctlr_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw_cli_ctlr_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %9 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (...) @tw_osl_cur_func()
  %12 = call i32 @tw_cli_dbg_printf(i32 4, i32 %10, i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %14 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %19 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %24 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %50, %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %29 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %34 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %32, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %38 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %26
  %48 = load i32, i32* @TW_OSL_ESUCCESS, align 4
  store i32 %48, i32* %3, align 4
  br label %56

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %26, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @TW_OSL_EGENFAILURE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
