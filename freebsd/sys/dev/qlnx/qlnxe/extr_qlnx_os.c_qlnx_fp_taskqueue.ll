; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_fp_taskqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_fp_taskqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnx_fastpath = type { i32, i64, i32, i64, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"exit \0A\00", align 1
@tx_compl = common dso_local global i64 0, align 8
@tx_pkts = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @qlnx_fp_taskqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_fp_taskqueue(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlnx_fastpath*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.qlnx_fastpath*
  store %struct.qlnx_fastpath* %9, %struct.qlnx_fastpath** %5, align 8
  %10 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %11 = icmp eq %struct.qlnx_fastpath* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %15 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %7, align 8
  %21 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %13
  %28 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %29 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %30 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @drbr_empty(%struct.ifnet* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %36 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %35, i32 0, i32 0
  %37 = call i64 @mtx_trylock(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %41 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %42 = call i32 @qlnx_transmit_locked(%struct.ifnet* %40, %struct.qlnx_fastpath* %41, i32* null)
  %43 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %44 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %43, i32 0, i32 0
  %45 = call i32 @mtx_unlock(i32* %44)
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46, %27
  br label %48

48:                                               ; preds = %47, %13
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = call i32 @QL_DPRINT2(%struct.TYPE_3__* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @drbr_empty(%struct.ifnet*, i32) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @qlnx_transmit_locked(%struct.ifnet*, %struct.qlnx_fastpath*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
