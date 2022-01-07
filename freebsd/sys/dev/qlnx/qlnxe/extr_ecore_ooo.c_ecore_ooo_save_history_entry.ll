; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_save_history_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ooo.c_ecore_ooo_save_history_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_ooo_info = type { %struct.ecore_ooo_history }
%struct.ecore_ooo_history = type { i64, i64, %struct.ooo_opaque* }
%struct.ooo_opaque = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_ooo_save_history_entry(%struct.ecore_ooo_info* %0, %struct.ooo_opaque* %1) #0 {
  %3 = alloca %struct.ecore_ooo_info*, align 8
  %4 = alloca %struct.ooo_opaque*, align 8
  %5 = alloca %struct.ecore_ooo_history*, align 8
  store %struct.ecore_ooo_info* %0, %struct.ecore_ooo_info** %3, align 8
  store %struct.ooo_opaque* %1, %struct.ooo_opaque** %4, align 8
  %6 = load %struct.ecore_ooo_info*, %struct.ecore_ooo_info** %3, align 8
  %7 = getelementptr inbounds %struct.ecore_ooo_info, %struct.ecore_ooo_info* %6, i32 0, i32 0
  store %struct.ecore_ooo_history* %7, %struct.ecore_ooo_history** %5, align 8
  %8 = load %struct.ecore_ooo_history*, %struct.ecore_ooo_history** %5, align 8
  %9 = getelementptr inbounds %struct.ecore_ooo_history, %struct.ecore_ooo_history* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ecore_ooo_history*, %struct.ecore_ooo_history** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_ooo_history, %struct.ecore_ooo_history* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.ecore_ooo_history*, %struct.ecore_ooo_history** %5, align 8
  %17 = getelementptr inbounds %struct.ecore_ooo_history, %struct.ecore_ooo_history* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.ecore_ooo_history*, %struct.ecore_ooo_history** %5, align 8
  %20 = getelementptr inbounds %struct.ecore_ooo_history, %struct.ecore_ooo_history* %19, i32 0, i32 2
  %21 = load %struct.ooo_opaque*, %struct.ooo_opaque** %20, align 8
  %22 = load %struct.ecore_ooo_history*, %struct.ecore_ooo_history** %5, align 8
  %23 = getelementptr inbounds %struct.ecore_ooo_history, %struct.ecore_ooo_history* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ooo_opaque, %struct.ooo_opaque* %21, i64 %24
  %26 = load %struct.ooo_opaque*, %struct.ooo_opaque** %4, align 8
  %27 = bitcast %struct.ooo_opaque* %25 to i8*
  %28 = bitcast %struct.ooo_opaque* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.ecore_ooo_history*, %struct.ecore_ooo_history** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_ooo_history, %struct.ecore_ooo_history* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
