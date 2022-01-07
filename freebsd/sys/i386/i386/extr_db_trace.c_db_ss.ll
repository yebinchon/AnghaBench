; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_ss.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_trace.c_db_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.db_variable = type { i32 }

@kdb_frame = common dso_local global %struct.TYPE_3__* null, align 8
@DB_VAR_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_variable*, i32*, i32)* @db_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_ss(%struct.db_variable* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.db_variable*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.db_variable* %0, %struct.db_variable** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_frame, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DB_VAR_GET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_frame, align 8
  %17 = call i64 @TF_HAS_STACKREGS(%struct.TYPE_3__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_frame, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %25

23:                                               ; preds = %15
  %24 = call i32 (...) @rss()
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %22, %19 ], [ %24, %23 ]
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %38

28:                                               ; preds = %11
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_frame, align 8
  %30 = call i64 @TF_HAS_STACKREGS(%struct.TYPE_3__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kdb_frame, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %28
  br label %38

38:                                               ; preds = %37, %25
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %10
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @TF_HAS_STACKREGS(%struct.TYPE_3__*) #1

declare dso_local i32 @rss(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
