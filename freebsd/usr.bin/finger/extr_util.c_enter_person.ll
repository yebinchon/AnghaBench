; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_enter_person.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/finger/extr_util.c_enter_person.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32* }
%struct.passwd = type { %struct.TYPE_17__** }

@db = common dso_local global %struct.TYPE_19__* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@DB_BTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"db get\00", align 1
@entries = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"db put\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @enter_person(%struct.passwd* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %struct.TYPE_18__, align 8
  %5 = alloca %struct.TYPE_18__, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.passwd* %0, %struct.passwd** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** @db, align 8
  %8 = icmp eq %struct.TYPE_19__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* @O_RDWR, align 4
  %11 = load i32, i32* @DB_BTREE, align 4
  %12 = call %struct.TYPE_19__* @dbopen(i32* null, i32 %10, i32 0, i32 %11, i32* null)
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** @db, align 8
  %13 = icmp eq %struct.TYPE_19__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @err(i32 1, i8* null)
  br label %16

16:                                               ; preds = %14, %9, %1
  %17 = load %struct.passwd*, %struct.passwd** %3, align 8
  %18 = getelementptr inbounds %struct.passwd, %struct.passwd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  store %struct.TYPE_17__** %19, %struct.TYPE_17__*** %20, align 8
  %21 = load %struct.passwd*, %struct.passwd** %3, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %22, align 8
  %24 = call i32 @strlen(%struct.TYPE_17__** %23)
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** @db, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)** %27, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** @db, align 8
  %30 = call i32 %28(%struct.TYPE_19__* %29, %struct.TYPE_18__* %5, %struct.TYPE_18__* %4, i32 0)
  switch i32 %30, label %36 [
    i32 0, label %31
    i32 -1, label %37
    i32 1, label %39
  ]

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %33 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %32, align 8
  %34 = call i32 @memmove(%struct.TYPE_17__** %6, %struct.TYPE_17__** %33, i32 8)
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %2, align 8
  br label %60

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %16, %36
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %16, %37
  %40 = load i32, i32* @entries, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @entries, align 4
  %42 = call %struct.TYPE_17__* (...) @palloc()
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %6, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = load %struct.passwd*, %struct.passwd** %3, align 8
  %45 = call i32 @userinfo(%struct.TYPE_17__* %43, %struct.passwd* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  store i32 8, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  store %struct.TYPE_17__** %6, %struct.TYPE_17__*** %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** @db, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32)** %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** @db, align 8
  %54 = call i32 %52(%struct.TYPE_19__* %53, %struct.TYPE_18__* %5, %struct.TYPE_18__* %4, i32 0)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %39
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %2, align 8
  br label %60

60:                                               ; preds = %58, %31
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %61
}

declare dso_local %struct.TYPE_19__* @dbopen(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @strlen(%struct.TYPE_17__**) #1

declare dso_local i32 @memmove(%struct.TYPE_17__**, %struct.TYPE_17__**, i32) #1

declare dso_local %struct.TYPE_17__* @palloc(...) #1

declare dso_local i32 @userinfo(%struct.TYPE_17__*, %struct.passwd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
