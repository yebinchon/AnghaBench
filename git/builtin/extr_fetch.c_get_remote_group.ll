; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_get_remote_group.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_get_remote_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.remote_group_data = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"remotes.\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @get_remote_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_remote_group(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.remote_group_data*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.remote_group_data*
  store %struct.remote_group_data* %10, %struct.remote_group_data** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @skip_prefix(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %4)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.remote_group_data*, %struct.remote_group_data** %7, align 8
  %17 = getelementptr inbounds %struct.remote_group_data, %struct.remote_group_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i8* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcspn(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.remote_group_data*, %struct.remote_group_data** %7, align 8
  %33 = getelementptr inbounds %struct.remote_group_data, %struct.remote_group_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @xstrndup(i8* %35, i64 %36)
  %38 = call i32 @string_list_append_nodup(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %31, %26
  %40 = load i64, i64* %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = add i64 %40, %48
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %5, align 8
  br label %22

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52, %14, %3
  ret i32 0
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @string_list_append_nodup(i32, i32) #1

declare dso_local i32 @xstrndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
