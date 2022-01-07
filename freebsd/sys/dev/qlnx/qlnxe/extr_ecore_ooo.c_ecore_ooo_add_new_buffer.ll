; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_add_new_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_add_new_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ooo_isle = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ooo_info = type { i32 }
%struct.ecore_ooo_buffer = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_ooo_isle* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Isle %d is not found(cid %d)\0A\00", align 1
@ECORE_OOO_LEFT_BUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_ooo_add_new_buffer(%struct.ecore_hwfn* %0, %struct.ecore_ooo_info* %1, i32 %2, i64 %3, %struct.ecore_ooo_buffer* %4, i64 %5) #0 {
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ooo_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ecore_ooo_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ecore_ooo_isle*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ooo_info* %1, %struct.ecore_ooo_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.ecore_ooo_buffer* %4, %struct.ecore_ooo_buffer** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** @OSAL_NULL, align 8
  store %struct.ecore_ooo_isle* %14, %struct.ecore_ooo_isle** %13, align 8
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %16 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i64, i64* %10, align 8
  %19 = call %struct.ecore_ooo_isle* @ecore_ooo_seek_isle(%struct.ecore_hwfn* %15, %struct.ecore_ooo_info* %16, i32 %17, i64 %18)
  store %struct.ecore_ooo_isle* %19, %struct.ecore_ooo_isle** %13, align 8
  %20 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %13, align 8
  %21 = icmp ne %struct.ecore_ooo_isle* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %23, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  br label %43

27:                                               ; preds = %6
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @ECORE_OOO_LEFT_BUF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %11, align 8
  %33 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %32, i32 0, i32 0
  %34 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %13, align 8
  %35 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %34, i32 0, i32 0
  %36 = call i32 @OSAL_LIST_PUSH_HEAD(i32* %33, i32* %35)
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %11, align 8
  %39 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %38, i32 0, i32 0
  %40 = load %struct.ecore_ooo_isle*, %struct.ecore_ooo_isle** %13, align 8
  %41 = getelementptr inbounds %struct.ecore_ooo_isle, %struct.ecore_ooo_isle* %40, i32 0, i32 0
  %42 = call i32 @OSAL_LIST_PUSH_TAIL(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %22, %37, %31
  ret void
}

declare dso_local %struct.ecore_ooo_isle* @ecore_ooo_seek_isle(%struct.ecore_hwfn*, %struct.ecore_ooo_info*, i32, i64) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i64, i32) #1

declare dso_local i32 @OSAL_LIST_PUSH_HEAD(i32*, i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_TAIL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
