; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_set_tx_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_set_tx_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, %struct.mbuf**, i32, %struct.mbuf*, i32 }
%struct.mbuf = type { i32 }

@generic_mbuf_destructor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Request Event at %d mbuf %p refcnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_kring*, i64)* @generic_set_tx_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generic_set_tx_event(%struct.netmap_kring* %0, i64 %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %10 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %11, 1
  store i64 %12, i64* %5, align 8
  %13 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %14 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @nm_next(i32 %15, i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %74

22:                                               ; preds = %2
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %25 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %24, i32 0, i32 1
  %26 = load %struct.mbuf**, %struct.mbuf*** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %26, i64 %27
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  store %struct.mbuf* %29, %struct.mbuf** %6, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = icmp eq %struct.mbuf* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %74

33:                                               ; preds = %22
  %34 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %35 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %34, i32 0, i32 2
  %36 = call i32 @mtx_lock_spin(i32* %35)
  %37 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %38 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %37, i32 0, i32 3
  %39 = load %struct.mbuf*, %struct.mbuf** %38, align 8
  %40 = icmp ne %struct.mbuf* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %43 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %42, i32 0, i32 2
  %44 = call i32 @mtx_unlock_spin(i32* %43)
  br label %74

45:                                               ; preds = %33
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = load i32, i32* @generic_mbuf_destructor, align 4
  %48 = call i32 @SET_MBUF_DESTRUCTOR(%struct.mbuf* %46, i32 %47)
  %49 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %50 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %51 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %50, i32 0, i32 3
  store %struct.mbuf* %49, %struct.mbuf** %51, align 8
  %52 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %53 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %52, i32 0, i32 2
  %54 = call i32 @mtx_unlock_spin(i32* %53)
  %55 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %56 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %55, i32 0, i32 1
  %57 = load %struct.mbuf**, %struct.mbuf*** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %57, i64 %58
  store %struct.mbuf* null, %struct.mbuf** %59, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %63 = icmp ne %struct.mbuf* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = call i32 @MBUF_REFCNT(%struct.mbuf* %65)
  br label %68

67:                                               ; preds = %45
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ -2, %67 ]
  %70 = call i32 @nm_prdis(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %60, %struct.mbuf* %61, i32 %69)
  %71 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %72 = call i32 @m_freem(%struct.mbuf* %71)
  %73 = call i32 (...) @smp_mb()
  br label %74

74:                                               ; preds = %68, %41, %32, %21
  ret void
}

declare dso_local i64 @nm_next(i32, i64) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @SET_MBUF_DESTRUCTOR(%struct.mbuf*, i32) #1

declare dso_local i32 @nm_prdis(i8*, i64, %struct.mbuf*, i32) #1

declare dso_local i32 @MBUF_REFCNT(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
