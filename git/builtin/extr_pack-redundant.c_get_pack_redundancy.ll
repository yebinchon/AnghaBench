; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_get_pack_redundancy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_get_pack_redundancy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { %struct.pack_list*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pack_list*)* @get_pack_redundancy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_pack_redundancy(%struct.pack_list* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pack_list*, align 8
  %4 = alloca %struct.pack_list*, align 8
  %5 = alloca i64, align 8
  store %struct.pack_list* %0, %struct.pack_list** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %7 = icmp eq %struct.pack_list* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %38

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %32, %9
  %11 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %12 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %11, i32 0, i32 0
  %13 = load %struct.pack_list*, %struct.pack_list** %12, align 8
  store %struct.pack_list* %13, %struct.pack_list** %4, align 8
  %14 = icmp ne %struct.pack_list* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %19, %15
  %17 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %18 = icmp ne %struct.pack_list* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %21 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %24 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @sizeof_union(i32 %22, i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load %struct.pack_list*, %struct.pack_list** %4, align 8
  %30 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %29, i32 0, i32 0
  %31 = load %struct.pack_list*, %struct.pack_list** %30, align 8
  store %struct.pack_list* %31, %struct.pack_list** %4, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.pack_list*, %struct.pack_list** %3, align 8
  %34 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %33, i32 0, i32 0
  %35 = load %struct.pack_list*, %struct.pack_list** %34, align 8
  store %struct.pack_list* %35, %struct.pack_list** %3, align 8
  br label %10

36:                                               ; preds = %10
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %8
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i64 @sizeof_union(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
