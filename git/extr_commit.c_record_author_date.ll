; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_record_author_date.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_record_author_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.author_date_slab = type { i32 }
%struct.commit = type { i32 }
%struct.ident_split = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"author\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_author_date(%struct.author_date_slab* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.author_date_slab*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ident_split, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.author_date_slab* %0, %struct.author_date_slab** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %11 = load %struct.commit*, %struct.commit** %4, align 8
  %12 = call i8* @get_commit_buffer(%struct.commit* %11, i32* null)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @find_commit_header(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %8)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %46

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @split_ident_line(%struct.ident_split* %6, i8* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %23, %18
  br label %46

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @parse_timestamp(i32 %34, i8** %9, i32 10)
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %6, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.author_date_slab*, %struct.author_date_slab** %3, align 8
  %44 = load %struct.commit*, %struct.commit** %4, align 8
  %45 = call i32* @author_date_slab_at(%struct.author_date_slab* %43, %struct.commit* %44)
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %40, %31, %17
  %47 = load %struct.commit*, %struct.commit** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @unuse_commit_buffer(%struct.commit* %47, i8* %48)
  ret void
}

declare dso_local i8* @get_commit_buffer(%struct.commit*, i32*) #1

declare dso_local i8* @find_commit_header(i8*, i8*, i64*) #1

declare dso_local i64 @split_ident_line(%struct.ident_split*, i8*, i64) #1

declare dso_local i32 @parse_timestamp(i32, i8**, i32) #1

declare dso_local i32* @author_date_slab_at(%struct.author_date_slab*, %struct.commit*) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
