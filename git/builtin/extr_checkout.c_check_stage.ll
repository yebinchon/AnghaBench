; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_check_stage.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_check_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cache_entry = type { i32 }

@active_nr = common dso_local global i32 0, align 4
@active_cache = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [36 x i8] c"path '%s' does not have our version\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"path '%s' does not have their version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cache_entry*, i32, i32)* @check_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stage(i32 %0, %struct.cache_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.cache_entry* %1, %struct.cache_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %40, %4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @active_nr, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cache, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %14, %10
  %29 = phi i1 [ false, %10 ], [ %27, %14 ]
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cache, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @ce_stage(%struct.TYPE_3__* %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %62

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %10

43:                                               ; preds = %28
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %62

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %53 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @error(i32 %51, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %62

56:                                               ; preds = %47
  %57 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %59 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @error(i32 %57, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %56, %50, %46, %39
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ce_stage(%struct.TYPE_3__*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
