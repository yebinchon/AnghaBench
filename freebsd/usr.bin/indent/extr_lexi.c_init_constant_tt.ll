; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_lexi.c_init_constant_tt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_lexi.c_init_constant_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_constant_tt() #0 {
  %1 = load i32*, i32** @table, align 8
  %2 = getelementptr inbounds i32, i32* %1, i64 43
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** @table, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 45
  store i32 %3, i32* %5, align 4
  %6 = load i32*, i32** @table, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 57
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @table, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 56
  store i32 %8, i32* %10, align 4
  %11 = load i32*, i32** @table, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 55
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** @table, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 54
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** @table, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 53
  store i32 %13, i32* %17, align 4
  %18 = load i32*, i32** @table, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 52
  store i32 %13, i32* %19, align 4
  %20 = load i32*, i32** @table, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 51
  store i32 %13, i32* %21, align 4
  %22 = load i32*, i32** @table, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 50
  store i32 %13, i32* %23, align 4
  %24 = load i32*, i32** @table, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 97
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @table, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 100
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** @table, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 99
  store i32 %26, i32* %30, align 4
  %31 = load i32*, i32** @table, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 68
  store i32 %26, i32* %32, align 4
  %33 = load i32*, i32** @table, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 67
  store i32 %26, i32* %34, align 4
  %35 = load i32*, i32** @table, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 65
  store i32 %26, i32* %36, align 4
  %37 = load i32*, i32** @table, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 98
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @table, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 66
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** @table, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 101
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @table, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 69
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** @table, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 117
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @table, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 85
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** @table, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 120
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @table, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 88
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** @table, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 112
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** @table, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 80
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** @table, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 102
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @table, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 70
  store i32 %64, i32* %66, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
