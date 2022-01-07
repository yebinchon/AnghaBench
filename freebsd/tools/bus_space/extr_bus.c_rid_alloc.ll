; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_rid_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_rid_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@nrids = common dso_local global i32 0, align 4
@ridtbl = common dso_local global %struct.TYPE_3__* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rid_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rid_alloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @nrids, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ridtbl, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %21

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %16, %4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @nrids, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load i32, i32* @nrids, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @nrids, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ridtbl, align 8
  %29 = load i32, i32* @nrids, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = trunc i64 %31 to i32
  %33 = call i8* @realloc(%struct.TYPE_3__* %28, i32 %32)
  store i8* %33, i8** %2, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @nrids, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @nrids, align 4
  store i32 -1, i32* %1, align 4
  br label %51

39:                                               ; preds = %25
  %40 = load i8*, i8** %2, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** @ridtbl, align 8
  br label %42

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* @INT_MAX, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ridtbl, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %43, %36
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i8* @realloc(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
