; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_macro_for_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_macro_for_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_definition = type opaque
%struct.TYPE_4__ = type { %struct.macro_definition*, i8* }

@macros = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macro_for_all(void (i8*, %struct.macro_definition*)* %0) #0 {
  %2 = alloca void (i8*, %struct.macro_definition*)*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store void (i8*, %struct.macro_definition*)* %0, void (i8*, %struct.macro_definition*)** %2, align 8
  %5 = call %struct.TYPE_4__* @ohash_first(i32* @macros, i32* %4)
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %3, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  %13 = icmp ne %struct.macro_definition* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load void (i8*, %struct.macro_definition*)*, void (i8*, %struct.macro_definition*)** %2, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.macro_definition*, %struct.macro_definition** %20, align 8
  call void %15(i8* %18, %struct.macro_definition* %21)
  br label %22

22:                                               ; preds = %14, %9
  br label %23

23:                                               ; preds = %22
  %24 = call %struct.TYPE_4__* @ohash_next(i32* @macros, i32* %4)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %3, align 8
  br label %6

25:                                               ; preds = %6
  ret void
}

declare dso_local %struct.TYPE_4__* @ohash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @ohash_next(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
