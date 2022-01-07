; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_ipaddr_unparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_ipaddr_unparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { i32 }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32*, i32*, i8*, i32)* @ng_ipaddr_unparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ipaddr_unparse(%struct.ng_parse_type* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ng_parse_type*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca i32, align 4
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = call i32 @bcopy(i32* %18, %struct.in_addr* %12, i32 4)
  %20 = bitcast %struct.in_addr* %12 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %struct.in_addr* %12 to i32*
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %struct.in_addr* %12 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %struct.in_addr* %12 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ng_parse_append(i8** %10, i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %42

36:                                               ; preds = %5
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %36, %34
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @bcopy(i32*, %struct.in_addr*, i32) #1

declare dso_local i32 @ng_parse_append(i8**, i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
