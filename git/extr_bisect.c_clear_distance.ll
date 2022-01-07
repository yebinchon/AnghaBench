; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_clear_distance.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_clear_distance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit_list*)* @clear_distance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_distance(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.commit*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %6 = icmp ne %struct.commit_list* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %9 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %8, i32 0, i32 1
  %10 = load %struct.commit*, %struct.commit** %9, align 8
  store %struct.commit* %10, %struct.commit** %3, align 8
  %11 = load i32, i32* @COUNTED, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.commit*, %struct.commit** %3, align 8
  %14 = getelementptr inbounds %struct.commit, %struct.commit* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %12
  store i32 %17, i32* %15, align 4
  %18 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %19 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %18, i32 0, i32 0
  %20 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  store %struct.commit_list* %20, %struct.commit_list** %2, align 8
  br label %4

21:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
