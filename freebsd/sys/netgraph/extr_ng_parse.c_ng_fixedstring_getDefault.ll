; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_fixedstring_getDefault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_fixedstring_getDefault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { %struct.ng_parse_fixedstring_info* }
%struct.ng_parse_fixedstring_info = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32*, i32*, i32*)* @ng_fixedstring_getDefault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_fixedstring_getDefault(%struct.ng_parse_type* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ng_parse_type*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ng_parse_fixedstring_info*, align 8
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.ng_parse_type*, %struct.ng_parse_type** %6, align 8
  %12 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %11, i32 0, i32 0
  %13 = load %struct.ng_parse_fixedstring_info*, %struct.ng_parse_fixedstring_info** %12, align 8
  store %struct.ng_parse_fixedstring_info* %13, %struct.ng_parse_fixedstring_info** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ng_parse_fixedstring_info*, %struct.ng_parse_fixedstring_info** %10, align 8
  %17 = getelementptr inbounds %struct.ng_parse_fixedstring_info, %struct.ng_parse_fixedstring_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ERANGE, align 4
  store i32 %21, i32* %5, align 4
  br label %32

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.ng_parse_fixedstring_info*, %struct.ng_parse_fixedstring_info** %10, align 8
  %25 = getelementptr inbounds %struct.ng_parse_fixedstring_info, %struct.ng_parse_fixedstring_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bzero(i32* %23, i32 %26)
  %28 = load %struct.ng_parse_fixedstring_info*, %struct.ng_parse_fixedstring_info** %10, align 8
  %29 = getelementptr inbounds %struct.ng_parse_fixedstring_info, %struct.ng_parse_fixedstring_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %22, %20
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
