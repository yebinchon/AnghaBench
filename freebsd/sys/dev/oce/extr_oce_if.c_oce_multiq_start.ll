; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_multiq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_multiq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.oce_wq**, i32 }
%struct.oce_wq = type { i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @oce_multiq_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_multiq_start(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.oce_wq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  store %struct.oce_wq* null, %struct.oce_wq** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %20)
  %22 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = srem i32 %28, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %24, %19
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.oce_wq**, %struct.oce_wq*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.oce_wq*, %struct.oce_wq** %36, i64 %38
  %40 = load %struct.oce_wq*, %struct.oce_wq** %39, align 8
  store %struct.oce_wq* %40, %struct.oce_wq** %7, align 8
  %41 = load %struct.oce_wq*, %struct.oce_wq** %7, align 8
  %42 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %41, i32 0, i32 0
  %43 = call i32 @LOCK(i32* %42)
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = load %struct.oce_wq*, %struct.oce_wq** %7, align 8
  %47 = call i32 @oce_multiq_transmit(%struct.ifnet* %44, %struct.mbuf* %45, %struct.oce_wq* %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.oce_wq*, %struct.oce_wq** %7, align 8
  %49 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %48, i32 0, i32 0
  %50 = call i32 @UNLOCK(i32* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %33, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @oce_multiq_transmit(%struct.ifnet*, %struct.mbuf*, %struct.oce_wq*) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
