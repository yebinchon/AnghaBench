; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_bck.c_clnt_bck_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_bck.c_clnt_bck_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ct_data = type { i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"rpcclose\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"client should be closed\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @clnt_bck_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clnt_bck_close(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ct_data*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.ct_data*
  store %struct.ct_data* %7, %struct.ct_data** %3, align 8
  %8 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %9 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %12 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %17 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %21 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %30, %24
  %26 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %27 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %32 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %33 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %32, i32 0, i32 0
  %34 = call i32 @msleep(%struct.ct_data* %31, i32* %33, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %25

35:                                               ; preds = %25
  %36 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %37 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @KASSERT(i64 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %41 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %40, i32 0, i32 0
  %42 = call i32 @mtx_unlock(i32* %41)
  br label %55

43:                                               ; preds = %19
  %44 = load i64, i64* @FALSE, align 8
  %45 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %46 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* @TRUE, align 8
  %48 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %49 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %51 = getelementptr inbounds %struct.ct_data, %struct.ct_data* %50, i32 0, i32 0
  %52 = call i32 @mtx_unlock(i32* %51)
  %53 = load %struct.ct_data*, %struct.ct_data** %3, align 8
  %54 = call i32 @wakeup(%struct.ct_data* %53)
  br label %55

55:                                               ; preds = %43, %35, %15
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @msleep(%struct.ct_data*, i32*, i32, i8*, i32) #1

declare dso_local i32 @KASSERT(i64, i8*) #1

declare dso_local i32 @wakeup(%struct.ct_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
