; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.qlnx_fastpath*, i32, %struct.ifnet* }
%struct.qlnx_fastpath = type { i32, i32*, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"QLNX STATE = %d\0A\00", align 1
@QLNX_STATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @qlnx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnx_stop(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlnx_fastpath*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @QL_DPRINT1(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QLNX_STATE_OPEN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %63, %31
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %41, i64 %43
  store %struct.qlnx_fastpath* %44, %struct.qlnx_fastpath** %6, align 8
  %45 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %46 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %45, i32 0, i32 2
  %47 = call i32 @mtx_lock(i32* %46)
  %48 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %49 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %48, i32 0, i32 2
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %52 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %38
  %56 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %57 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %60 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %59, i32 0, i32 0
  %61 = call i32 @taskqueue_enqueue(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %55, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %32

66:                                               ; preds = %32
  br label %67

67:                                               ; preds = %66, %1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = call i32 @qlnx_unload(%struct.TYPE_7__* %68)
  ret void
}

declare dso_local i32 @QL_DPRINT1(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32*, i32*) #1

declare dso_local i32 @qlnx_unload(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
