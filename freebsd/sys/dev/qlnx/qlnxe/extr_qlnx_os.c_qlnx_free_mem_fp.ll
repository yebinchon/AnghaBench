; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_mem_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_mem_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.qlnx_fastpath = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.qlnx_fastpath*)* @qlnx_free_mem_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_free_mem_fp(%struct.TYPE_6__* %0, %struct.qlnx_fastpath* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.qlnx_fastpath*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %8 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @qlnx_free_mem_sb(%struct.TYPE_6__* %6, i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %13 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @qlnx_free_mem_rxq(%struct.TYPE_6__* %11, i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %25 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %26 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @qlnx_free_mem_txq(%struct.TYPE_6__* %23, %struct.qlnx_fastpath* %24, i32 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  ret void
}

declare dso_local i32 @qlnx_free_mem_sb(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @qlnx_free_mem_rxq(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @qlnx_free_mem_txq(%struct.TYPE_6__*, %struct.qlnx_fastpath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
