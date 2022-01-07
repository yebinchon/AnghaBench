; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scterm-teken.c_scteken_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@reserved_teken_stat = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@sc_term_scteken = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@scteken_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32)* @scteken_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scteken_init(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @reserved_teken_stat, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %13
  %19 = load i8**, i8*** %6, align 8
  store i8* bitcast (%struct.TYPE_7__* @reserved_teken_stat to i8*), i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %8, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %51 [
    i32 129, label %25
    i32 128, label %30
  ]

25:                                               ; preds = %20
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sc_term_scteken, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sc_term_scteken, i32 0, i32 0), align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %25
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = call i32* @teken_get_defattr(i32* %32)
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @teken_init(i32* %36, i32* @scteken_funcs, i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = call i32 @teken_set_defattr(i32* %40, i32* %9)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = call i32 @teken_set_8bit(i32* %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i32 @teken_set_cons25keys(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = call i32 @scteken_sync_internal(i32* %48, %struct.TYPE_5__* %49)
  br label %51

51:                                               ; preds = %20, %30
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32* @teken_get_defattr(i32*) #1

declare dso_local i32 @teken_init(i32*, i32*, i32*) #1

declare dso_local i32 @teken_set_defattr(i32*, i32*) #1

declare dso_local i32 @teken_set_8bit(i32*) #1

declare dso_local i32 @teken_set_cons25keys(i32*) #1

declare dso_local i32 @scteken_sync_internal(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
