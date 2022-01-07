; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_show_diff.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_show_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_list = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32, i32* }

@show_outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to generate diff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_list*)* @show_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_diff(%struct.merge_list* %0) #0 {
  %2 = alloca %struct.merge_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  store %struct.merge_list* %0, %struct.merge_list** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = call i32 @memset(%struct.TYPE_12__* %7, i32 0, i32 4)
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 3, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load i32, i32* @show_outf, align 4
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %17 = call i32 @origin(%struct.merge_list* %16, i64* %3)
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %27 = call i32 @result(%struct.merge_list* %26, i64* %3)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = call i64 @xdi_diff(%struct.TYPE_14__* %4, %struct.TYPE_14__* %5, %struct.TYPE_11__* %6, %struct.TYPE_12__* %7, %struct.TYPE_13__* %8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @free(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @free(i32 %45)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @origin(%struct.merge_list*, i64*) #1

declare dso_local i32 @result(%struct.merge_list*, i64*) #1

declare dso_local i64 @xdi_diff(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
