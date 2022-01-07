; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_parse_get_elem_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_parse_get_elem_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { %struct.ng_parse_struct_field* }
%struct.ng_parse_struct_field = type { i32 }

@CT_STRUCT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32, i32, i32)* @ng_parse_get_elem_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_parse_get_elem_pad(%struct.ng_parse_type* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ng_parse_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ng_parse_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ng_parse_struct_field*, align 8
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ng_parse_type*, %struct.ng_parse_type** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ng_parse_type* @ng_get_composite_etype(%struct.ng_parse_type* %12, i32 %13, i32 %14)
  store %struct.ng_parse_type* %15, %struct.ng_parse_type** %9, align 8
  %16 = load %struct.ng_parse_type*, %struct.ng_parse_type** %9, align 8
  %17 = call i32 @ALIGNMENT(%struct.ng_parse_type* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CT_STRUCT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load %struct.ng_parse_type*, %struct.ng_parse_type** %5, align 8
  %23 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %22, i32 0, i32 0
  %24 = load %struct.ng_parse_struct_field*, %struct.ng_parse_struct_field** %23, align 8
  store %struct.ng_parse_struct_field* %24, %struct.ng_parse_struct_field** %11, align 8
  %25 = load %struct.ng_parse_struct_field*, %struct.ng_parse_struct_field** %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ng_parse_struct_field, %struct.ng_parse_struct_field* %25, i64 %27
  %29 = getelementptr inbounds %struct.ng_parse_struct_field, %struct.ng_parse_struct_field* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.ng_parse_struct_field*, %struct.ng_parse_struct_field** %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ng_parse_struct_field, %struct.ng_parse_struct_field* %33, i64 %35
  %37 = getelementptr inbounds %struct.ng_parse_struct_field, %struct.ng_parse_struct_field* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %32, %21
  br label %40

40:                                               ; preds = %39, %4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = srem i32 %45, %46
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* %10, align 4
  %50 = srem i32 %48, %49
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %43
  %53 = phi i32 [ %50, %43 ], [ 0, %51 ]
  ret i32 %53
}

declare dso_local %struct.ng_parse_type* @ng_get_composite_etype(%struct.ng_parse_type*, i32, i32) #1

declare dso_local i32 @ALIGNMENT(%struct.ng_parse_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
