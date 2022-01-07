; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_strings.c_sreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_strings.c_sreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strings = type { i32, i32*, i32* }

@noreset = common dso_local global i64 0, align 8
@stringdope = common dso_local global %struct.strings* null, align 8
@NSPACE = common dso_local global i64 0, align 8
@STRINGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sreset() #0 {
  %1 = alloca %struct.strings*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @noreset, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %37

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %7 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %8 = getelementptr inbounds %struct.strings, %struct.strings* %7, i64 0
  store %struct.strings* %8, %struct.strings** %1, align 8
  br label %9

9:                                                ; preds = %34, %6
  %10 = load %struct.strings*, %struct.strings** %1, align 8
  %11 = load %struct.strings*, %struct.strings** @stringdope, align 8
  %12 = load i64, i64* @NSPACE, align 8
  %13 = getelementptr inbounds %struct.strings, %struct.strings* %11, i64 %12
  %14 = icmp ult %struct.strings* %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.strings*, %struct.strings** %1, align 8
  %17 = getelementptr inbounds %struct.strings, %struct.strings* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %34

21:                                               ; preds = %15
  %22 = load %struct.strings*, %struct.strings** %1, align 8
  %23 = getelementptr inbounds %struct.strings, %struct.strings* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.strings*, %struct.strings** %1, align 8
  %26 = getelementptr inbounds %struct.strings, %struct.strings* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* @STRINGSIZE, align 4
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 %27, %28
  %30 = load %struct.strings*, %struct.strings** %1, align 8
  %31 = getelementptr inbounds %struct.strings, %struct.strings* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %20
  %35 = load %struct.strings*, %struct.strings** %1, align 8
  %36 = getelementptr inbounds %struct.strings, %struct.strings* %35, i32 1
  store %struct.strings* %36, %struct.strings** %1, align 8
  br label %9

37:                                               ; preds = %5, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
