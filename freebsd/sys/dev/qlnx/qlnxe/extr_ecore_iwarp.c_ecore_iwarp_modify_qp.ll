; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_modify_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_rdma_qp = type { i32, i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"QP(0x%x) %s --> %s %s\0A\00", align 1
@iwarp_state_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iwarp_modify_qp(%struct.ecore_hwfn* %0, %struct.ecore_rdma_qp* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_rdma_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @OSAL_SPIN_LOCK(i32* %17)
  %19 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @OSAL_SPIN_UNLOCK(i32* %30)
  %32 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %32, i32* %5, align 4
  br label %119

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  switch i32 %34, label %81 [
    i32 130, label %35
    i32 129, label %49
    i32 131, label %67
    i32 128, label %77
    i32 132, label %77
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %47 [
    i32 129, label %37
    i32 131, label %40
  ]

37:                                               ; preds = %35
  %38 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %38, i32 0, i32 0
  store i32 129, i32* %39, align 4
  br label %48

40:                                               ; preds = %35
  %41 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %42 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %41, i32 0, i32 0
  store i32 131, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %48

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %46, %37
  br label %82

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %65 [
    i32 132, label %51
    i32 131, label %58
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %57 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %56, i32 0, i32 0
  store i32 132, i32* %57, align 4
  br label %66

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %64 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %63, i32 0, i32 0
  store i32 131, i32* %64, align 4
  br label %66

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %62, %55
  br label %82

67:                                               ; preds = %33
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %74 [
    i32 130, label %69
    i32 132, label %73
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %72 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %76

73:                                               ; preds = %67
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %73, %69
  br label %82

77:                                               ; preds = %33, %33
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %80 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %82

81:                                               ; preds = %33
  br label %82

82:                                               ; preds = %81, %77, %76, %66, %48
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %84 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %85 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %86 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @iwarp_state_names, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @iwarp_state_names, align 8
  %94 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %95 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %104 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %83, i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %92, i32 %99, i8* %103)
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %106 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = call i32 @OSAL_SPIN_UNLOCK(i32* %109)
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %82
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %115 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %7, align 8
  %116 = call i32 @ecore_iwarp_modify_fw(%struct.ecore_hwfn* %114, %struct.ecore_rdma_qp* %115)
  br label %117

117:                                              ; preds = %113, %82
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %25
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @ecore_iwarp_modify_fw(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
