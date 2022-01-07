; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_chmod_path.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_chmod_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }

@active_cache = common dso_local global %struct.cache_entry** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"chmod %cx '%s'\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"git update-index: cannot chmod %cx '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*)* @chmod_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chmod_path(i8 signext %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = call i32 @cache_name_pos(i8* %7, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.cache_entry**, %struct.cache_entry*** @active_cache, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %15, i64 %17
  %19 = load %struct.cache_entry*, %struct.cache_entry** %18, align 8
  store %struct.cache_entry* %19, %struct.cache_entry** %6, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %21 = load i8, i8* %3, align 1
  %22 = call i64 @chmod_cache_entry(%struct.cache_entry* %20, i8 signext %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  %26 = load i8, i8* %3, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8 signext %26, i8* %27)
  br label %33

29:                                               ; preds = %24, %13
  %30 = load i8, i8* %3, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8 signext %30, i8* %31)
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @chmod_cache_entry(%struct.cache_entry*, i8 signext) #1

declare dso_local i32 @report(i8*, i8 signext, i8*) #1

declare dso_local i32 @die(i8*, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
