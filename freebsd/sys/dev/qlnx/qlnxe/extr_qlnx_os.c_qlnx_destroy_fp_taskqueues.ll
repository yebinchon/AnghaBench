; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_destroy_fp_taskqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_destroy_fp_taskqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.qlnx_fastpath* }
%struct.qlnx_fastpath = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @qlnx_destroy_fp_taskqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_destroy_fp_taskqueues(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlnx_fastpath*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %5
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %14, i64 %16
  store %struct.qlnx_fastpath* %17, %struct.qlnx_fastpath** %4, align 8
  %18 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %19 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %11
  %23 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %24 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %27 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %26, i32 0, i32 1
  %28 = call i32 @taskqueue_drain(i32* %25, i32* %27)
  %29 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %30 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @taskqueue_free(i32* %31)
  %33 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %34 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %22, %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
