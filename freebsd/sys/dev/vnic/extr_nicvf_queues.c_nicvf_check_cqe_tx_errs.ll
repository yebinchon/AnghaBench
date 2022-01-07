; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_check_cqe_tx_errs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_check_cqe_tx_errs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.cmp_queue = type { %struct.cmp_queue_stats }
%struct.cmp_queue_stats = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cqe_send_t = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_check_cqe_tx_errs(%struct.nicvf* %0, %struct.cmp_queue* %1, %struct.cqe_send_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.cmp_queue*, align 8
  %7 = alloca %struct.cqe_send_t*, align 8
  %8 = alloca %struct.cmp_queue_stats*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.cmp_queue* %1, %struct.cmp_queue** %6, align 8
  store %struct.cqe_send_t* %2, %struct.cqe_send_t** %7, align 8
  %9 = load %struct.cmp_queue*, %struct.cmp_queue** %6, align 8
  %10 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %9, i32 0, i32 0
  store %struct.cmp_queue_stats* %10, %struct.cmp_queue_stats** %8, align 8
  %11 = load %struct.cqe_send_t*, %struct.cqe_send_t** %7, align 8
  %12 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %98 [
    i32 136, label %14
    i32 137, label %20
    i32 135, label %26
    i32 130, label %32
    i32 134, label %38
    i32 138, label %44
    i32 131, label %50
    i32 133, label %56
    i32 139, label %62
    i32 129, label %68
    i32 128, label %74
    i32 132, label %80
    i32 140, label %86
    i32 141, label %92
  ]

14:                                               ; preds = %3
  %15 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %16 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %99

20:                                               ; preds = %3
  %21 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %22 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %98

26:                                               ; preds = %3
  %27 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %28 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %98

32:                                               ; preds = %3
  %33 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %34 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 10
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %98

38:                                               ; preds = %3
  %39 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %40 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %98

44:                                               ; preds = %3
  %45 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %46 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %98

50:                                               ; preds = %3
  %51 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %52 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %98

56:                                               ; preds = %3
  %57 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %58 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %98

62:                                               ; preds = %3
  %63 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %64 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %98

68:                                               ; preds = %3
  %69 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %70 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %98

74:                                               ; preds = %3
  %75 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %76 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %98

80:                                               ; preds = %3
  %81 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %82 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %98

86:                                               ; preds = %3
  %87 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %88 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %98

92:                                               ; preds = %3
  %93 = load %struct.cmp_queue_stats*, %struct.cmp_queue_stats** %8, align 8
  %94 = getelementptr inbounds %struct.cmp_queue_stats, %struct.cmp_queue_stats* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %3, %92, %86, %80, %74, %68, %62, %56, %50, %44, %38, %32, %26, %20
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %14
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
