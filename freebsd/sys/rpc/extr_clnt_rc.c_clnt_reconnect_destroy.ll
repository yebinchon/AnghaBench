; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_clnt_rc.c_clnt_reconnect_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_data = type { i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_data*)* @clnt_reconnect_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clnt_reconnect_destroy(%struct.rc_data* %0) #0 {
  %2 = alloca %struct.rc_data*, align 8
  %3 = alloca %struct.rc_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.rc_data* %0, %struct.rc_data** %2, align 8
  %5 = load %struct.rc_data*, %struct.rc_data** %2, align 8
  %6 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.rc_data*
  store %struct.rc_data* %8, %struct.rc_data** %3, align 8
  %9 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %10 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %15 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @CLNT_DESTROY(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %20 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %25 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @xprt_unregister(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @SVC_RELEASE(i32* %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %34 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @crfree(i32 %35)
  %37 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %38 = getelementptr inbounds %struct.rc_data, %struct.rc_data* %37, i32 0, i32 0
  %39 = call i32 @mtx_destroy(i32* %38)
  %40 = load %struct.rc_data*, %struct.rc_data** %3, align 8
  %41 = call i32 @mem_free(%struct.rc_data* %40, i32 32)
  %42 = load %struct.rc_data*, %struct.rc_data** %2, align 8
  %43 = call i32 @mem_free(%struct.rc_data* %42, i32 32)
  ret void
}

declare dso_local i32 @CLNT_DESTROY(i64) #1

declare dso_local i32 @xprt_unregister(i32*) #1

declare dso_local i32 @SVC_RELEASE(i32*) #1

declare dso_local i32 @crfree(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @mem_free(%struct.rc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
