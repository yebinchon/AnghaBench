; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-base.c_handle_independent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-base.c_handle_independent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @handle_independent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_independent(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.commit_list* null, %struct.commit_list** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @get_commit_reference(i8* %19)
  %21 = call i32 @commit_list_insert(i32 %20, %struct.commit_list** %6)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %8, align 4
  br label %11

25:                                               ; preds = %11
  %26 = call i32 @reduce_heads_replace(%struct.commit_list** %6)
  %27 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %28 = icmp ne %struct.commit_list* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %50

30:                                               ; preds = %25
  %31 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %31, %struct.commit_list** %7, align 8
  br label %32

32:                                               ; preds = %43, %30
  %33 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %34 = icmp ne %struct.commit_list* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %37 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i8* @oid_to_hex(i32* %40)
  %42 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %35
  %44 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %45 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %44, i32 0, i32 1
  %46 = load %struct.commit_list*, %struct.commit_list** %45, align 8
  store %struct.commit_list* %46, %struct.commit_list** %7, align 8
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %49 = call i32 @free_commit_list(%struct.commit_list* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %29
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @commit_list_insert(i32, %struct.commit_list**) #1

declare dso_local i32 @get_commit_reference(i8*) #1

declare dso_local i32 @reduce_heads_replace(%struct.commit_list**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
