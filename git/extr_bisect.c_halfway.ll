; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_halfway.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_halfway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TREESAME = common dso_local global i32 0, align 4
@DEBUG_BISECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_list*, i32)* @halfway to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @halfway(%struct.commit_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %7 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TREESAME, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

16:                                               ; preds = %2
  %17 = load i64, i64* @DEBUG_BISECT, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %28

20:                                               ; preds = %16
  %21 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %22 = call i32 @weight(%struct.commit_list* %21)
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %23, %24
  switch i32 %25, label %27 [
    i32 -1, label %26
    i32 0, label %26
    i32 1, label %26
  ]

26:                                               ; preds = %20, %20, %20
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %19, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @weight(%struct.commit_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
