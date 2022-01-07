; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_new_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_new_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_queue = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__*, i64 }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.prio_si = type { %struct.dn_queue**, i32 }

@DN_SCHED_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_queue*)* @prio_new_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_new_queue(%struct.dn_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_queue*, align 8
  %4 = alloca %struct.prio_si*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_queue*, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %3, align 8
  %7 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %8 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  %11 = inttoptr i64 %10 to %struct.prio_si*
  store %struct.prio_si* %11, %struct.prio_si** %4, align 8
  %12 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %13 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @DN_SCHED_PRIO, align 4
  %21 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %22 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %26 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

31:                                               ; preds = %1
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %34 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %40 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %39, i32 0, i32 1
  %41 = call i32 @__set_bit(i32 %38, i32* %40)
  %42 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %43 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %44 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %43, i32 0, i32 0
  %45 = load %struct.dn_queue**, %struct.dn_queue*** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dn_queue*, %struct.dn_queue** %45, i64 %47
  store %struct.dn_queue* %42, %struct.dn_queue** %48, align 8
  br label %107

49:                                               ; preds = %31
  %50 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %51 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %50, i32 0, i32 0
  %52 = load %struct.dn_queue**, %struct.dn_queue*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dn_queue*, %struct.dn_queue** %52, i64 %54
  %56 = load %struct.dn_queue*, %struct.dn_queue** %55, align 8
  store %struct.dn_queue* %56, %struct.dn_queue** %6, align 8
  %57 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %58 = icmp ne %struct.dn_queue* %56, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %49
  %60 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %61 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %65 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32* %63, i32** %68, align 8
  %69 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %70 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %74 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %75, align 8
  %76 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %77 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %81 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %79
  store i64 %84, i64* %82, align 8
  %85 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %86 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %89 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %93 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %98 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %101 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  %103 = load %struct.dn_queue*, %struct.dn_queue** %3, align 8
  %104 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %105, align 8
  br label %106

106:                                              ; preds = %59, %49
  br label %107

107:                                              ; preds = %106, %37
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %30
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
