; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_show_result_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_show_result_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_list = type { i64, i32, i8*, %struct.TYPE_4__*, %struct.merge_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@show_result_list.desc = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"their\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  %-6s %o %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_list*)* @show_result_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_result_list(%struct.merge_list* %0) #0 {
  %2 = alloca %struct.merge_list*, align 8
  %3 = alloca %struct.merge_list*, align 8
  store %struct.merge_list* %0, %struct.merge_list** %2, align 8
  %4 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %5 = call i8* @explanation(%struct.merge_list* %4)
  %6 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %5)
  br label %7

7:                                                ; preds = %30, %1
  %8 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %9 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %8, i32 0, i32 4
  %10 = load %struct.merge_list*, %struct.merge_list** %9, align 8
  store %struct.merge_list* %10, %struct.merge_list** %3, align 8
  %11 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %12 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds [4 x i8*], [4 x i8*]* @show_result_list.desc, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %17 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %20 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i8* @oid_to_hex(i32* %23)
  %25 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %26 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %15, i32 %18, i8* %24, i8* %27)
  %29 = load %struct.merge_list*, %struct.merge_list** %3, align 8
  store %struct.merge_list* %29, %struct.merge_list** %2, align 8
  br label %30

30:                                               ; preds = %7
  %31 = load %struct.merge_list*, %struct.merge_list** %2, align 8
  %32 = icmp ne %struct.merge_list* %31, null
  br i1 %32, label %7, label %33

33:                                               ; preds = %30
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @explanation(%struct.merge_list*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
