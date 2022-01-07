; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf_qmgr = type { i32* }
%struct.ixl_pf_qtag = type { i64, i64, i64*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@IXL_PF_QALLOC_SCATTERED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_pf_qmgr_release(%struct.ixl_pf_qmgr* %0, %struct.ixl_pf_qtag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixl_pf_qmgr*, align 8
  %5 = alloca %struct.ixl_pf_qtag*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ixl_pf_qmgr* %0, %struct.ixl_pf_qmgr** %4, align 8
  store %struct.ixl_pf_qtag* %1, %struct.ixl_pf_qtag** %5, align 8
  %9 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %10 = icmp eq %struct.ixl_pf_qtag* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %15 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IXL_PF_QALLOC_SCATTERED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %23 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %28 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %4, align 8
  %34 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @bzero(i32* %37, i32 4)
  br label %39

39:                                               ; preds = %26
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %20

42:                                               ; preds = %20
  br label %69

43:                                               ; preds = %13
  %44 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %45 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %65, %43
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %54 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = icmp ult i64 %51, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %4, align 8
  %60 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @bzero(i32* %63, i32 4)
  br label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %50

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %42
  %70 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %5, align 8
  %71 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
