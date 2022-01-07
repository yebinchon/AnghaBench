; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_unref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_pi = type { i64, i32, i32*, i32 }
%struct.umtxq_chain = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"invalid reference count\00", align 1
@umtx_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"blocked queue not empty\00", align 1
@pi_hashlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.umtx_pi*)* @umtx_pi_unref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umtx_pi_unref(%struct.umtx_pi* %0) #0 {
  %2 = alloca %struct.umtx_pi*, align 8
  %3 = alloca %struct.umtxq_chain*, align 8
  store %struct.umtx_pi* %0, %struct.umtx_pi** %2, align 8
  %4 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %5 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %4, i32 0, i32 3
  %6 = call %struct.umtxq_chain* @umtxq_getchain(i32* %5)
  store %struct.umtxq_chain* %6, %struct.umtxq_chain** %3, align 8
  %7 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %8 = call i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain* %7)
  %9 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %10 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %16 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = call i32 @mtx_lock(i32* @umtx_lock)
  %22 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %23 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %28 = call i32 @umtx_pi_disown(%struct.umtx_pi* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %31 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %30, i32 0, i32 1
  %32 = call i32 @TAILQ_EMPTY(i32* %31)
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @mtx_unlock(i32* @umtx_lock)
  %35 = load %struct.umtxq_chain*, %struct.umtxq_chain** %3, align 8
  %36 = getelementptr inbounds %struct.umtxq_chain, %struct.umtxq_chain* %35, i32 0, i32 0
  %37 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %38 = load i32, i32* @pi_hashlink, align 4
  %39 = call i32 @TAILQ_REMOVE(i32* %36, %struct.umtx_pi* %37, i32 %38)
  %40 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  %41 = call i32 @umtx_pi_free(%struct.umtx_pi* %40)
  br label %42

42:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.umtxq_chain* @umtxq_getchain(i32*) #1

declare dso_local i32 @UMTXQ_LOCKED_ASSERT(%struct.umtxq_chain*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @umtx_pi_disown(%struct.umtx_pi*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.umtx_pi*, i32) #1

declare dso_local i32 @umtx_pi_free(%struct.umtx_pi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
