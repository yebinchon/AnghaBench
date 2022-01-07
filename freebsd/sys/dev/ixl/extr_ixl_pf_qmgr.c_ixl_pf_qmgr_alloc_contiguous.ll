; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_alloc_contiguous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_alloc_contiguous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf_qmgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ixl_pf_qtag = type { i32*, i32, i32, i32, %struct.ixl_pf_qmgr* }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IXL_PF_QALLOC_CONTIGUOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_pf_qmgr_alloc_contiguous(%struct.ixl_pf_qmgr* %0, i32 %1, %struct.ixl_pf_qtag* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_pf_qmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixl_pf_qtag*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ixl_pf_qmgr* %0, %struct.ixl_pf_qmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ixl_pf_qtag* %2, %struct.ixl_pf_qtag** %7, align 8
  %12 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %13 = icmp eq %struct.ixl_pf_qtag* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %77

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @next_power_of_two(i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %24 = call i32 @ixl_pf_qmgr_get_num_free(%struct.ixl_pf_qmgr* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOSPC, align 4
  store i32 %29, i32* %4, align 4
  br label %77

30:                                               ; preds = %19
  %31 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @ixl_pf_qmgr_find_free_contiguous_block(%struct.ixl_pf_qmgr* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOSPC, align 4
  store i32 %37, i32* %4, align 4
  br label %77

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %54, %38
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %48 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %40

57:                                               ; preds = %40
  %58 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %59 = call i32 @bzero(%struct.ixl_pf_qtag* %58, i32 32)
  %60 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %61 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %62 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %61, i32 0, i32 4
  store %struct.ixl_pf_qmgr* %60, %struct.ixl_pf_qmgr** %62, align 8
  %63 = load i32, i32* @IXL_PF_QALLOC_CONTIGUOUS, align 4
  %64 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %65 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %68 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %73 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %76 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %57, %36, %28, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @next_power_of_two(i32) #1

declare dso_local i32 @ixl_pf_qmgr_get_num_free(%struct.ixl_pf_qmgr*) #1

declare dso_local i32 @ixl_pf_qmgr_find_free_contiguous_block(%struct.ixl_pf_qmgr*, i32) #1

declare dso_local i32 @bzero(%struct.ixl_pf_qtag*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
