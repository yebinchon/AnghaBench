; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_mv.c_index_range_of_same_dir.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_mv.c_index_range_of_same_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [17 x i8] c"%.*s is in index\00", align 1
@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @index_range_of_same_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_range_of_same_dir(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @add_slash(i8* %14)
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @cache_name_pos(i8* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @die(i32 %24, i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %23, %4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 -1, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %51, %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @active_nr, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @active_cache, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @strncmp(i8* %44, i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %54

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %32

54:                                               ; preds = %49, %32
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  ret i32 %68
}

declare dso_local i8* @add_slash(i8*) #1

declare dso_local i32 @cache_name_pos(i8*, i32) #1

declare dso_local i32 @die(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
