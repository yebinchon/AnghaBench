; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_sizedstring_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_sizedstring_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@M_NETGRAPH_PARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i8*, i32*, i32*, i32*, i32*)* @ng_sizedstring_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sizedstring_parse(%struct.ng_parse_type* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ng_parse_type*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i8* @ng_get_string_token(i8* %17, i32* %18, i32* %15, i32* %16)
  store i8* %19, i8** %14, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %52

23:                                               ; preds = %6
  %24 = load i32, i32* %16, align 4
  %25 = load i32, i32* @USHRT_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %30 = call i32 @free(i8* %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %52

32:                                               ; preds = %23
  %33 = load i32, i32* %15, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = load i32*, i32** %12, align 8
  %40 = bitcast i32* %39 to i64*
  store i64 %38, i64* %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @bcopy(i8* %41, i32* %43, i32 %44)
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %48 = call i32 @free(i8* %46, i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 2, %49
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %32, %27, %21
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i8* @ng_get_string_token(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
