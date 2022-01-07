; ModuleID = '/home/carl/AnghaBench/git/extr_abspath.c_strip_last_component.c'
source_filename = "/home/carl/AnghaBench/git/extr_abspath.c_strip_last_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @strip_last_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_last_component(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %6 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i64 @offset_1st_component(i32* %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @is_dir_sep(i32 %23)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %16, %12
  %28 = phi i1 [ false, %12 ], [ %26, %16 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %4, align 8
  br label %12

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_dir_sep(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %37, %33
  %48 = phi i1 [ false, %33 ], [ %46, %37 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %4, align 8
  br label %33

52:                                               ; preds = %47
  %53 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @strbuf_setlen(%struct.strbuf* %53, i64 %54)
  ret void
}

declare dso_local i64 @offset_1st_component(i32*) #1

declare dso_local i64 @is_dir_sep(i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
