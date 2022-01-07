; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_sortmembers.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_sortmembers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@GREATERTHAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sortmembers(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %3, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %62, %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %5, align 8
  br label %26

26:                                               ; preds = %41, %24
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i64 @membercmp(%struct.TYPE_5__* %32, %struct.TYPE_5__* %35)
  %37 = load i64, i64* @GREATERTHAN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %5, align 8
  br label %26

45:                                               ; preds = %39, %26
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %53, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %4, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %3, align 8
  %61 = icmp ne %struct.TYPE_5__* %60, null
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  br label %21

65:                                               ; preds = %21
  ret void
}

declare dso_local i64 @membercmp(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
