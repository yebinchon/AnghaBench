; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_speed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { %struct.ntb_transport_ctx* }
%struct.ntb_transport_ctx = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_transport_link_speed(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca %struct.ntb_transport_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %3, align 8
  %6 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %6, i32 0, i32 0
  %8 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %7, align 8
  store %struct.ntb_transport_ctx* %8, %struct.ntb_transport_ctx** %4, align 8
  %9 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
  ]

18:                                               ; preds = %14
  store i32 2000000000, i32* %5, align 4
  br label %23

19:                                               ; preds = %14
  store i32 -294967296, i32* %5, align 4
  br label %23

20:                                               ; preds = %14
  store i32 -713011516, i32* %5, align 4
  br label %23

21:                                               ; preds = %14
  store i32 -1426023031, i32* %5, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %35

23:                                               ; preds = %21, %20, %19, %18
  %24 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %28, %22, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
