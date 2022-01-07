; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_file = type { i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fifolog_int_close(%struct.fifolog_file** %0) #0 {
  %2 = alloca %struct.fifolog_file**, align 8
  %3 = alloca %struct.fifolog_file*, align 8
  store %struct.fifolog_file** %0, %struct.fifolog_file*** %2, align 8
  %4 = load %struct.fifolog_file**, %struct.fifolog_file*** %2, align 8
  %5 = load %struct.fifolog_file*, %struct.fifolog_file** %4, align 8
  store %struct.fifolog_file* %5, %struct.fifolog_file** %3, align 8
  %6 = load %struct.fifolog_file**, %struct.fifolog_file*** %2, align 8
  store %struct.fifolog_file* null, %struct.fifolog_file** %6, align 8
  %7 = load %struct.fifolog_file*, %struct.fifolog_file** %3, align 8
  %8 = icmp eq %struct.fifolog_file* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.fifolog_file*, %struct.fifolog_file** %3, align 8
  %12 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.fifolog_file*, %struct.fifolog_file** %3, align 8
  %17 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @close(i64 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = load %struct.fifolog_file*, %struct.fifolog_file** %3, align 8
  %22 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.fifolog_file*, %struct.fifolog_file** %3, align 8
  %27 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free(i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.fifolog_file*, %struct.fifolog_file** %3, align 8
  %32 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.fifolog_file*, %struct.fifolog_file** %3, align 8
  %37 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @free(i32* %38)
  br label %40

40:                                               ; preds = %9, %35, %30
  ret void
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
