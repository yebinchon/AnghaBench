; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_f_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/find/extr_function.c_f_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}*, %struct.TYPE_4__*, %struct.TYPE_4__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f_expr(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %9, i64 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  br label %12

12:                                               ; preds = %27, %2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.TYPE_4__*, i32*)**
  %19 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %18, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 %19(%struct.TYPE_4__* %20, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %15, %12
  %25 = phi i1 [ false, %12 ], [ %23, %15 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %5, align 8
  br label %12

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
