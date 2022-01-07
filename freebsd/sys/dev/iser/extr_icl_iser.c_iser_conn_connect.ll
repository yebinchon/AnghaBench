; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_icl_iser.c_iser_conn_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.icl_conn = type { i32 }
%struct.sockaddr = type { i32 }
%struct.iser_conn = type { i32, i64, i32, i32, i32, %struct.ib_conn }
%struct.ib_conn = type { i32*, i32* }

@ISER_CONN_PENDING = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@iser_cma_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rdma_create_id failed: %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rdma_resolve_addr failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"before cv_wait: %p\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"after cv_wait: %p\00", align 1
@ISER_CONN_UP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_conn_connect(%struct.icl_conn* %0, i32 %1, i32 %2, i32 %3, %struct.sockaddr* %4, %struct.sockaddr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.icl_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca %struct.sockaddr*, align 8
  %14 = alloca %struct.iser_conn*, align 8
  %15 = alloca %struct.ib_conn*, align 8
  %16 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store %struct.sockaddr* %5, %struct.sockaddr** %13, align 8
  %17 = load %struct.icl_conn*, %struct.icl_conn** %8, align 8
  %18 = call %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn* %17)
  store %struct.iser_conn* %18, %struct.iser_conn** %14, align 8
  %19 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %20 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %19, i32 0, i32 5
  store %struct.ib_conn* %20, %struct.ib_conn** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.icl_conn*, %struct.icl_conn** %8, align 8
  %22 = call i32 @iser_conn_release(%struct.icl_conn* %21)
  %23 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %24 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %23, i32 0, i32 2
  %25 = call i32 @sx_xlock(i32* %24)
  %26 = load %struct.ib_conn*, %struct.ib_conn** %15, align 8
  %27 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %29 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load i64, i64* @ISER_CONN_PENDING, align 8
  %31 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %32 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* @iser_cma_handler, align 4
  %34 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %35 = bitcast %struct.iser_conn* %34 to i8*
  %36 = load i32, i32* @RDMA_PS_TCP, align 4
  %37 = load i32, i32* @IB_QPT_RC, align 4
  %38 = call i32* @rdma_create_id(i32* @init_net, i32 %33, i8* %35, i32 %36, i32 %37)
  %39 = load %struct.ib_conn*, %struct.ib_conn** %15, align 8
  %40 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ib_conn*, %struct.ib_conn** %15, align 8
  %42 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %6
  %47 = load %struct.ib_conn*, %struct.ib_conn** %15, align 8
  %48 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @ISER_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %104

54:                                               ; preds = %6
  %55 = load %struct.ib_conn*, %struct.ib_conn** %15, align 8
  %56 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %59 = load %struct.sockaddr*, %struct.sockaddr** %13, align 8
  %60 = call i32 @rdma_resolve_addr(i32* %57, %struct.sockaddr* %58, %struct.sockaddr* %59, i32 1000)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @ISER_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %16, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %107

72:                                               ; preds = %54
  %73 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %74 = call i32 @ISER_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.iser_conn* %73)
  %75 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %76 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %75, i32 0, i32 4
  %77 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %78 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %77, i32 0, i32 2
  %79 = call i32 @cv_wait(i32* %76, i32* %78)
  %80 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %81 = call i32 @ISER_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %struct.iser_conn* %80)
  %82 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %83 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ISER_CONN_UP, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* @EIO, align 4
  store i32 %88, i32* %16, align 4
  br label %107

89:                                               ; preds = %72
  %90 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %91 = call i32 @iser_alloc_login_buf(%struct.iser_conn* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %107

95:                                               ; preds = %89
  %96 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %97 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %96, i32 0, i32 2
  %98 = call i32 @sx_xunlock(i32* %97)
  %99 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  %100 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %101 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %100, i32 0, i32 3
  %102 = call i32 @list_add(i32* %101, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 1))
  %103 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ig, i32 0, i32 0))
  store i32 0, i32* %7, align 4
  br label %112

104:                                              ; preds = %46
  %105 = load %struct.ib_conn*, %struct.ib_conn** %15, align 8
  %106 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %105, i32 0, i32 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %104, %94, %87, %71
  %108 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  %109 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %108, i32 0, i32 2
  %110 = call i32 @sx_xunlock(i32* %109)
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %107, %95
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.iser_conn* @icl_to_iser_conn(%struct.icl_conn*) #1

declare dso_local i32 @iser_conn_release(%struct.icl_conn*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32* @rdma_create_id(i32*, i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ISER_ERR(i8*, i32) #1

declare dso_local i32 @rdma_resolve_addr(i32*, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ISER_DBG(i8*, %struct.iser_conn*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @iser_alloc_login_buf(%struct.iser_conn*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
