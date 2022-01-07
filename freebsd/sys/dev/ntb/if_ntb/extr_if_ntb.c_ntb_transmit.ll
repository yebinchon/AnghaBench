; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ntb_net_ctx = type { i32, %struct.ntb_net_queue* }
%struct.ntb_net_queue = type { i32, i32, i32, i32 }

@KTR_NTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"TX: ntb_transmit\00", align 1
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@curcpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mbuf*)* @ntb_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_transmit(i32 %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ntb_net_ctx*, align 8
  %7 = alloca %struct.ntb_net_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.ntb_net_ctx* @if_getsoftc(i32 %10)
  store %struct.ntb_net_ctx* %11, %struct.ntb_net_ctx** %6, align 8
  %12 = load i32, i32* @KTR_NTB, align 4
  %13 = call i32 @CTR0(i32 %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %15 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %14)
  %16 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = srem i32 %22, %25
  store i32 %26, i32* %9, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @curcpu, align 4
  %29 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %28, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %27, %18
  %34 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %34, i32 0, i32 1
  %36 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %36, i64 %38
  store %struct.ntb_net_queue* %39, %struct.ntb_net_queue** %7, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %7, align 8
  %42 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = call i32 @drbr_enqueue(i32 %40, i32 %43, %struct.mbuf* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %33
  %51 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %7, align 8
  %52 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %51, i32 0, i32 2
  %53 = call i64 @mtx_trylock(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %7, align 8
  %57 = call i32 @ntb_transmit_locked(%struct.ntb_net_queue* %56)
  %58 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %7, align 8
  %59 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %58, i32 0, i32 2
  %60 = call i32 @mtx_unlock(i32* %59)
  br label %68

61:                                               ; preds = %50
  %62 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %7, align 8
  %63 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %7, align 8
  %66 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %65, i32 0, i32 0
  %67 = call i32 @taskqueue_enqueue(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %61, %55
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.ntb_net_ctx* @if_getsoftc(i32) #1

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @drbr_enqueue(i32, i32, %struct.mbuf*) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @ntb_transmit_locked(%struct.ntb_net_queue*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
