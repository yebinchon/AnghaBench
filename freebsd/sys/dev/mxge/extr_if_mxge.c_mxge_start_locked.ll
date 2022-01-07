; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxge_slice_state = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxge_slice_state*)* @mxge_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_start_locked(%struct.mxge_slice_state* %0) #0 {
  %2 = alloca %struct.mxge_slice_state*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.mxge_slice_state* %0, %struct.mxge_slice_state** %2, align 8
  %7 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %8 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %3, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %5, align 8
  %13 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %14 = getelementptr inbounds %struct.mxge_slice_state, %struct.mxge_slice_state* %13, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %6, align 8
  br label %15

15:                                               ; preds = %39, %1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = sub nsw i64 %18, %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %15
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 1
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = call i32 @IFQ_DRV_DEQUEUE(i32* %33, %struct.mbuf* %34)
  %36 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %37 = icmp eq %struct.mbuf* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %67

39:                                               ; preds = %31
  %40 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %42 = call i32 @BPF_MTAP(%struct.ifnet* %40, %struct.mbuf* %41)
  %43 = load %struct.mxge_slice_state*, %struct.mxge_slice_state** %2, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %45 = call i32 @mxge_encap(%struct.mxge_slice_state* %43, %struct.mbuf* %44)
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.ifnet*, %struct.ifnet** %48, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %46
  %56 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.ifnet*, %struct.ifnet** %58, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %56
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %38, %55, %46
  ret void
}

declare dso_local i32 @IFQ_DRV_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @mxge_encap(%struct.mxge_slice_state*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
