; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_reserve_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_reserve_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, i32 }
%struct.ixl_vf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Invalid num-queues (%d) for VF %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Setting VF %d num-queues to 1\0A\00", align 1
@IAVF_MAX_QUEUES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Setting VF %d num-queues to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Error allocating %d queues for VF %d's VSI\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"VF %d: %d allocated, %d active\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Unallocated total: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixl_pf*, %struct.ixl_vf*, i32)* @ixl_vf_reserve_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixl_vf_reserve_queues(%struct.ixl_pf* %0, %struct.ixl_vf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixl_pf*, align 8
  %6 = alloca %struct.ixl_vf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %5, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 16
  br i1 %17, label %18, label %25

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %22 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %31 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 1, i32* %7, align 4
  br label %47

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IAVF_MAX_QUEUES, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %41 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IAVF_MAX_QUEUES, align 4
  %44 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* @IAVF_MAX_QUEUES, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %38, %34
  br label %47

47:                                               ; preds = %46, %28
  %48 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %49 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %52 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %51, i32 0, i32 1
  %53 = call i32 @ixl_pf_qmgr_alloc_scattered(i32* %49, i32 %50, %struct.TYPE_2__* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %60 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32, i32* @ENOSPC, align 4
  store i32 %63, i32* %4, align 4
  br label %83

64:                                               ; preds = %47
  %65 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %66 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %67 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %70 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ixl_vf*, %struct.ixl_vf** %6, align 8
  %74 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.ixl_pf*, i8*, i32, ...) @ixl_dbg_iov(%struct.ixl_pf* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %68, i32 %72, i32 %76)
  %78 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %79 = load %struct.ixl_pf*, %struct.ixl_pf** %5, align 8
  %80 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %79, i32 0, i32 0
  %81 = call i32 @ixl_pf_qmgr_get_num_free(i32* %80)
  %82 = call i32 (%struct.ixl_pf*, i8*, i32, ...) @ixl_dbg_iov(%struct.ixl_pf* %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %64, %56
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ixl_pf_qmgr_alloc_scattered(i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ixl_dbg_iov(%struct.ixl_pf*, i8*, i32, ...) #1

declare dso_local i32 @ixl_pf_qmgr_get_num_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
