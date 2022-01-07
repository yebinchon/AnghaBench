; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_macro_undefine.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_look.c_macro_undefine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.macro_definition* }
%struct.macro_definition = type { i64, %struct.macro_definition* }

@null = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @macro_undefine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.macro_definition*, align 8
  %5 = alloca %struct.macro_definition*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.TYPE_3__* @lookup(i8* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.macro_definition*, %struct.macro_definition** %12, align 8
  store %struct.macro_definition* %13, %struct.macro_definition** %4, align 8
  br label %14

14:                                               ; preds = %35, %10
  %15 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %16 = icmp ne %struct.macro_definition* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %19 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %18, i32 0, i32 1
  %20 = load %struct.macro_definition*, %struct.macro_definition** %19, align 8
  store %struct.macro_definition* %20, %struct.macro_definition** %5, align 8
  %21 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %22 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @null, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %28 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.macro_definition*
  %31 = call i32 @free(%struct.macro_definition* %30)
  br label %32

32:                                               ; preds = %26, %17
  %33 = load %struct.macro_definition*, %struct.macro_definition** %4, align 8
  %34 = call i32 @free(%struct.macro_definition* %33)
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.macro_definition*, %struct.macro_definition** %5, align 8
  store %struct.macro_definition* %36, %struct.macro_definition** %4, align 8
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store %struct.macro_definition* null, %struct.macro_definition** %39, align 8
  br label %40

40:                                               ; preds = %37, %1
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
