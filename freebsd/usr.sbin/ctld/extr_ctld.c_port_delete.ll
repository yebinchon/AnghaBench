; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_port_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_port_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.port*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@p_pgs = common dso_local global i32 0, align 4
@p_pps = common dso_local global i32 0, align 4
@p_ts = common dso_local global i32 0, align 4
@p_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @port_delete(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %3 = load %struct.port*, %struct.port** %2, align 8
  %4 = getelementptr inbounds %struct.port, %struct.port* %3, i32 0, i32 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.port*, %struct.port** %2, align 8
  %13 = load i32, i32* @p_pgs, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.port* %12, i32 %13)
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.port*, %struct.port** %2, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.port*, %struct.port** %2, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.port*, %struct.port** %2, align 8
  %26 = load i32, i32* @p_pps, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %24, %struct.port* %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.port*, %struct.port** %2, align 8
  %30 = getelementptr inbounds %struct.port, %struct.port* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.port*, %struct.port** %2, align 8
  %35 = getelementptr inbounds %struct.port, %struct.port* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.port*, %struct.port** %2, align 8
  %39 = load i32, i32* @p_ts, align 4
  %40 = call i32 @TAILQ_REMOVE(i32* %37, %struct.port* %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.port*, %struct.port** %2, align 8
  %43 = getelementptr inbounds %struct.port, %struct.port* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.port*, %struct.port** %2, align 8
  %47 = load i32, i32* @p_next, align 4
  %48 = call i32 @TAILQ_REMOVE(i32* %45, %struct.port* %46, i32 %47)
  %49 = load %struct.port*, %struct.port** %2, align 8
  %50 = getelementptr inbounds %struct.port, %struct.port* %49, i32 0, i32 0
  %51 = load %struct.port*, %struct.port** %50, align 8
  %52 = call i32 @free(%struct.port* %51)
  %53 = load %struct.port*, %struct.port** %2, align 8
  %54 = call i32 @free(%struct.port* %53)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.port*, i32) #1

declare dso_local i32 @free(%struct.port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
