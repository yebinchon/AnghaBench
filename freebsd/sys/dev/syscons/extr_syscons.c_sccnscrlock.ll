; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sccnscrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sccnscrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.sc_cnstate = type { i32, i32 }

@kdb_active = common dso_local global i64 0, align 8
@MTX_UNOWNED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@MTX_QUIET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.sc_cnstate*)* @sccnscrlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sccnscrlock(%struct.TYPE_4__* %0, %struct.sc_cnstate* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.sc_cnstate*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.sc_cnstate* %1, %struct.sc_cnstate** %4, align 8
  %6 = load i64, i64* @kdb_active, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MTX_UNOWNED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = call i64 (...) @SCHEDULER_STOPPED()
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i1 [ true, %8 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %22 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i8*, i8** @FALSE, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %26 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %66

27:                                               ; preds = %2
  %28 = load i8*, i8** @FALSE, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %31 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %62, %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 1000
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* @MTX_QUIET, align 4
  %39 = call i64 @mtx_trylock_spin_flags(%struct.TYPE_5__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %43 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i64 (...) @SCHEDULER_STOPPED()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = load i32, i32* @TRUE, align 4
  %48 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %49 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i8*, i8** @FALSE, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %53 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %65

54:                                               ; preds = %35
  %55 = load %struct.sc_cnstate*, %struct.sc_cnstate** %4, align 8
  %56 = getelementptr inbounds %struct.sc_cnstate, %struct.sc_cnstate* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %65

60:                                               ; preds = %54
  %61 = call i32 @DELAY(i32 1)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %32

65:                                               ; preds = %59, %46, %32
  br label %66

66:                                               ; preds = %65, %18
  ret void
}

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i64 @mtx_trylock_spin_flags(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
