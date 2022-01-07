; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_sizedstring_unparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_sizedstring_unparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_NETGRAPH_PARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32*, i32*, i8*, i32)* @ng_sizedstring_unparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sizedstring_unparse(%struct.ng_parse_type* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ng_parse_type*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i8* @ng_encode_string(i8* %29, i32 %30)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %6, align 4
  br label %54

36:                                               ; preds = %5
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @ng_parse_append(i8** %10, i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %43 = call i32 @free(i8* %41, i32 %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %6, align 4
  br label %54

45:                                               ; preds = %36
  %46 = load i8*, i8** %14, align 8
  %47 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %48 = call i32 @free(i8* %46, i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 2
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %45, %40, %34
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i8* @ng_encode_string(i8*, i32) #1

declare dso_local i32 @ng_parse_append(i8**, i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
