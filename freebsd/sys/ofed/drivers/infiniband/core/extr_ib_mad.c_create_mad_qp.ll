; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_create_mad_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_create_mad_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_qp_info = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32, %struct.ib_mad_qp_info*, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }

@IB_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@mad_sendq_size = common dso_local global i8* null, align 8
@mad_recvq_size = common dso_local global i8* null, align 8
@IB_MAD_SEND_REQ_MAX_SG = common dso_local global i32 0, align 4
@IB_MAD_RECV_REQ_MAX_SG = common dso_local global i32 0, align 4
@qp_event_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't create ib_mad QP%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_qp_info*, i32)* @create_mad_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_mad_qp(%struct.ib_mad_qp_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_mad_qp_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp_init_attr, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_qp_info* %0, %struct.ib_mad_qp_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @memset(%struct.ib_qp_init_attr* %6, i32 0, i32 64)
  %9 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %10 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 7
  store i32 %13, i32* %14, align 8
  %15 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %16 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @IB_SIGNAL_ALL_WR, align 4
  %22 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 5
  store i32 %21, i32* %22, align 8
  %23 = load i8*, i8** @mad_sendq_size, align 8
  %24 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @mad_recvq_size, align 8
  %27 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @IB_MAD_SEND_REQ_MAX_SG, align 4
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @IB_MAD_RECV_REQ_MAX_SG, align 4
  %33 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %38 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %44 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 2
  store %struct.ib_mad_qp_info* %43, %struct.ib_mad_qp_info** %44, align 8
  %45 = load i32, i32* @qp_event_handler, align 4
  %46 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %48 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ib_create_qp(i32 %51, %struct.ib_qp_init_attr* %6)
  %53 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %54 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %56 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %2
  %61 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %62 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @get_spl_qp_index(i32 %67)
  %69 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %71 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @PTR_ERR(i32 %72)
  store i32 %73, i32* %7, align 4
  br label %83

74:                                               ; preds = %2
  %75 = load i8*, i8** @mad_sendq_size, align 8
  %76 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %77 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load i8*, i8** @mad_recvq_size, align 8
  %80 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %4, align 8
  %81 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  store i32 0, i32* %3, align 4
  br label %85

83:                                               ; preds = %60
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %74
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local i32 @ib_create_qp(i32, %struct.ib_qp_init_attr*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @get_spl_qp_index(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
