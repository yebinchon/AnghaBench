; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c____cre_dma_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c____cre_dma_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i32, i32, i32, i32 }

@mp0 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"MPOOL\00", align 1
@MEMO_CLUSTER_SIZE = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@___dma_getp = common dso_local global i32 0, align 4
@___dma_freep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32)* @___cre_dma_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @___cre_dma_pool(i32 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  %5 = call %struct.TYPE_8__* @__sym_calloc(%struct.TYPE_9__* @mp0, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MEMO_CLUSTER_SIZE, align 4
  %14 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %15 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %16 = load i32, i32* @MEMO_CLUSTER_SIZE, align 4
  %17 = load i32, i32* @MEMO_CLUSTER_SIZE, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = call i32 @bus_dma_tag_create(i32 %12, i32 1, i32 %13, i32 %14, i32 %15, i32* null, i32* null, i32 %16, i32 1, i32 %17, i32 0, i32* null, i32* null, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* @___dma_getp, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mp0, i32 0, i32 0), align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mp0, i32 0, i32 0), align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %2, align 8
  br label %39

31:                                               ; preds = %8
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = call i32 @__sym_mfree(%struct.TYPE_9__* @mp0, %struct.TYPE_8__* %36, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %40
}

declare dso_local %struct.TYPE_8__* @__sym_calloc(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @__sym_mfree(%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
