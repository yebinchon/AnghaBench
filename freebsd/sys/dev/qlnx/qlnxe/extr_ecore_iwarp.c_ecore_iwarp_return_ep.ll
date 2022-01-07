; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_return_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_return_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_iwarp_ep = type { i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8* }

@ECORE_IWARP_EP_INIT = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_IWARP_INVALID_TCP_CID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*)* @ecore_iwarp_return_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iwarp_return_ep(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_ep* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_iwarp_ep*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_iwarp_ep* %1, %struct.ecore_iwarp_ep** %4, align 8
  %5 = load i32, i32* @ECORE_IWARP_EP_INIT, align 4
  %6 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %7 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8*, i8** @OSAL_NULL, align 8
  %14 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %15 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i8* %13, i8** %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i8*, i8** @OSAL_NULL, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  %21 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %22 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %21, i32 0, i32 2
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %22, align 8
  %23 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %24 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %23, i32 0, i32 1
  %25 = call i32 @OSAL_MEMSET(i32* %24, i32 0, i32 4)
  %26 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ECORE_IWARP_INVALID_TCP_CID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %33 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %33, i32 0, i32 0
  %35 = call i32 @ecore_iwarp_alloc_tcp_cid(%struct.ecore_hwfn* %32, i64* %34)
  br label %36

36:                                               ; preds = %31, %18
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %39 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %4, align 8
  %44 = call i32 @ecore_iwarp_move_to_ep_list(%struct.ecore_hwfn* %37, i32* %42, %struct.ecore_iwarp_ep* %43)
  ret void
}

declare dso_local i32 @OSAL_MEMSET(i32*, i32, i32) #1

declare dso_local i32 @ecore_iwarp_alloc_tcp_cid(%struct.ecore_hwfn*, i64*) #1

declare dso_local i32 @ecore_iwarp_move_to_ep_list(%struct.ecore_hwfn*, i32*, %struct.ecore_iwarp_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
