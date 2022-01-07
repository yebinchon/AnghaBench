; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_log.c_log_show_early.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_log.c_log_show_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.rev_info = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"incomplete\00", align 1
@early_output_timer = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ITIMER_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit_list*)* @log_show_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_show_early(%struct.rev_info* %0, %struct.commit_list* %1) #0 {
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  store %struct.commit_list* %1, %struct.commit_list** %4, align 8
  %10 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %11 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %17 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sort_in_topological_order(%struct.commit_list** %4, i32 %22)
  br label %24

24:                                               ; preds = %65, %2
  %25 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %26 = icmp ne %struct.commit_list* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %69

32:                                               ; preds = %30
  %33 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %34 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %33, i32 0, i32 1
  %35 = load %struct.commit*, %struct.commit** %34, align 8
  store %struct.commit* %35, %struct.commit** %8, align 8
  %36 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %37 = load %struct.commit*, %struct.commit** %8, align 8
  %38 = call i32 @simplify_commit(%struct.rev_info* %36, %struct.commit* %37)
  switch i32 %38, label %65 [
    i32 128, label %39
    i32 129, label %54
    i32 130, label %55
  ]

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %44 = call i32 @estimate_commit_count(%struct.commit_list* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @show_early_header(%struct.rev_info* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %50 = load %struct.commit*, %struct.commit** %8, align 8
  %51 = call i32 @log_tree_commit(%struct.rev_info* %49, %struct.commit* %50)
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  br label %65

54:                                               ; preds = %32
  br label %65

55:                                               ; preds = %32
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %60 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fclose(i32 %62)
  br label %64

64:                                               ; preds = %58, %55
  br label %85

65:                                               ; preds = %32, %54, %48
  %66 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %67 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %66, i32 0, i32 0
  %68 = load %struct.commit_list*, %struct.commit_list** %67, align 8
  store %struct.commit_list* %68, %struct.commit_list** %4, align 8
  br label %24

69:                                               ; preds = %30
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %77 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @fclose(i32 %79)
  br label %81

81:                                               ; preds = %75, %72
  br label %85

82:                                               ; preds = %69
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @early_output_timer, i32 0, i32 0, i32 1), align 8
  store i32 500000, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @early_output_timer, i32 0, i32 0, i32 0), align 8
  %83 = load i32, i32* @ITIMER_REAL, align 4
  %84 = call i32 @setitimer(i32 %83, %struct.TYPE_7__* @early_output_timer, i32* null)
  br label %85

85:                                               ; preds = %82, %81, %64
  ret void
}

declare dso_local i32 @sort_in_topological_order(%struct.commit_list**, i32) #1

declare dso_local i32 @simplify_commit(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @estimate_commit_count(%struct.commit_list*) #1

declare dso_local i32 @show_early_header(%struct.rev_info*, i8*, i32) #1

declare dso_local i32 @log_tree_commit(%struct.rev_info*, %struct.commit*) #1

declare dso_local i32 @fclose(i32) #1

declare dso_local i32 @setitimer(i32, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
