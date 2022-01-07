; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_src_iids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_cxt.c_ecore_cxt_src_iids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_cxt_mngr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ecore_src_iids = type { i32, i32 }

@MAX_CONN_TYPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_cxt_mngr*, %struct.ecore_src_iids*)* @ecore_cxt_src_iids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_cxt_src_iids(%struct.ecore_cxt_mngr* %0, %struct.ecore_src_iids* %1) #0 {
  %3 = alloca %struct.ecore_cxt_mngr*, align 8
  %4 = alloca %struct.ecore_src_iids*, align 8
  %5 = alloca i64, align 8
  store %struct.ecore_cxt_mngr* %0, %struct.ecore_cxt_mngr** %3, align 8
  store %struct.ecore_src_iids* %1, %struct.ecore_src_iids** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %42, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MAX_CONN_TYPES, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @src_proto(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %42

15:                                               ; preds = %10
  %16 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ecore_src_iids*, %struct.ecore_src_iids** %4, align 8
  %24 = getelementptr inbounds %struct.ecore_src_iids, %struct.ecore_src_iids* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %30 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ecore_src_iids*, %struct.ecore_src_iids** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_src_iids, %struct.ecore_src_iids* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %15, %14
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %6

45:                                               ; preds = %6
  %46 = load %struct.ecore_cxt_mngr*, %struct.ecore_cxt_mngr** %3, align 8
  %47 = getelementptr inbounds %struct.ecore_cxt_mngr, %struct.ecore_cxt_mngr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ecore_src_iids*, %struct.ecore_src_iids** %4, align 8
  %50 = getelementptr inbounds %struct.ecore_src_iids, %struct.ecore_src_iids* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  ret void
}

declare dso_local i32 @src_proto(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
