; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_prealloc_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_prealloc_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ecore_iwarp_ep = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_IWARP_PREALLOC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32)* @ecore_iwarp_prealloc_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_prealloc_ep(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_iwarp_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ECORE_IWARP_PREALLOC_CNT, align 4
  store i32 %15, i32* %9, align 4
  br label %17

16:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %14
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %71, %17
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %18
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %24 = call i32 @ecore_iwarp_create_ep(%struct.ecore_hwfn* %23, %struct.ecore_iwarp_ep** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ECORE_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %35 = call i32 @ecore_iwarp_alloc_cid(%struct.ecore_hwfn* %34, i32* %8)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ECORE_SUCCESS, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %76

40:                                               ; preds = %33
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @ecore_iwarp_set_tcp_cid(%struct.ecore_hwfn* %41, i32 %42)
  br label %47

44:                                               ; preds = %30
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %46 = call i32 @ecore_iwarp_alloc_tcp_cid(%struct.ecore_hwfn* %45, i32* %8)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %50 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @OSAL_SPIN_LOCK(i32* %55)
  %57 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %58 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %57, i32 0, i32 0
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %60 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i32 @OSAL_LIST_PUSH_TAIL(i32* %58, i32* %63)
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %66 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @OSAL_SPIN_UNLOCK(i32* %69)
  br label %71

71:                                               ; preds = %47
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %18

74:                                               ; preds = %18
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %81

76:                                               ; preds = %39
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %78 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %6, align 8
  %79 = call i32 @ecore_iwarp_destroy_ep(%struct.ecore_hwfn* %77, %struct.ecore_iwarp_ep* %78, i32 0)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %76, %74, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @ecore_iwarp_create_ep(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep**) #1

declare dso_local i32 @ecore_iwarp_alloc_cid(%struct.ecore_hwfn*, i32*) #1

declare dso_local i32 @ecore_iwarp_set_tcp_cid(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_iwarp_alloc_tcp_cid(%struct.ecore_hwfn*, i32*) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @OSAL_LIST_PUSH_TAIL(i32*, i32*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @ecore_iwarp_destroy_ep(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
