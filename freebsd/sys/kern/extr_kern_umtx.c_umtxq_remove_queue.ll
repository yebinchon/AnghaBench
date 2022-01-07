; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_remove_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtxq_remove_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_q = type { i32, %struct.umtxq_queue*, %struct.umtxq_queue*, i32 }
%struct.umtxq_queue = type { i64, i32 }
%struct.umtxq_chain = type { i32, i32 }

@UQF_UMTXQ = common dso_local global i32 0, align 4
@uq_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inconsistent umtxq_queue length\00", align 1
@link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"uc_spare_queue is empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umtx_q*, i32)* @umtxq_remove_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtxq_remove_queue(%struct.umtx_q* %0, i32 %1) #0 {
  %3 = alloca %struct.umtx_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.umtxq_chain*, align 8
  %6 = alloca %struct.umtxq_queue*, align 8
  store %struct.umtx_q* %0, %struct.umtx_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %8 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %7, i32 0, i32 3
  %9 = call %struct.umtxq_chain* @umtxq_getchain(i32* %8)
  store %struct.umtxq_chain* %9, %struct.umtxq_chain** %5, align 8
  %10 = load %struct.umtxq_chain*, %struct.umtxq_chain** %5, align 8
  %11 = call i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain* %10)
  %12 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %13 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @UQF_UMTXQ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %2
  %19 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %20 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %19, i32 0, i32 1
  %21 = load %struct.umtxq_queue*, %struct.umtxq_queue** %20, align 8
  store %struct.umtxq_queue* %21, %struct.umtxq_queue** %6, align 8
  %22 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %23 = getelementptr inbounds %struct.umtxq_queue, %struct.umtxq_queue* %22, i32 0, i32 1
  %24 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %25 = load i32, i32* @uq_link, align 4
  %26 = call i32 @TAILQ_REMOVE(i32* %23, %struct.umtx_q* %24, i32 %25)
  %27 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %28 = getelementptr inbounds %struct.umtxq_queue, %struct.umtxq_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load i32, i32* @UQF_UMTXQ, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %34 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %38 = getelementptr inbounds %struct.umtxq_queue, %struct.umtxq_queue* %37, i32 0, i32 1
  %39 = call i64 @TAILQ_EMPTY(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %18
  %42 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %43 = getelementptr inbounds %struct.umtxq_queue, %struct.umtxq_queue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @KASSERT(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %49 = load i32, i32* @link, align 4
  %50 = call i32 @LIST_REMOVE(%struct.umtxq_queue* %48, i32 %49)
  br label %62

51:                                               ; preds = %18
  %52 = load %struct.umtxq_chain*, %struct.umtxq_chain** %5, align 8
  %53 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %52, i32 0, i32 0
  %54 = call %struct.umtxq_queue* @LIST_FIRST(i32* %53)
  store %struct.umtxq_queue* %54, %struct.umtxq_queue** %6, align 8
  %55 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %56 = icmp ne %struct.umtxq_queue* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @KASSERT(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %60 = load i32, i32* @link, align 4
  %61 = call i32 @LIST_REMOVE(%struct.umtxq_queue* %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %41
  %63 = load %struct.umtxq_queue*, %struct.umtxq_queue** %6, align 8
  %64 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %65 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %64, i32 0, i32 2
  store %struct.umtxq_queue* %63, %struct.umtxq_queue** %65, align 8
  %66 = load %struct.umtx_q*, %struct.umtx_q** %3, align 8
  %67 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %66, i32 0, i32 1
  store %struct.umtxq_queue* null, %struct.umtxq_queue** %67, align 8
  br label %68

68:                                               ; preds = %62, %2
  ret void
}

declare dso_local %struct.umtxq_chain* @umtxq_getchain(i32*) #1

declare dso_local i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.umtx_q*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.umtxq_queue*, i32) #1

declare dso_local %struct.umtxq_queue* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
