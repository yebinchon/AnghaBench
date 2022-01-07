; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-base.c_show_merge_base.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-base.c_show_merge_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit**, i32, i32)* @show_merge_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_merge_base(%struct.commit** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.commit_list*, align 8
  store %struct.commit** %0, %struct.commit*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.commit**, %struct.commit*** %5, align 8
  %11 = getelementptr inbounds %struct.commit*, %struct.commit** %10, i64 0
  %12 = load %struct.commit*, %struct.commit** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load %struct.commit**, %struct.commit*** %5, align 8
  %16 = getelementptr inbounds %struct.commit*, %struct.commit** %15, i64 1
  %17 = call %struct.commit_list* @get_merge_bases_many_dirty(%struct.commit* %12, i32 %14, %struct.commit** %16)
  store %struct.commit_list* %17, %struct.commit_list** %8, align 8
  %18 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %19 = icmp ne %struct.commit_list* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  store %struct.commit_list* %22, %struct.commit_list** %9, align 8
  br label %23

23:                                               ; preds = %38, %21
  %24 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %25 = icmp ne %struct.commit_list* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %28 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i8* @oid_to_hex(i32* %31)
  %33 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %42

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %40 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %39, i32 0, i32 1
  %41 = load %struct.commit_list*, %struct.commit_list** %40, align 8
  store %struct.commit_list* %41, %struct.commit_list** %9, align 8
  br label %23

42:                                               ; preds = %36, %23
  %43 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %44 = call i32 @free_commit_list(%struct.commit_list* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %20
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.commit_list* @get_merge_bases_many_dirty(%struct.commit*, i32, %struct.commit**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
