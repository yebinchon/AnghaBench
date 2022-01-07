; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { i32 }
%struct.iser_conn = type { i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"closing conn %p\00", align 1
@ISER_CONN_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_conn_close(%struct.icl_conn* %0) #0 {
  %2 = alloca %struct.icl_conn*, align 8
  %3 = alloca %struct.iser_conn*, align 8
  store %struct.icl_conn* %0, %struct.icl_conn** %2, align 8
  %4 = load %struct.icl_conn*, %struct.icl_conn** %2, align 8
  %5 = call %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn* %4)
  store %struct.iser_conn* %5, %struct.iser_conn** %3, align 8
  %6 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %7 = call i32 @ISER_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %6)
  %8 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %8, i32 0, i32 1
  %10 = call i32 @sx_xlock(i32* %9)
  %11 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %12 = call i32 @iser_conn_terminate(%struct.iser_conn* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %16 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ISER_CONN_PENDING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 2
  %23 = call i32 @cv_signal(i32* %22)
  br label %24

24:                                               ; preds = %20, %14, %1
  %25 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %26 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %25, i32 0, i32 1
  %27 = call i32 @sx_xunlock(i32* %26)
  ret void
}

declare dso_local %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn*) #1

declare dso_local i32 @ISER_INFO(i8*, %struct.iser_conn*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @iser_conn_terminate(%struct.iser_conn*) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
