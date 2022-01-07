; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_add_weight.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_add_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@COLLATE_SUBST_PRIORITY = common dso_local global i32 0, align 4
@weights = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_weight(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @resolve_pri(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @COLLATE_SUBST_PRIORITY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %48

21:                                               ; preds = %14
  %22 = load i32*, i32** @weights, align 8
  %23 = load i32*, i32** @weights, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32* @RB_FIND(i32* %22, i32* %26, %struct.TYPE_5__* %5)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %48

30:                                               ; preds = %21
  %31 = call %struct.TYPE_5__* @calloc(i32 1, i32 4)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %6, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** @weights, align 8
  %42 = load i32*, i32** @weights, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32 @RB_INSERT(i32* %41, i32* %45, %struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %36, %33, %29, %20, %13
  ret void
}

declare dso_local i32 @resolve_pri(i32) #1

declare dso_local i32* @RB_FIND(i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @RB_INSERT(i32*, i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
