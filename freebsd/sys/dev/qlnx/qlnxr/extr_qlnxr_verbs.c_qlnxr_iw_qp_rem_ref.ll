; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_qp_rem_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_qp_rem_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.qlnxr_qp = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"enter ibqp = %p qp = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"exit \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_iw_qp_rem_ref(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.qlnxr_qp*, align 8
  %4 = alloca i32*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %5 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %6 = call %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp* %5)
  store %struct.qlnxr_qp* %6, %struct.qlnxr_qp** %3, align 8
  %7 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %8 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %14 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %15 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.ib_qp* %13, %struct.qlnxr_qp* %14)
  %16 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %17 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %16, i32 0, i32 2
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %22 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %25 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @qlnxr_idr_remove(%struct.TYPE_2__* %23, i32 %26)
  %28 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %29 = call i32 @kfree(%struct.qlnxr_qp* %28)
  br label %30

30:                                               ; preds = %20, %1
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @qlnxr_idr_remove(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
