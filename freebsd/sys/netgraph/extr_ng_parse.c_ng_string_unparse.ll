; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_string_unparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_string_unparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_parse_type = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@M_NETGRAPH_PARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ng_parse_type*, i32*, i32*, i8*, i32)* @ng_string_unparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_string_unparse(%struct.ng_parse_type* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ng_parse_type*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ng_parse_type* %0, %struct.ng_parse_type** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = bitcast i32* %15 to i8*
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = call i8* @ng_encode_string(i8* %21, i64 %23)
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %6, align 4
  br label %50

29:                                               ; preds = %5
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @ng_parse_append(i8** %10, i32* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %36 = call i32 @free(i8* %34, i32 %35)
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %6, align 4
  br label %50

38:                                               ; preds = %29
  %39 = load i8*, i8** %12, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 1
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %41
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %49 = call i32 @free(i8* %47, i32 %48)
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %38, %33, %27
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i8* @ng_encode_string(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ng_parse_append(i8**, i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
