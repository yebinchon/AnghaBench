; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_set_pri.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_set_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@REFER = common dso_local global i64 0, align 8
@numpri = common dso_local global i32 0, align 4
@INTERR = common dso_local global i32 0, align 4
@nextpri = common dso_local global i32 0, align 4
@RESOLVED = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"repeated item in order list (first on %d)\00", align 1
@lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @set_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pri(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_3__* @get_pri(i32 %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @REFER, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @numpri, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %13
  %21 = load i32, i32* @INTERR, align 4
  br label %22

22:                                               ; preds = %20, %16, %3
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @REFER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @nextpri, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* @RESOLVED, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %30, %26, %22
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UNKNOWN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %54

44:                                               ; preds = %33
  %45 = load i32, i32* @lineno, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %39
  ret void
}

declare dso_local %struct.TYPE_3__* @get_pri(i32) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
