; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_alloc_scattered.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_qmgr.c_ixl_pf_qmgr_alloc_scattered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf_qmgr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ixl_pf_qtag = type { i32, i32, i32*, i32, %struct.ixl_pf_qmgr* }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IXL_PF_QALLOC_SCATTERED = common dso_local global i32 0, align 4
@EDOOFUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixl_pf_qmgr_alloc_scattered(%struct.ixl_pf_qmgr* %0, i32 %1, %struct.ixl_pf_qtag* %2) #0 {
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
  store i32 0, i32* %10, align 4
  %12 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %13 = icmp eq %struct.ixl_pf_qtag* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 16
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %92

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @next_power_of_two(i32 %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %27 = call i32 @ixl_pf_qmgr_get_num_free(%struct.ixl_pf_qmgr* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOSPC, align 4
  store i32 %32, i32* %4, align 4
  br label %92

33:                                               ; preds = %22
  %34 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %35 = call i32 @bzero(%struct.ixl_pf_qtag* %34, i32 32)
  %36 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %37 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %38 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %37, i32 0, i32 4
  store %struct.ixl_pf_qmgr* %36, %struct.ixl_pf_qmgr** %38, align 8
  %39 = load i32, i32* @IXL_PF_QALLOC_SCATTERED, align 4
  %40 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %41 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %44 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %47 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %87, %33
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %51 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %48
  %55 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %56 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.ixl_pf_qtag*, %struct.ixl_pf_qtag** %7, align 8
  %67 = getelementptr inbounds %struct.ixl_pf_qtag, %struct.ixl_pf_qtag* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load %struct.ixl_pf_qmgr*, %struct.ixl_pf_qmgr** %5, align 8
  %75 = getelementptr inbounds %struct.ixl_pf_qmgr, %struct.ixl_pf_qmgr* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %92

85:                                               ; preds = %64
  br label %86

86:                                               ; preds = %85, %54
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %48

90:                                               ; preds = %48
  %91 = load i32, i32* @EDOOFUS, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %84, %31, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @next_power_of_two(i32) #1

declare dso_local i32 @ixl_pf_qmgr_get_num_free(%struct.ixl_pf_qmgr*) #1

declare dso_local i32 @bzero(%struct.ixl_pf_qtag*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
