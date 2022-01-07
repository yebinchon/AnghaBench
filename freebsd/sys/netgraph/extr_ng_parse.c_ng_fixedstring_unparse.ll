; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_fixedstring_unparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_fixedstring_unparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { %struct.ng_parse_fixedstring_info* }
%struct.ng_parse_fixedstring_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32*, i32*, i8*, i32)* @ng_fixedstring_unparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_fixedstring_unparse(%struct.ng_parse_type* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ng_parse_type*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ng_parse_fixedstring_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ng_parse_type*, %struct.ng_parse_type** %7, align 8
  %16 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %15, i32 0, i32 0
  %17 = load %struct.ng_parse_fixedstring_info*, %struct.ng_parse_fixedstring_info** %16, align 8
  store %struct.ng_parse_fixedstring_info* %17, %struct.ng_parse_fixedstring_info** %12, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.ng_parse_type*, %struct.ng_parse_type** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ng_string_unparse(%struct.ng_parse_type* %20, i32* %21, i32* %14, i8* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %37

28:                                               ; preds = %5
  %29 = load %struct.ng_parse_fixedstring_info*, %struct.ng_parse_fixedstring_info** %12, align 8
  %30 = getelementptr inbounds %struct.ng_parse_fixedstring_info, %struct.ng_parse_fixedstring_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %31
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %26
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @ng_string_unparse(%struct.ng_parse_type*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
