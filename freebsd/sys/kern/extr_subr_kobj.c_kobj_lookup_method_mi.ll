; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kobj.c_kobj_lookup_method_mi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_kobj.c_kobj_lookup_method_mi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32)* @kobj_lookup_method_mi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @kobj_lookup_method_mi(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32* @kobj_lookup_method_class(%struct.TYPE_4__* %8, i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %3, align 8
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  store %struct.TYPE_4__** %18, %struct.TYPE_4__*** %7, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %20 = icmp ne %struct.TYPE_4__** %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %36, %21
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32* @kobj_lookup_method_mi(%struct.TYPE_4__* %28, i32 %29)
  store i32* %30, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %41

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i32 1
  store %struct.TYPE_4__** %38, %struct.TYPE_4__*** %7, align 8
  br label %22

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %15
  store i32* null, i32** %3, align 8
  br label %41

41:                                               ; preds = %40, %33, %13
  %42 = load i32*, i32** %3, align 8
  ret i32* %42
}

declare dso_local i32* @kobj_lookup_method_class(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
