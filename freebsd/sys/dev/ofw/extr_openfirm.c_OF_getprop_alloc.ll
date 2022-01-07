; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_getprop_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirm.c_OF_getprop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_OFWPROP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OF_getprop_alloc(i32 %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %7, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @OF_getproplen(i32 %10, i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %40

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @M_OFWPROP, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = call i8* @malloc(i32 %19, i32 %20, i32 %21)
  %23 = load i8**, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @OF_getprop(i32 %24, i8* %25, i8* %27, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @M_OFWPROP, align 4
  %35 = call i32 @free(i8* %33, i32 %34)
  %36 = load i8**, i8*** %7, align 8
  store i8* null, i8** %36, align 8
  store i32 -1, i32* %4, align 4
  br label %40

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %31, %14
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
