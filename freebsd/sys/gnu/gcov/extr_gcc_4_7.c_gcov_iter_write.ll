; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_iter_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_iter_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_iterator = type { i64, i64, i64 }
%struct.sbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ITER_STRIDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcov_iter_write(%struct.gcov_iterator* %0, %struct.sbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gcov_iterator*, align 8
  %5 = alloca %struct.sbuf*, align 8
  %6 = alloca i64, align 8
  store %struct.gcov_iterator* %0, %struct.gcov_iterator** %4, align 8
  store %struct.sbuf* %1, %struct.sbuf** %5, align 8
  %7 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %8 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %11 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load i64, i64* @ITER_STRIDE, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %19 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %24 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %16
  %28 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %29 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %32 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %27, %16
  %36 = load %struct.sbuf*, %struct.sbuf** %5, align 8
  %37 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.gcov_iterator*, %struct.gcov_iterator** %4, align 8
  %41 = getelementptr inbounds %struct.gcov_iterator, %struct.gcov_iterator* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %39, %42
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @sbuf_bcat(%struct.sbuf* %36, i64 %43, i64 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %35, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
