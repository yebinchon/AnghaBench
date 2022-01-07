; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_resp_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_process_resp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_qp = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ib_wc = type { i32*, i32, i64, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"exit cnt = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_qp*, i32, %struct.ib_wc*, i64)* @process_resp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_resp_flush(%struct.qlnxr_qp* %0, i32 %1, %struct.ib_wc* %2, i64 %3) #0 {
  %5 = alloca %struct.qlnxr_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.qlnxr_qp* %0, %struct.qlnxr_qp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %12 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %85, %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %23 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i1 [ false, %18 ], [ %27, %21 ]
  br i1 %29, label %30, label %89

30:                                               ; preds = %28
  %31 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %32 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %35 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %39 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %42 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %46 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %49 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %58 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %57, i32 0, i32 2
  %59 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %60 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ib_wc*, %struct.ib_wc** %7, align 8
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %63, i32 1
  store %struct.ib_wc* %64, %struct.ib_wc** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %80, %30
  %68 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %69 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %72 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %67
  %81 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %82 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = call i32 @ecore_chain_consume(i32* %83)
  br label %67

85:                                               ; preds = %67
  %86 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %87 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %86, i32 0, i32 0
  %88 = call i32 @qlnxr_inc_sw_cons(%struct.TYPE_6__* %87)
  br label %18

89:                                               ; preds = %28
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i32
  ret i32 %94
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @ecore_chain_consume(i32*) #1

declare dso_local i32 @qlnxr_inc_sw_cons(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
