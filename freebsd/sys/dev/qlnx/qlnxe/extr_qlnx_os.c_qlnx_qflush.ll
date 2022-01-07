; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.qlnx_fastpath = type { i32, i32, i64 }
%struct.mbuf = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.qlnx_fastpath* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @qlnx_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_qflush(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlnx_fastpath*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %7 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %8 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = call i32 @QL_DPRINT2(%struct.TYPE_3__* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %57, %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %22, i64 %24
  store %struct.qlnx_fastpath* %25, %struct.qlnx_fastpath** %4, align 8
  %26 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %27 = icmp eq %struct.qlnx_fastpath* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %57

29:                                               ; preds = %19
  %30 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %31 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %36 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %35, i32 0, i32 0
  %37 = call i32 @mtx_lock(i32* %36)
  br label %38

38:                                               ; preds = %45, %34
  %39 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %40 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %41 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.mbuf* @drbr_dequeue(%struct.ifnet* %39, i64 %42)
  store %struct.mbuf* %43, %struct.mbuf** %5, align 8
  %44 = icmp ne %struct.mbuf* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %47 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %51 = call i32 @m_freem(%struct.mbuf* %50)
  br label %38

52:                                               ; preds = %38
  %53 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %4, align 8
  %54 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %53, i32 0, i32 0
  %55 = call i32 @mtx_unlock(i32* %54)
  br label %56

56:                                               ; preds = %52, %29
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %13

60:                                               ; preds = %13
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = call i32 @QL_DPRINT2(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mbuf* @drbr_dequeue(%struct.ifnet*, i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
