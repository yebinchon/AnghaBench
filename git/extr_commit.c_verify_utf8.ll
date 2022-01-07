; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_verify_utf8.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_verify_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*)* @verify_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_utf8(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca [2 x i8], align 1
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  store i32 1, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = sub nsw i64 %16, %17
  %19 = call i32 @find_invalid_utf8(i8* %13, i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23

24:                                               ; preds = %8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %4, align 8
  store i32 0, i32* %3, align 4
  %29 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %6, align 1
  %35 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @strbuf_remove(%struct.strbuf* %35, i64 %36, i32 1)
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 6
  %41 = add nsw i32 192, %40
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 63
  %47 = add nsw i32 128, %46
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 %48, i8* %49, align 1
  %50 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %53 = call i32 @strbuf_insert(%struct.strbuf* %50, i64 %51, i8* %52, i32 2)
  %54 = load i64, i64* %4, align 8
  %55 = add nsw i64 %54, 2
  store i64 %55, i64* %4, align 8
  br label %8
}

declare dso_local i32 @find_invalid_utf8(i8*, i64) #1

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i64, i32) #1

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
