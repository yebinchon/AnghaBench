; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_ocs_hw_rqpair_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32, i32, %struct.TYPE_10__**, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32** }
%struct.TYPE_8__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"RQ index %d bufindex %d exceed ring length %d for id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"RQ buffer NULL, rqindex %d, bufindex %d, current q index = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i64, i64)* @ocs_hw_rqpair_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ocs_hw_rqpair_get(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %15
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %21
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  store i32* null, i32** %10, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %25, i64 %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %11, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp uge i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i64, i64, i64, ...) @ocs_log_err(i32 %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, i64 %47, i32 %50)
  store i32* null, i32** %4, align 8
  br label %87

52:                                               ; preds = %3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = call i32 @sli_queue_lock(%struct.TYPE_8__* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = call i32 @sli_queue_lock(%struct.TYPE_8__* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32**, i32*** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %10, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  store i32* null, i32** %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %52
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = call i32 (i32, i8*, i64, i64, i64, ...) @ocs_log_err(i32 %73, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %75, i64 %79)
  br label %81

81:                                               ; preds = %70, %52
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = call i32 @sli_queue_unlock(%struct.TYPE_8__* %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = call i32 @sli_queue_unlock(%struct.TYPE_8__* %84)
  %86 = load i32*, i32** %10, align 8
  store i32* %86, i32** %4, align 8
  br label %87

87:                                               ; preds = %81, %39
  %88 = load i32*, i32** %4, align 8
  ret i32* %88
}

declare dso_local i32 @ocs_log_err(i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @sli_queue_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @sli_queue_unlock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
