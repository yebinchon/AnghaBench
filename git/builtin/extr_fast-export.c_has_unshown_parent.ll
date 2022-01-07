; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_has_unshown_parent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_has_unshown_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.commit_list* }
%struct.commit_list = type { %struct.TYPE_4__*, %struct.commit_list* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SHOWN = common dso_local global i32 0, align 4
@UNINTERESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*)* @has_unshown_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_unshown_parent(%struct.commit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit_list*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  %5 = load %struct.commit*, %struct.commit** %3, align 8
  %6 = getelementptr inbounds %struct.commit, %struct.commit* %5, i32 0, i32 0
  %7 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %7, %struct.commit_list** %4, align 8
  br label %8

8:                                                ; preds = %33, %1
  %9 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %10 = icmp ne %struct.commit_list* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %13 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SHOWN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %23 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @UNINTERESTING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %38

32:                                               ; preds = %21, %11
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %35 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %34, i32 0, i32 1
  %36 = load %struct.commit_list*, %struct.commit_list** %35, align 8
  store %struct.commit_list* %36, %struct.commit_list** %4, align 8
  br label %8

37:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
