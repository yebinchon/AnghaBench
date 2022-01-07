; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_anonymize_path.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_anonymize_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.hashmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, %struct.hashmap*, i8* (i8*, i64*)*)* @anonymize_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anonymize_path(%struct.strbuf* %0, i8* %1, %struct.hashmap* %2, i8* (i8*, i64*)* %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hashmap*, align 8
  %8 = alloca i8* (i8*, i64*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.hashmap* %2, %struct.hashmap** %7, align 8
  store i8* (i8*, i64*)* %3, i8* (i8*, i64*)** %8, align 8
  br label %12

12:                                               ; preds = %43, %4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchrnul(i8* %17, i8 signext 47)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load %struct.hashmap*, %struct.hashmap** %7, align 8
  %25 = load i8* (i8*, i64*)*, i8* (i8*, i64*)** %8, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @anonymize_mem(%struct.hashmap* %24, i8* (i8*, i64*)* %25, i8* %26, i64* %10)
  store i8* %27, i8** %11, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @strbuf_add(%struct.strbuf* %28, i8* %29, i64 %30)
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %16
  %37 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @strbuf_addch(%struct.strbuf* %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %16
  br label %12

44:                                               ; preds = %12
  ret void
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i8* @anonymize_mem(%struct.hashmap*, i8* (i8*, i64*)*, i8*, i64*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
