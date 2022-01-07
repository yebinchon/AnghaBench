; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mq_attr = type { i32, i32 }

@curmq = common dso_local global i64 0, align 8
@maxmq = common dso_local global i64 0, align 8
@mqueue_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@default_maxmsg = common dso_local global i32 0, align 4
@default_msgsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mqueue lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mqueue* (%struct.mq_attr*)* @mqueue_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mqueue* @mqueue_alloc(%struct.mq_attr* %0) #0 {
  %2 = alloca %struct.mqueue*, align 8
  %3 = alloca %struct.mq_attr*, align 8
  %4 = alloca %struct.mqueue*, align 8
  store %struct.mq_attr* %0, %struct.mq_attr** %3, align 8
  %5 = load i64, i64* @curmq, align 8
  %6 = load i64, i64* @maxmq, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.mqueue* null, %struct.mqueue** %2, align 8
  br label %57

9:                                                ; preds = %1
  %10 = load i32, i32* @mqueue_zone, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.mqueue* @uma_zalloc(i32 %10, i32 %13)
  store %struct.mqueue* %14, %struct.mqueue** %4, align 8
  %15 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %16 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %15, i32 0, i32 5
  %17 = call i32 @TAILQ_INIT(i32* %16)
  %18 = load %struct.mq_attr*, %struct.mq_attr** %3, align 8
  %19 = icmp ne %struct.mq_attr* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %9
  %21 = load %struct.mq_attr*, %struct.mq_attr** %3, align 8
  %22 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %25 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mq_attr*, %struct.mq_attr** %3, align 8
  %27 = getelementptr inbounds %struct.mq_attr, %struct.mq_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %30 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  br label %38

31:                                               ; preds = %9
  %32 = load i32, i32* @default_maxmsg, align 4
  %33 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %34 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @default_msgsize, align 4
  %36 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %37 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %31, %20
  %39 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %40 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %39, i32 0, i32 0
  %41 = load i32, i32* @MTX_DEF, align 4
  %42 = call i32 @mtx_init(i32* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %41)
  %43 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %44 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %47 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %46, i32 0, i32 0
  %48 = call i32 @knlist_init_mtx(i32* %45, i32* %47)
  %49 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %50 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  %53 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %52, i32 0, i32 0
  %54 = call i32 @knlist_init_mtx(i32* %51, i32* %53)
  %55 = call i32 @atomic_add_int(i64* @curmq, i32 1)
  %56 = load %struct.mqueue*, %struct.mqueue** %4, align 8
  store %struct.mqueue* %56, %struct.mqueue** %2, align 8
  br label %57

57:                                               ; preds = %38, %8
  %58 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  ret %struct.mqueue* %58
}

declare dso_local %struct.mqueue* @uma_zalloc(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @atomic_add_int(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
