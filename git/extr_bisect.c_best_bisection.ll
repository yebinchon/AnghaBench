; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_best_bisection.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_best_bisection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TREESAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.commit_list*, i32)* @best_bisection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @best_bisection(%struct.commit_list* %0, i32 %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  %10 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %10, %struct.commit_list** %6, align 8
  %11 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %11, %struct.commit_list** %5, align 8
  br label %12

12:                                               ; preds = %47, %2
  %13 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %14 = icmp ne %struct.commit_list* %13, null
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %17 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @TREESAME, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %47

27:                                               ; preds = %15
  %28 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %29 = call i32 @weight(%struct.commit_list* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %27
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %44, %struct.commit_list** %6, align 8
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %49 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %48, i32 0, i32 1
  %50 = load %struct.commit_list*, %struct.commit_list** %49, align 8
  store %struct.commit_list* %50, %struct.commit_list** %5, align 8
  br label %12

51:                                               ; preds = %12
  %52 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  ret %struct.commit_list* %52
}

declare dso_local i32 @weight(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
