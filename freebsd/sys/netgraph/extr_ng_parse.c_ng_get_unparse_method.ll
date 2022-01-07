; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_get_unparse_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_get_unparse_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { i32*, %struct.ng_parse_type* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ng_parse_type*)* @ng_get_unparse_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ng_get_unparse_method(%struct.ng_parse_type* %0) #0 {
  %2 = alloca %struct.ng_parse_type*, align 8
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %2, align 8
  br label %3

3:                                                ; preds = %13, %1
  %4 = load %struct.ng_parse_type*, %struct.ng_parse_type** %2, align 8
  %5 = icmp ne %struct.ng_parse_type* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load %struct.ng_parse_type*, %struct.ng_parse_type** %2, align 8
  %8 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i1 [ false, %3 ], [ %10, %6 ]
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = load %struct.ng_parse_type*, %struct.ng_parse_type** %2, align 8
  %15 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %14, i32 0, i32 1
  %16 = load %struct.ng_parse_type*, %struct.ng_parse_type** %15, align 8
  store %struct.ng_parse_type* %16, %struct.ng_parse_type** %2, align 8
  br label %3

17:                                               ; preds = %11
  %18 = load %struct.ng_parse_type*, %struct.ng_parse_type** %2, align 8
  %19 = icmp ne %struct.ng_parse_type* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.ng_parse_type*, %struct.ng_parse_type** %2, align 8
  %22 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32* [ %23, %20 ], [ null, %24 ]
  ret i32* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
