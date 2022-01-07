; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_qp_add_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_qp_add_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.qlnxr_qp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"enter ibqp = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"exit \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlnxr_iw_qp_add_ref(%struct.ib_qp* %0) #0 {
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
  %14 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.ib_qp* %13)
  %15 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %3, align 8
  %16 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %15, i32 0, i32 0
  %17 = call i32 @atomic_inc(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.qlnxr_qp* @get_qlnxr_qp(%struct.ib_qp*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
