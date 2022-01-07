; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_check_not_current_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_check_not_current_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { %struct.TYPE_2__*, %struct.ref* }
%struct.TYPE_2__ = type { i32 }
%struct.branch = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"Refusing to fetch into current branch %s of non-bare repository\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref*)* @check_not_current_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_not_current_branch(%struct.ref* %0) #0 {
  %2 = alloca %struct.ref*, align 8
  %3 = alloca %struct.branch*, align 8
  store %struct.ref* %0, %struct.ref** %2, align 8
  %4 = call %struct.branch* @branch_get(i32* null)
  store %struct.branch* %4, %struct.branch** %3, align 8
  %5 = call i64 (...) @is_bare_repository()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load %struct.branch*, %struct.branch** %3, align 8
  %9 = icmp ne %struct.branch* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %1
  br label %42

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %38, %11
  %13 = load %struct.ref*, %struct.ref** %2, align 8
  %14 = icmp ne %struct.ref* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.ref*, %struct.ref** %2, align 8
  %17 = getelementptr inbounds %struct.ref, %struct.ref* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.branch*, %struct.branch** %3, align 8
  %22 = getelementptr inbounds %struct.branch, %struct.branch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ref*, %struct.ref** %2, align 8
  %25 = getelementptr inbounds %struct.ref, %struct.ref* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strcmp(i32 %23, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %20
  %32 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.branch*, %struct.branch** %3, align 8
  %34 = getelementptr inbounds %struct.branch, %struct.branch* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @die(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %20, %15
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.ref*, %struct.ref** %2, align 8
  %40 = getelementptr inbounds %struct.ref, %struct.ref* %39, i32 0, i32 1
  %41 = load %struct.ref*, %struct.ref** %40, align 8
  store %struct.ref* %41, %struct.ref** %2, align 8
  br label %12

42:                                               ; preds = %10, %12
  ret void
}

declare dso_local %struct.branch* @branch_get(i32*) #1

declare dso_local i64 @is_bare_repository(...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
