; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_get_collundef.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_collate.c_get_collundef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32* }

@collundefs = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@NUM_WT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*)* @get_collundef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_collundef(i8* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = load i32, i32* @collundefs, align 4
  %10 = call %struct.TYPE_8__* @RB_FIND(i32 %9, i32* @collundefs, %struct.TYPE_8__* %4)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = icmp eq %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %46

12:                                               ; preds = %1
  %13 = call %struct.TYPE_8__* @calloc(i32 1, i32 16)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strdup(i8* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = icmp eq i8* %17, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %12
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = call i32 @free(%struct.TYPE_8__* %24)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %50

26:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @NUM_WT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = call i32 (...) @new_pri()
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
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
  %43 = load i32, i32* @collundefs, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = call i32 @RB_INSERT(i32 %43, i32* @collundefs, %struct.TYPE_8__* %44)
  br label %46

46:                                               ; preds = %42, %1
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @add_charmap_undefined(i8* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %2, align 8
  br label %50

50:                                               ; preds = %46, %21
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %51
}

declare dso_local %struct.TYPE_8__* @RB_FIND(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @new_pri(...) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @add_charmap_undefined(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
