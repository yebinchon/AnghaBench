; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_macro_popdef.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_macro_popdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.macro_definition* }
%struct.macro_definition = type { i64, %struct.macro_definition* }

@null = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macro_popdef(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.macro_definition*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.TYPE_3__* @lookup(i8* %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.macro_definition*, %struct.macro_definition** %11, align 8
  store %struct.macro_definition* %12, %struct.macro_definition** %4, align 8
  %13 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %14 = icmp ne %struct.macro_definition* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %17 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %16, i32 0, i32 1
  %18 = load %struct.macro_definition*, %struct.macro_definition** %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.macro_definition* %18, %struct.macro_definition** %20, align 8
  %21 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %22 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @null, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %28 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.macro_definition*
  %31 = call i32 @free(%struct.macro_definition* %30)
  br label %32

32:                                               ; preds = %26, %15
  %33 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %34 = call i32 @free(%struct.macro_definition* %33)
  br label %35

35:                                               ; preds = %32, %9
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.TYPE_3__* @lookup(i8*) #1

declare dso_local i32 @free(%struct.macro_definition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
