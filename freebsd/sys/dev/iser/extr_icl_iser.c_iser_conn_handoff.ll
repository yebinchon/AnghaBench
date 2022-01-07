; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_handoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32 }
%struct.iser_conn = type { i64, i32, i32, i32 }

@ISER_CONN_UP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"iser_conn %p state is %d, teardown started\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_conn_handoff(%struct.icl_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %9 = call %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn* %8)
  store %struct.iser_conn* %9, %struct.iser_conn** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %11 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %10, i32 0, i32 2
  %12 = call i32 @sx_xlock(i32* %11)
  %13 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ISER_CONN_UP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %21 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ISER_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %20, i64 %23)
  br label %53

25:                                               ; preds = %2
  %26 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %27 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %28 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iser_alloc_rx_descriptors(%struct.iser_conn* %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %53

34:                                               ; preds = %25
  %35 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %36 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %37 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @iser_post_recvm(%struct.iser_conn* %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %50

43:                                               ; preds = %34
  %44 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %45 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  %46 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %47 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %46, i32 0, i32 2
  %48 = call i32 @sx_xunlock(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %42
  %51 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %52 = call i32 @iser_free_rx_descriptors(%struct.iser_conn* %51)
  br label %53

53:                                               ; preds = %50, %33, %18
  %54 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %55 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %54, i32 0, i32 2
  %56 = call i32 @sx_xunlock(i32* %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %43
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ISER_ERR(i8*, %struct.iser_conn*, i64) #1

declare dso_local i32 @iser_alloc_rx_descriptors(%struct.iser_conn*, i32) #1

declare dso_local i32 @iser_post_recvm(%struct.iser_conn*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @iser_free_rx_descriptors(%struct.iser_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
