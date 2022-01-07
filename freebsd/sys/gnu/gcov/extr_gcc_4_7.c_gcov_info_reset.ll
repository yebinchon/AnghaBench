; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_info_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcc_4_7.c_gcov_info_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.gcov_ctr_info* }
%struct.gcov_ctr_info = type { i32, i32 }

@GCOV_COUNTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gcov_info_reset(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca %struct.gcov_ctr_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gcov_info* %0, %struct.gcov_info** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %9 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %52

12:                                               ; preds = %6
  %13 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %14 = getelementptr inbounds %struct.gcov_info, %struct.gcov_info* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %20, align 8
  store %struct.gcov_ctr_info* %21, %struct.gcov_ctr_info** %3, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %45, %12
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @GCOV_COUNTERS, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @counter_active(%struct.gcov_info* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %45

32:                                               ; preds = %26
  %33 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %3, align 8
  %34 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %3, align 8
  %37 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32 %35, i32 0, i32 %41)
  %43 = load %struct.gcov_ctr_info*, %struct.gcov_ctr_info** %3, align 8
  %44 = getelementptr inbounds %struct.gcov_ctr_info, %struct.gcov_ctr_info* %43, i32 1
  store %struct.gcov_ctr_info* %44, %struct.gcov_ctr_info** %3, align 8
  br label %45

45:                                               ; preds = %32, %31
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %22

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %6

52:                                               ; preds = %6
  ret void
}

declare dso_local i32 @counter_active(%struct.gcov_info*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
