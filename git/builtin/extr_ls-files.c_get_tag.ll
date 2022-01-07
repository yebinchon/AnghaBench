; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_get_tag.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }

@get_tag.alttag = internal global [4 x i8] zeroinitializer, align 1
@show_valid_bit = common dso_local global i64 0, align 8
@CE_VALID = common dso_local global i32 0, align 4
@show_fsmonitor_bit = common dso_local global i64 0, align 8
@CE_FSMONITOR_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cache_entry*, i8*)* @get_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_tag(%struct.cache_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %7
  %13 = load i64, i64* @show_valid_bit, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %17 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CE_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %15, %12
  %23 = load i64, i64* @show_fsmonitor_bit, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CE_FSMONITOR_VALID, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %25, %15
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @memcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 0), i8* %33, i32 3)
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isalpha(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = call signext i8 @tolower(i8 signext %43)
  store i8 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 0), align 1
  br label %57

45:                                               ; preds = %32
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 63
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i8 33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 0), align 1
  br label %56

52:                                               ; preds = %45
  store i8 118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 0), align 1
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 1), align 1
  store i8 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 2), align 1
  store i8 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 3), align 1
  br label %56

56:                                               ; preds = %52, %51
  br label %57

57:                                               ; preds = %56, %40
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @get_tag.alttag, i64 0, i64 0), i8** %4, align 8
  br label %58

58:                                               ; preds = %57, %25, %22, %7, %2
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
