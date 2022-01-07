; ModuleID = '/home/carl/AnghaBench/git/extr_alloc.c_alloc_node.c'
source_filename = "/home/carl/AnghaBench/git/extr_alloc.c_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_state = type { i64, i8*, i8**, i32, i64, i32 }

@BLOCKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.alloc_state*, i64)* @alloc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_node(%struct.alloc_state* %0, i64 %1) #0 {
  %3 = alloca %struct.alloc_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.alloc_state* %0, %struct.alloc_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %7 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @BLOCKING, align 8
  %12 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %13 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* @BLOCKING, align 8
  %15 = load i64, i64* %4, align 8
  %16 = mul i64 %14, %15
  %17 = call i8* @xmalloc(i64 %16)
  %18 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %19 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %21 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %20, i32 0, i32 2
  %22 = load i8**, i8*** %21, align 8
  %23 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %24 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %28 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ALLOC_GROW(i8** %22, i64 %26, i32 %29)
  %31 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %32 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %35 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %38 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds i8*, i8** %36, i64 %39
  store i8* %33, i8** %41, align 8
  br label %42

42:                                               ; preds = %10, %2
  %43 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %44 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %48 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %52 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  %54 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %55 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load %struct.alloc_state*, %struct.alloc_state** %3, align 8
  %60 = getelementptr inbounds %struct.alloc_state, %struct.alloc_state* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @memset(i8* %61, i32 0, i64 %62)
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @ALLOC_GROW(i8**, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
