; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_down.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb_transport.c_ntb_transport_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i32, i64, i32, %struct.ntb_transport_ctx* }
%struct.ntb_transport_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NTBT_QP_LINKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ntb_transport_link_down(%struct.ntb_transport_qp* %0) #0 {
  %2 = alloca %struct.ntb_transport_qp*, align 8
  %3 = alloca %struct.ntb_transport_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %2, align 8
  %6 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %7 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %6, i32 0, i32 4
  %8 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %7, align 8
  store %struct.ntb_transport_ctx* %8, %struct.ntb_transport_ctx** %3, align 8
  %9 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %10 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %38 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NTBT_QP_LINKS, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ntb_peer_spad_write(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %44 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %49 = call i32 @ntb_send_link_down(%struct.ntb_transport_qp* %48)
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %2, align 8
  %52 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %51, i32 0, i32 1
  %53 = call i32 @callout_drain(i32* %52)
  br label %54

54:                                               ; preds = %50, %47
  ret void
}

declare dso_local i32 @ntb_peer_spad_write(i32, i32, i32) #1

declare dso_local i32 @ntb_send_link_down(%struct.ntb_transport_qp*) #1

declare dso_local i32 @callout_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
