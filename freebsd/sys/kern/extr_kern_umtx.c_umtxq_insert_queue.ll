; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_insert_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_insert_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_q = type { i32, %struct.umtxq_queue*, %struct.umtxq_queue*, i32 }
%struct.umtxq_queue = type { i32, i32, i32 }
%struct.umtxq_chain = type { i64, i64, i32*, i32 }

@UQF_UMTXQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"umtx_q is already on queue\00", align 1
@link = common dso_local global i32 0, align 4
@uq_link = common dso_local global i32 0, align 4
@max_length = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umtx_q*, i32)* @umtxq_insert_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtxq_insert_queue(%struct.umtx_q* %0, i32 %1) #0 {
  %3 = alloca %struct.umtx_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umtxq_queue*, align 8
  %6 = alloca %struct.umtxq_chain*, align 8
  store %struct.umtx_q* %0, %struct.umtx_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %8 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %7, i32 0, i32 3
  %9 = call %struct.umtxq_chain* @umtxq_getchain(i32* %8)
  store %struct.umtxq_chain* %9, %struct.umtxq_chain** %6, align 8
  %10 = load %struct.umtxq_chain*, %struct.umtxq_chain** %6, align 8
  %11 = call i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain* %10)
  %12 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %13 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @UQF_UMTXQ, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %21 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %20, i32 0, i32 3
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.umtxq_queue* @umtxq_queue_lookup(i32* %21, i32 %22)
  store %struct.umtxq_queue* %23, %struct.umtxq_queue** %5, align 8
  %24 = load %struct.umtxq_queue*, %struct.umtxq_queue** %5, align 8
  %25 = icmp ne %struct.umtxq_queue* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.umtxq_chain*, %struct.umtxq_chain** %6, align 8
  %28 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %27, i32 0, i32 3
  %29 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %30 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %29, i32 0, i32 2
  %31 = load %struct.umtxq_queue*, %struct.umtxq_queue** %30, align 8
  %32 = load i32, i32* @link, align 4
  %33 = call i32 @LIST_INSERT_HEAD(i32* %28, %struct.umtxq_queue* %31, i32 %32)
  br label %52

34:                                               ; preds = %2
  %35 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %36 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %35, i32 0, i32 2
  %37 = load %struct.umtxq_queue*, %struct.umtxq_queue** %36, align 8
  store %struct.umtxq_queue* %37, %struct.umtxq_queue** %5, align 8
  %38 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %39 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.umtxq_queue*, %struct.umtxq_queue** %5, align 8
  %42 = getelementptr inbounds %struct.umtxq_queue, %struct.umtxq_queue* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.umtxq_chain*, %struct.umtxq_chain** %6, align 8
  %44 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.umtxq_queue*, %struct.umtxq_queue** %5, align 8
  %50 = load i32, i32* @link, align 4
  %51 = call i32 @LIST_INSERT_HEAD(i32* %48, %struct.umtxq_queue* %49, i32 %50)
  br label %52

52:                                               ; preds = %34, %26
  %53 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %54 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %53, i32 0, i32 2
  store %struct.umtxq_queue* null, %struct.umtxq_queue** %54, align 8
  %55 = load %struct.umtxq_queue*, %struct.umtxq_queue** %5, align 8
  %56 = getelementptr inbounds %struct.umtxq_queue, %struct.umtxq_queue* %55, i32 0, i32 1
  %57 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %58 = load i32, i32* @uq_link, align 4
  %59 = call i32 @TAILQ_INSERT_TAIL(i32* %56, %struct.umtx_q* %57, i32 %58)
  %60 = load %struct.umtxq_queue*, %struct.umtxq_queue** %5, align 8
  %61 = getelementptr inbounds %struct.umtxq_queue, %struct.umtxq_queue* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @UQF_UMTXQ, align 4
  %65 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %66 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.umtxq_queue*, %struct.umtxq_queue** %5, align 8
  %70 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %71 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %70, i32 0, i32 1
  store %struct.umtxq_queue* %69, %struct.umtxq_queue** %71, align 8
  ret void
}

declare dso_local %struct.umtxq_chain* @umtxq_getchain(i32*) #1

declare dso_local i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.umtxq_queue* @umtxq_queue_lookup(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.umtxq_queue*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.umtx_q*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
