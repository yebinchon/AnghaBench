; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.rc_data = type { i32, %struct.TYPE_5__*, i64 }

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @clnt_reconnect_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clnt_reconnect_close(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.rc_data*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rc_data*
  store %struct.rc_data* %8, %struct.rc_data** %3, align 8
  %9 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %10 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %13 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %18 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %17, i32 0, i32 0
  %19 = call i32 @mtx_unlock(i32* %18)
  br label %39

20:                                               ; preds = %1
  %21 = load i64, i64* @TRUE, align 8
  %22 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %23 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %25 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %4, align 8
  %27 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %28 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %27, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %30 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = call i32 @CLNT_CLOSE(%struct.TYPE_5__* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = call i32 @CLNT_RELEASE(%struct.TYPE_5__* %37)
  br label %39

39:                                               ; preds = %16, %34, %20
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @CLNT_CLOSE(%struct.TYPE_5__*) #1

declare dso_local i32 @CLNT_RELEASE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
