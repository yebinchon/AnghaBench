; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_show_mode_change.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_show_mode_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i64, i64, i8* }

@.str = private unnamed_addr constant [30 x i8] c" mode change %06o => %06o %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c" mode change %06o => %06o\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.patch*, i32)* @show_mode_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_mode_change(%struct.patch* %0, i32 %1) #0 {
  %3 = alloca %struct.patch*, align 8
  %4 = alloca i32, align 4
  store %struct.patch* %0, %struct.patch** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.patch*, %struct.patch** %3, align 8
  %6 = getelementptr inbounds %struct.patch, %struct.patch* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %2
  %10 = load %struct.patch*, %struct.patch** %3, align 8
  %11 = getelementptr inbounds %struct.patch, %struct.patch* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = load %struct.patch*, %struct.patch** %3, align 8
  %16 = getelementptr inbounds %struct.patch, %struct.patch* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.patch*, %struct.patch** %3, align 8
  %19 = getelementptr inbounds %struct.patch, %struct.patch* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.patch*, %struct.patch** %3, align 8
  %27 = getelementptr inbounds %struct.patch, %struct.patch* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.patch*, %struct.patch** %3, align 8
  %31 = getelementptr inbounds %struct.patch, %struct.patch* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.patch*, %struct.patch** %3, align 8
  %35 = getelementptr inbounds %struct.patch, %struct.patch* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i8* %36)
  br label %48

38:                                               ; preds = %22
  %39 = load %struct.patch*, %struct.patch** %3, align 8
  %40 = getelementptr inbounds %struct.patch, %struct.patch* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.patch*, %struct.patch** %3, align 8
  %44 = getelementptr inbounds %struct.patch, %struct.patch* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %38, %25
  br label %49

49:                                               ; preds = %48, %14, %9, %2
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
