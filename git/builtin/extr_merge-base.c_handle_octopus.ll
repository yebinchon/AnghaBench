; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-base.c_handle_octopus.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-base.c_handle_octopus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @handle_octopus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_octopus(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.commit_list* null, %struct.commit_list** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %11, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @get_commit_reference(i8* %22)
  %24 = call i32 @commit_list_insert(i32 %23, %struct.commit_list** %8)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %11, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %30 = call %struct.commit_list* @get_octopus_merge_bases(%struct.commit_list* %29)
  store %struct.commit_list* %30, %struct.commit_list** %9, align 8
  %31 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %32 = call i32 @free_commit_list(%struct.commit_list* %31)
  %33 = call i32 @reduce_heads_replace(%struct.commit_list** %9)
  %34 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %35 = icmp ne %struct.commit_list* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  store %struct.commit_list* %38, %struct.commit_list** %10, align 8
  br label %39

39:                                               ; preds = %54, %37
  %40 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %41 = icmp ne %struct.commit_list* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %44 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i8* @oid_to_hex(i32* %47)
  %49 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %58

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %56 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %55, i32 0, i32 1
  %57 = load %struct.commit_list*, %struct.commit_list** %56, align 8
  store %struct.commit_list* %57, %struct.commit_list** %10, align 8
  br label %39

58:                                               ; preds = %52, %39
  %59 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %60 = call i32 @free_commit_list(%struct.commit_list* %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %36
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @commit_list_insert(i32, %struct.commit_list**) #1

declare dso_local i32 @get_commit_reference(i8*) #1

declare dso_local %struct.commit_list* @get_octopus_merge_bases(%struct.commit_list*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @reduce_heads_replace(%struct.commit_list**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
