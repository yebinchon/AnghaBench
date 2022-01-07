; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_tables_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_tables_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate ilt memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to allocate T2 memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to allocate cid maps\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_cxt_tables_alloc(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = call i32 @ecore_ilt_shadow_alloc(%struct.ecore_hwfn* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %11 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %10, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = call i32 @ecore_cxt_src_t2_alloc(%struct.ecore_hwfn* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %19 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %18, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %30

20:                                               ; preds = %12
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %22 = call i32 @ecore_cid_map_alloc(%struct.ecore_hwfn* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %27 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %26, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %25, %17, %9
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %32 = call i32 @ecore_cxt_mngr_free(%struct.ecore_hwfn* %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @ecore_ilt_shadow_alloc(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_cxt_src_t2_alloc(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_cid_map_alloc(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_cxt_mngr_free(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
