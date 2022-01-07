; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_buf_get_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/camdd/extr_camdd.c_camdd_buf_get_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camdd_buf = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.camdd_buf_data, %struct.camdd_buf_indirect }
%struct.camdd_buf_data = type { i32 }
%struct.camdd_buf_indirect = type { i32 }

@CAMDD_BUF_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @camdd_buf_get_len(%struct.camdd_buf* %0) #0 {
  %2 = alloca %struct.camdd_buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.camdd_buf_indirect*, align 8
  %5 = alloca %struct.camdd_buf_data*, align 8
  store %struct.camdd_buf* %0, %struct.camdd_buf** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.camdd_buf*, %struct.camdd_buf** %2, align 8
  %7 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CAMDD_BUF_DATA, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.camdd_buf*, %struct.camdd_buf** %2, align 8
  %13 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.camdd_buf_indirect* %14, %struct.camdd_buf_indirect** %4, align 8
  %15 = load %struct.camdd_buf_indirect*, %struct.camdd_buf_indirect** %4, align 8
  %16 = getelementptr inbounds %struct.camdd_buf_indirect, %struct.camdd_buf_indirect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.camdd_buf*, %struct.camdd_buf** %2, align 8
  %20 = getelementptr inbounds %struct.camdd_buf, %struct.camdd_buf* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.camdd_buf_data* %21, %struct.camdd_buf_data** %5, align 8
  %22 = load %struct.camdd_buf_data*, %struct.camdd_buf_data** %5, align 8
  %23 = getelementptr inbounds %struct.camdd_buf_data, %struct.camdd_buf_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
