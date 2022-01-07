; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_register_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_register_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.ecore_sb_sp_info* }
%struct.ecore_sb_sp_info = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i64, i8* }

@ECORE_NOMEM = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i64 0, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_register_cb(%struct.ecore_hwfn* %0, i64 %1, i8* %2, i64* %3, i32** %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.ecore_sb_sp_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32** %4, i32*** %10, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %15, align 8
  store %struct.ecore_sb_sp_info* %16, %struct.ecore_sb_sp_info** %11, align 8
  %17 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %17, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %63, %5
  %19 = load i64, i64* %13, align 8
  %20 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %11, align 8
  %21 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i64 @OSAL_ARRAY_SIZE(%struct.TYPE_6__* %22)
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %18
  %26 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %11, align 8
  %27 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i64, i64* %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OSAL_NULL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %63

36:                                               ; preds = %25
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %11, align 8
  %39 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i64 %37, i64* %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %11, align 8
  %46 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %44, i8** %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  %53 = load %struct.ecore_sb_sp_info*, %struct.ecore_sb_sp_info** %11, align 8
  %54 = getelementptr inbounds %struct.ecore_sb_sp_info, %struct.ecore_sb_sp_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32**, i32*** %10, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %62, i32* %12, align 4
  br label %66

63:                                               ; preds = %35
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %13, align 8
  br label %18

66:                                               ; preds = %36, %18
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local i64 @OSAL_ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
