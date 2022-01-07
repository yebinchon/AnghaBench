; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_first_scapegoat.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_first_scapegoat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { i32* }
%struct.rev_info = type { i32, i64 }
%struct.commit = type { i32, %struct.commit_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.rev_info*, %struct.commit*, i32)* @first_scapegoat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @first_scapegoat(%struct.rev_info* %0, %struct.commit* %1, i32 %2) #0 {
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.rev_info*, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca i32, align 4
  store %struct.rev_info* %0, %struct.rev_info** %5, align 8
  store %struct.commit* %1, %struct.commit** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %3
  %11 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %12 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load %struct.commit*, %struct.commit** %6, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 1
  %18 = load %struct.commit_list*, %struct.commit_list** %17, align 8
  %19 = icmp ne %struct.commit_list* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = load %struct.commit*, %struct.commit** %6, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 1
  %23 = load %struct.commit_list*, %struct.commit_list** %22, align 8
  %24 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load %struct.commit*, %struct.commit** %6, align 8
  %29 = getelementptr inbounds %struct.commit, %struct.commit* %28, i32 0, i32 1
  %30 = load %struct.commit_list*, %struct.commit_list** %29, align 8
  %31 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @free_commit_list(i32* %32)
  %34 = load %struct.commit*, %struct.commit** %6, align 8
  %35 = getelementptr inbounds %struct.commit, %struct.commit* %34, i32 0, i32 1
  %36 = load %struct.commit_list*, %struct.commit_list** %35, align 8
  %37 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %27, %20, %15, %10
  %39 = load %struct.commit*, %struct.commit** %6, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 1
  %41 = load %struct.commit_list*, %struct.commit_list** %40, align 8
  store %struct.commit_list* %41, %struct.commit_list** %4, align 8
  br label %48

42:                                               ; preds = %3
  %43 = load %struct.rev_info*, %struct.rev_info** %5, align 8
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %43, i32 0, i32 0
  %45 = load %struct.commit*, %struct.commit** %6, align 8
  %46 = getelementptr inbounds %struct.commit, %struct.commit* %45, i32 0, i32 0
  %47 = call %struct.commit_list* @lookup_decoration(i32* %44, i32* %46)
  store %struct.commit_list* %47, %struct.commit_list** %4, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  ret %struct.commit_list* %49
}

declare dso_local i32 @free_commit_list(i32*) #1

declare dso_local %struct.commit_list* @lookup_decoration(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
