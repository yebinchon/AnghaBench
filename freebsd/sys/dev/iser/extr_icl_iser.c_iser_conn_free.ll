; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32 }
%struct.iser_conn = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.kobj = type { i32 }

@M_ICL_ISER = common dso_local global i32 0, align 4
@icl_iser_ncons = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_free(%struct.icl_conn* %0) #0 {
  %2 = alloca %struct.icl_conn*, align 8
  %3 = alloca %struct.iser_conn*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %2, align 8
  %4 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %5 = call %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn* %4)
  store %struct.iser_conn* %5, %struct.iser_conn** %3, align 8
  %6 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %7 = call i32 @iser_conn_release(%struct.icl_conn* %6)
  %8 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = call i32 @mtx_destroy(i32* %10)
  %12 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %13 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = call i32 @cv_destroy(i32* %15)
  %17 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %18 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @mtx_destroy(i32* %20)
  %22 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %23 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %22, i32 0, i32 1
  %24 = call i32 @sx_destroy(i32* %23)
  %25 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 0
  %27 = call i32 @cv_destroy(i32* %26)
  %28 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %29 = bitcast %struct.iser_conn* %28 to %struct.kobj*
  %30 = load i32, i32* @M_ICL_ISER, align 4
  %31 = call i32 @kobj_delete(%struct.kobj* %29, i32 %30)
  %32 = call i32 @refcount_release(i32* @icl_iser_ncons)
  ret void
}

declare dso_local %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn*) #1

declare dso_local i32 @iser_conn_release(%struct.icl_conn*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @kobj_delete(%struct.kobj*, i32) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
