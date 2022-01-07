; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_cmd_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cmd.c_mthca_cmd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.mthca_cmd_context* }
%struct.mthca_cmd_context = type { i64, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_cmd_event(%struct.mthca_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mthca_cmd_context*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %14, %18
  %20 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %13, i64 %19
  store %struct.mthca_cmd_context* %20, %struct.mthca_cmd_context** %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %9, align 8
  %23 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %39

27:                                               ; preds = %4
  %28 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %9, align 8
  %29 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %9, align 8
  %32 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %9, align 8
  %35 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mthca_cmd_context*, %struct.mthca_cmd_context** %9, align 8
  %37 = getelementptr inbounds %struct.mthca_cmd_context, %struct.mthca_cmd_context* %36, i32 0, i32 1
  %38 = call i32 @complete(i32* %37)
  br label %39

39:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
