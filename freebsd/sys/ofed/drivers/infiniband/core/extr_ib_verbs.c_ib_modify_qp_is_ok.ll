; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_qp_is_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_qp_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }

@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@IB_QPS_RTS = common dso_local global i32 0, align 4
@IB_QPS_SQD = common dso_local global i32 0, align 4
@IB_QPS_SQE = common dso_local global i32 0, align 4
@qp_state_table = common dso_local global %struct.TYPE_2__** null, align 8
@IB_QP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_modify_qp_is_ok(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IB_QPS_ERR, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = icmp ult i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @IB_QPS_ERR, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %20, %16, %5
  store i32 0, i32* %6, align 4
  br label %110

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @IB_QPS_RTR, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IB_QPS_RTS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @IB_QPS_SQD, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IB_QPS_SQE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %110

50:                                               ; preds = %45, %41, %37, %33, %28
  %51 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @qp_state_table, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %51, i64 %53
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %110

63:                                               ; preds = %50
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @qp_state_table, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @qp_state_table, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %78, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %110

98:                                               ; preds = %63
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @IB_QP_STATE, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %99, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %110

109:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %108, %97, %62, %49, %27
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
