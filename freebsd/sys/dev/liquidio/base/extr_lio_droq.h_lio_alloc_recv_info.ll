; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.h_lio_alloc_recv_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.h_lio_alloc_recv_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio_recv_info = type { i32*, %struct.lio_recv_pkt* }
%struct.lio_recv_pkt = type { i32 }

@LIO_RECV_PKT_SIZE = common dso_local global i32 0, align 4
@LIO_RECV_INFO_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lio_recv_info* (i32)* @lio_alloc_recv_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lio_recv_info* @lio_alloc_recv_info(i32 %0) #0 {
  %2 = alloca %struct.lio_recv_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lio_recv_info*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @LIO_RECV_PKT_SIZE, align 4
  %7 = load i32, i32* @LIO_RECV_INFO_SIZE, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i32* @malloc(i32 %10, i32 %11, i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.lio_recv_info* null, %struct.lio_recv_info** %2, align 8
  br label %45

19:                                               ; preds = %1
  %20 = load i32*, i32** %5, align 8
  %21 = bitcast i32* %20 to %struct.lio_recv_info*
  store %struct.lio_recv_info* %21, %struct.lio_recv_info** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @LIO_RECV_INFO_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = bitcast i32* %25 to %struct.lio_recv_pkt*
  %27 = load %struct.lio_recv_info*, %struct.lio_recv_info** %4, align 8
  %28 = getelementptr inbounds %struct.lio_recv_info, %struct.lio_recv_info* %27, i32 0, i32 1
  store %struct.lio_recv_pkt* %26, %struct.lio_recv_pkt** %28, align 8
  %29 = load %struct.lio_recv_info*, %struct.lio_recv_info** %4, align 8
  %30 = getelementptr inbounds %struct.lio_recv_info, %struct.lio_recv_info* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @LIO_RECV_INFO_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* @LIO_RECV_PKT_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load %struct.lio_recv_info*, %struct.lio_recv_info** %4, align 8
  %42 = getelementptr inbounds %struct.lio_recv_info, %struct.lio_recv_info* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  br label %43

43:                                               ; preds = %33, %19
  %44 = load %struct.lio_recv_info*, %struct.lio_recv_info** %4, align 8
  store %struct.lio_recv_info* %44, %struct.lio_recv_info** %2, align 8
  br label %45

45:                                               ; preds = %43, %18
  %46 = load %struct.lio_recv_info*, %struct.lio_recv_info** %2, align 8
  ret %struct.lio_recv_info* %46
}

declare dso_local i32* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
