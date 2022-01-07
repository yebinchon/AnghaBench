; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_mark_traced.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_mark_traced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TRACE_ALL = common dso_local global i32 0, align 4
@trace_flags = common dso_local global i32 0, align 4
@macros = common dso_local global i32 0, align 4
@FLAG_NO_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_traced(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @TRACE_ALL, align 4
  %14 = load i32, i32* @trace_flags, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @trace_flags, align 4
  br label %21

16:                                               ; preds = %9
  %17 = load i32, i32* @TRACE_ALL, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @trace_flags, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @trace_flags, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = call %struct.TYPE_5__* @ohash_first(i32* @macros, i32* %6)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %5, align 8
  br label %23

23:                                               ; preds = %30, %21
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @FLAG_NO_TRACE, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26
  %31 = call %struct.TYPE_5__* @ohash_next(i32* @macros, i32* %6)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %5, align 8
  br label %23

32:                                               ; preds = %23
  br label %39

33:                                               ; preds = %2
  %34 = load i8*, i8** %3, align 8
  %35 = call %struct.TYPE_5__* @create_entry(i8* %34)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %32
  ret void
}

declare dso_local %struct.TYPE_5__* @ohash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @ohash_next(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @create_entry(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
