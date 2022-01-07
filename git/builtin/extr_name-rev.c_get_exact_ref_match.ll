; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_name-rev.c_get_exact_ref_match.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_name-rev.c_get_exact_ref_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tip_table = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@tipcmp = common dso_local global i32 0, align 4
@nth_tip_table_ent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object*)* @get_exact_ref_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_exact_ref_match(%struct.object* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.object*, align 8
  %4 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 1), align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 2), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  store i8* null, i8** %2, align 8
  br label %38

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 0), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 1), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 2), align 8
  %17 = load i32, i32* @tipcmp, align 4
  %18 = call i32 @QSORT(%struct.TYPE_7__* %15, i32 %16, i32 %17)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %14, %11
  %20 = load %struct.object*, %struct.object** %3, align 8
  %21 = getelementptr inbounds %struct.object, %struct.object* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 1), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 2), align 8
  %26 = load i32, i32* @nth_tip_table_ent, align 4
  %27 = call i32 @sha1_pos(i32 %23, %struct.TYPE_7__* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp sle i32 0, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @tip_table, i32 0, i32 1), align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %2, align 8
  br label %38

37:                                               ; preds = %19
  store i8* null, i8** %2, align 8
  br label %38

38:                                               ; preds = %37, %30, %10
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i32 @QSORT(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @sha1_pos(i32, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
