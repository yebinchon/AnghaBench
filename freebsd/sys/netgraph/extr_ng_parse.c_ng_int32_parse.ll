; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_int32_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_int32_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { i64 }

@INT_SIGNED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i8*, i32*, i32*, i32*, i32*)* @ng_int32_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_int32_parse(%struct.ng_parse_type* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ng_parse_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.ng_parse_type*, %struct.ng_parse_type** %8, align 8
  %18 = getelementptr inbounds %struct.ng_parse_type, %struct.ng_parse_type* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INT_SIGNED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load i8*, i8** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = call i64 @strtol(i8* %27, i8** %16, i32 0)
  store i64 %28, i64* %14, align 8
  br label %36

29:                                               ; preds = %6
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = call i64 @strtoul(i8* %34, i8** %16, i32 0)
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i64, i64* %14, align 8
  %38 = icmp slt i64 %37, 2147483648
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %14, align 8
  %41 = icmp sgt i64 %40, 4294967295
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %16, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = icmp eq i8* %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %39, %36
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %7, align 4
  br label %64

52:                                               ; preds = %42
  %53 = load i8*, i8** %16, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i64, i64* %14, align 8
  store i64 %60, i64* %15, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @bcopy(i64* %15, i32* %61, i32 8)
  %63 = load i32*, i32** %13, align 8
  store i32 8, i32* %63, align 4
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %52, %50
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @bcopy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
