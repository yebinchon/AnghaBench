; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_post_recvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_post_recvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i64, i32, %struct.ib_conn }
%struct.ib_conn = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_recv_wr = type { i64, i32, i32*, %struct.ib_sge* }
%struct.ib_sge = type { i32, i32, i32 }

@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ib_post_recv failed ret=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_recvl(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca %struct.ib_recv_wr, align 8
  %4 = alloca %struct.ib_recv_wr*, align 8
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca %struct.ib_sge, align 4
  %7 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %8 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %9 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %8, i32 0, i32 2
  store %struct.ib_conn* %9, %struct.ib_conn** %5, align 8
  %10 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %11 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %6, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %15 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %17 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %25 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 3
  store %struct.ib_sge* %6, %struct.ib_sge** %28, align 8
  %29 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %32 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %36 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ib_post_recv(i32 %37, %struct.ib_recv_wr* %3, %struct.ib_recv_wr** %4)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ISER_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %45 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %1
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @ISER_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
