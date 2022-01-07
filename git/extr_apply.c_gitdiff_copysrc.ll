; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_gitdiff_copysrc.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_gitdiff_copysrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gitdiff_data = type { i64, i32 }
%struct.patch = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gitdiff_data*, i8*, %struct.patch*)* @gitdiff_copysrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gitdiff_copysrc(%struct.gitdiff_data* %0, i8* %1, %struct.patch* %2) #0 {
  %4 = alloca %struct.gitdiff_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.patch*, align 8
  store %struct.gitdiff_data* %0, %struct.gitdiff_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.patch* %2, %struct.patch** %6, align 8
  %7 = load %struct.patch*, %struct.patch** %6, align 8
  %8 = getelementptr inbounds %struct.patch, %struct.patch* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.patch*, %struct.patch** %6, align 8
  %10 = getelementptr inbounds %struct.patch, %struct.patch* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free(i32 %11)
  %13 = load %struct.gitdiff_data*, %struct.gitdiff_data** %4, align 8
  %14 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.gitdiff_data*, %struct.gitdiff_data** %4, align 8
  %18 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.gitdiff_data*, %struct.gitdiff_data** %4, align 8
  %23 = getelementptr inbounds %struct.gitdiff_data, %struct.gitdiff_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, 1
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi i64 [ %25, %21 ], [ 0, %26 ]
  %29 = call i32 @find_name(i32 %15, i8* %16, i32* null, i64 %28, i32 0)
  %30 = load %struct.patch*, %struct.patch** %6, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  ret i32 0
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @find_name(i32, i8*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
