; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_add_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_add_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_string(%struct.TYPE_4__** %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strcmp(i32 %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %57

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %5, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %6, align 8
  br label %9

26:                                               ; preds = %9
  %27 = call %struct.TYPE_4__* @malloc(i32 16)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %6, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %32, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @strdup(i8* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %30, %26
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40, %37
  %46 = call i32 (...) @out_of_memory()
  br label %47

47:                                               ; preds = %45, %40
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = icmp eq %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %52, align 8
  br label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  br label %57

57:                                               ; preds = %19, %53, %50
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @out_of_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
