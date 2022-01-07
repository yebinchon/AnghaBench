; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_count_distance.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_count_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { %struct.commit_list*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@COUNTED = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_list*)* @count_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_distance(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_list*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %63, %1
  %7 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %8 = icmp ne %struct.commit_list* %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %6
  %10 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %11 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %10, i32 0, i32 1
  %12 = load %struct.commit*, %struct.commit** %11, align 8
  store %struct.commit* %12, %struct.commit** %4, align 8
  %13 = load %struct.commit*, %struct.commit** %4, align 8
  %14 = getelementptr inbounds %struct.commit, %struct.commit* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UNINTERESTING, align 4
  %18 = load i32, i32* @COUNTED, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %64

23:                                               ; preds = %9
  %24 = load %struct.commit*, %struct.commit** %4, align 8
  %25 = getelementptr inbounds %struct.commit, %struct.commit* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TREESAME, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* @COUNTED, align 4
  %36 = load %struct.commit*, %struct.commit** %4, align 8
  %37 = getelementptr inbounds %struct.commit, %struct.commit* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 8
  %41 = load %struct.commit*, %struct.commit** %4, align 8
  %42 = getelementptr inbounds %struct.commit, %struct.commit* %41, i32 0, i32 0
  %43 = load %struct.commit_list*, %struct.commit_list** %42, align 8
  store %struct.commit_list* %43, %struct.commit_list** %5, align 8
  %44 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %44, %struct.commit_list** %2, align 8
  %45 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %46 = icmp ne %struct.commit_list* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %34
  %48 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %49 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %48, i32 0, i32 0
  %50 = load %struct.commit_list*, %struct.commit_list** %49, align 8
  store %struct.commit_list* %50, %struct.commit_list** %5, align 8
  br label %51

51:                                               ; preds = %54, %47
  %52 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %53 = icmp ne %struct.commit_list* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %56 = call i32 @count_distance(%struct.commit_list* %55)
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %60 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %59, i32 0, i32 0
  %61 = load %struct.commit_list*, %struct.commit_list** %60, align 8
  store %struct.commit_list* %61, %struct.commit_list** %5, align 8
  br label %51

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %34
  br label %6

64:                                               ; preds = %22, %6
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
