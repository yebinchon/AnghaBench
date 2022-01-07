; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_ident_drain.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_ident_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_filter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ident_filter*, i8**, i64*)* @ident_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ident_drain(%struct.ident_filter* %0, i8** %1, i64* %2) #0 {
  %4 = alloca %struct.ident_filter*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.ident_filter* %0, %struct.ident_filter** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.ident_filter*, %struct.ident_filter** %4, align 8
  %9 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.ident_filter*, %struct.ident_filter** %4, align 8
  %26 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @memcpy(i8* %24, i32 %28, i64 %29)
  %31 = load %struct.ident_filter*, %struct.ident_filter** %4, align 8
  %32 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %31, i32 0, i32 1
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @strbuf_remove(%struct.TYPE_2__* %32, i32 0, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %35
  store i8* %38, i8** %36, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %39
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %22, %19
  %44 = load %struct.ident_filter*, %struct.ident_filter** %4, align 8
  %45 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load %struct.ident_filter*, %struct.ident_filter** %4, align 8
  %51 = getelementptr inbounds %struct.ident_filter, %struct.ident_filter* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %43
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @strbuf_remove(%struct.TYPE_2__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
