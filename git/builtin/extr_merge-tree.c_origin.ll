; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_origin.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_list = type { i32, %struct.merge_list*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.merge_list*, i64*)* @origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @origin(%struct.merge_list* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.merge_list*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.merge_list* %0, %struct.merge_list** %4, align 8
  store i64* %1, i64** %5, align 8
  br label %7

7:                                                ; preds = %23, %2
  %8 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %9 = icmp ne %struct.merge_list* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %12 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %17 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64*, i64** %5, align 8
  %22 = call i8* @read_object_file(i32* %20, i32* %6, i64* %21)
  store i8* %22, i8** %3, align 8
  br label %28

23:                                               ; preds = %10
  %24 = load %struct.merge_list*, %struct.merge_list** %4, align 8
  %25 = getelementptr inbounds %struct.merge_list, %struct.merge_list* %24, i32 0, i32 1
  %26 = load %struct.merge_list*, %struct.merge_list** %25, align 8
  store %struct.merge_list* %26, %struct.merge_list** %4, align 8
  br label %7

27:                                               ; preds = %7
  store i8* null, i8** %3, align 8
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i8*, i8** %3, align 8
  ret i8* %29
}

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
