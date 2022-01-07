; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64 }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.qlnx_fastpath* }
%struct.qlnx_fastpath = type { i32, i32*, i32*, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@M_FLOWID = common dso_local global i32 0, align 4
@ECORE_RSS_IND_TABLE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"exit ret = %d\0A\00", align 1
@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @qlnx_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.qlnx_fastpath*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_5__* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @M_FLOWID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ECORE_RSS_IND_TABLE_SIZE, align 4
  %27 = srem i32 %25, %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = srem i32 %27, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %35, i64 %37
  store %struct.qlnx_fastpath* %38, %struct.qlnx_fastpath** %6, align 8
  %39 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %40 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %8, align 4
  br label %81

45:                                               ; preds = %32
  %46 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %47 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %46, i32 0, i32 3
  %48 = call i64 @mtx_trylock(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %52 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = call i32 @qlnx_transmit_locked(%struct.ifnet* %51, %struct.qlnx_fastpath* %52, %struct.mbuf* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %56 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %55, i32 0, i32 3
  %57 = call i32 @mtx_unlock(i32* %56)
  br label %80

58:                                               ; preds = %45
  %59 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %60 = icmp ne %struct.mbuf* %59, null
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %63 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %69 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %72 = call i32 @drbr_enqueue(%struct.ifnet* %67, i32* %70, %struct.mbuf* %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %74 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %6, align 8
  %77 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %76, i32 0, i32 0
  %78 = call i32 @taskqueue_enqueue(i32* %75, i32* %77)
  br label %79

79:                                               ; preds = %66, %61, %58
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %43
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (%struct.TYPE_5__*, i8*, ...) @QL_DPRINT2(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @QL_DPRINT2(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @qlnx_transmit_locked(%struct.ifnet*, %struct.qlnx_fastpath*, %struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, i32*, %struct.mbuf*) #1

declare dso_local i32 @taskqueue_enqueue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
