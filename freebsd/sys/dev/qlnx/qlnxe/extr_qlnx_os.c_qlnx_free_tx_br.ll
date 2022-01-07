; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_tx_br.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_free_tx_br.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.qlnx_fastpath = type { i32, i32*, i32 }
%struct.mbuf = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.qlnx_fastpath*)* @qlnx_free_tx_br to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_free_tx_br(%struct.TYPE_3__* %0, %struct.qlnx_fastpath* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.qlnx_fastpath*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %6, align 8
  %10 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %11 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %10, i32 0, i32 0
  %12 = call i64 @mtx_initialized(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %16 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %14
  %20 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %21 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  br label %23

23:                                               ; preds = %30, %19
  %24 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %25 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %26 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call %struct.mbuf* @drbr_dequeue(%struct.ifnet* %24, i32* %27)
  store %struct.mbuf* %28, %struct.mbuf** %5, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %32 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  br label %23

37:                                               ; preds = %23
  %38 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %39 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %38, i32 0, i32 0
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %42 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @buf_ring_free(i32* %43, i32 %44)
  %46 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %47 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %37, %14
  %49 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %50 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %49, i32 0, i32 0
  %51 = call i32 @mtx_destroy(i32* %50)
  br label %52

52:                                               ; preds = %48, %2
  ret void
}

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mbuf* @drbr_dequeue(%struct.ifnet*, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @buf_ring_free(i32*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
