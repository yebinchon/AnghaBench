; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_define_collelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_define_collelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32*, i32* }

@COLLATE_STR_LEN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"expanded collation element too long\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@COLL_WEIGHTS_MAX = common dso_local global i32 0, align 4
@elem_by_symbol = common dso_local global i32 0, align 4
@elem_by_expand = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"duplicate collating element definition\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_collelem(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @wcslen(i32* %7)
  %9 = load i64, i64* @COLLATE_STR_LEN, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %64

14:                                               ; preds = %2
  %15 = call %struct.TYPE_6__* @calloc(i32 1, i32 24)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %64

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @COLL_WEIGHTS_MAX, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = call i32 (...) @new_pri()
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load i32, i32* @elem_by_symbol, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = call i32* @RB_FIND(i32 %43, i32* @elem_by_symbol, %struct.TYPE_6__* %44)
  %46 = icmp ne i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @elem_by_expand, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = call i32* @RB_FIND(i32 %48, i32* @elem_by_expand, %struct.TYPE_6__* %49)
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = call i32 @free(%struct.TYPE_6__* %55)
  br label %64

57:                                               ; preds = %47
  %58 = load i32, i32* @elem_by_symbol, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = call i32 @RB_INSERT(i32 %58, i32* @elem_by_symbol, %struct.TYPE_6__* %59)
  %61 = load i32, i32* @elem_by_expand, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = call i32 @RB_INSERT(i32 %61, i32* @elem_by_expand, %struct.TYPE_6__* %62)
  br label %64

64:                                               ; preds = %57, %52, %17, %11
  ret void
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @new_pri(...) #1

declare dso_local i32* @RB_FIND(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
