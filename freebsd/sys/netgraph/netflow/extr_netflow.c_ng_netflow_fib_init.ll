; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ng_netflow_fib_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow.c_ng_netflow_fib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@KTR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ng_netflow(): fib init: %d\00", align 1
@M_NETGRAPH = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"export dgram lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"export9 dgram lock\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"ng_netflow(): fib init: %d setup %p but got %p\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ng_netflow(): fib %d setup to %p (%p)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_netflow_fib_init(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.TYPE_11__* @priv_to_fib(%struct.TYPE_10__* %7, i32 %8)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %6, align 8
  %10 = load i32, i32* @KTR_NET, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CTR1(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

16:                                               ; preds = %2
  %17 = load i32, i32* @M_NETGRAPH, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.TYPE_11__* @malloc(i32 4, i32 %17, i32 %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %6, align 8
  %22 = icmp eq %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %81

25:                                               ; preds = %16
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 3
  %28 = load i32, i32* @MTX_DEF, align 4
  %29 = call i32 @mtx_init(i32* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* @MTX_DEF, align 4
  %33 = call i32 @mtx_init(i32* %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %45 to i64*
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = ptrtoint %struct.TYPE_11__* %47 to i64
  %49 = call i64 @atomic_cmpset_ptr(i64* %46, i64 0, i64 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %25
  %52 = load i32, i32* @KTR_NET, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.TYPE_11__* @priv_to_fib(%struct.TYPE_10__* %55, i32 %56)
  %58 = call i32 @CTR3(i32 %52, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %53, %struct.TYPE_11__* %54, %struct.TYPE_11__* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = call i32 @mtx_destroy(i32* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = call i32 @mtx_destroy(i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = load i32, i32* @M_NETGRAPH, align 4
  %67 = call i32 @free(%struct.TYPE_11__* %65, i32 %66)
  br label %80

68:                                               ; preds = %25
  %69 = load i32, i32* @KTR_NET, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call %struct.TYPE_11__* @priv_to_fib(%struct.TYPE_10__* %72, i32 %73)
  %75 = call i32 @CTR3(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %70, %struct.TYPE_11__* %71, %struct.TYPE_11__* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %68, %51
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %23, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_11__* @priv_to_fib(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i64 @atomic_cmpset_ptr(i64*, i64, i64) #1

declare dso_local i32 @CTR3(i32, i8*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
