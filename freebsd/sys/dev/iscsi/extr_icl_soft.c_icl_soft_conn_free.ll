; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_conn_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_conn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i64, i32, i32 }
%struct.kobj = type { i32 }

@M_ICL_SOFT = common dso_local global i32 0, align 4
@icl_ncons = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icl_soft_conn_free(%struct.icl_conn* %0) #0 {
  %2 = alloca %struct.icl_conn*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %2, align 8
  %3 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %4 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %3, i32 0, i32 2
  %5 = call i32 @cv_destroy(i32* %4)
  %6 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %7 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %6, i32 0, i32 1
  %8 = call i32 @cv_destroy(i32* %7)
  %9 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %10 = bitcast %struct.icl_conn* %9 to %struct.kobj*
  %11 = load i32, i32* @M_ICL_SOFT, align 4
  %12 = call i32 @kobj_delete(%struct.kobj* %10, i32 %11)
  %13 = call i32 @refcount_release(i32* @icl_ncons)
  ret void
}

declare dso_local i32 @cv_destroy(i32*) #1

declare dso_local i32 @kobj_delete(%struct.kobj*, i32) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
