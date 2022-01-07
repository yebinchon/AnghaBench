; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { i32, i32, i32, %struct.ntb_transport_qp*, i64, i32 }
%struct.ntb_transport_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_transport_ctx*)* @ntb_transport_link_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_transport_link_cleanup(%struct.ntb_transport_ctx* %0) #0 {
  %2 = alloca %struct.ntb_transport_ctx*, align 8
  %3 = alloca %struct.ntb_transport_qp*, align 8
  %4 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %2, align 8
  %5 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %5, i32 0, i32 5
  %7 = call i32 @callout_drain(i32* %6)
  %8 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %18 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %25, i32 0, i32 3
  %27 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %27, i64 %29
  store %struct.ntb_transport_qp* %30, %struct.ntb_transport_qp** %3, align 8
  %31 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %32 = call i32 @ntb_qp_link_cleanup(%struct.ntb_transport_qp* %31)
  %33 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %33, i32 0, i32 0
  %35 = call i32 @callout_drain(i32* %34)
  br label %36

36:                                               ; preds = %24, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ntb_spad_clear(i32 %43)
  ret void
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ntb_qp_link_cleanup(%struct.ntb_transport_qp*) #1

declare dso_local i32 @ntb_spad_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
