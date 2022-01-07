; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_mbuf.c_xdrmbuf_getall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_mbuf.c_xdrmbuf_getall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.TYPE_3__ = type { i64, i32, i32*, i32*, i32* }

@xdrmbuf_ops = common dso_local global i32 0, align 4
@XDR_DECODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"xdrmbuf_append: invalid XDR stream\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @xdrmbuf_getall(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, @xdrmbuf_ops
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XDR_DECODE, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi i1 [ false, %1 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = bitcast i32* %21 to %struct.mbuf*
  store %struct.mbuf* %22, %struct.mbuf** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.mbuf*
  store %struct.mbuf* %26, %struct.mbuf** %4, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = icmp ne %struct.mbuf* %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %37, %30
  %32 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %36 = icmp ne %struct.mbuf* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load %struct.mbuf*, %struct.mbuf** %39, align 8
  store %struct.mbuf* %40, %struct.mbuf** %3, align 8
  br label %31

41:                                               ; preds = %31
  %42 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %51

46:                                               ; preds = %15
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %53 = icmp ne %struct.mbuf* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @m_adj(%struct.mbuf* %55, i32 %58)
  br label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = load i32, i32* @MT_DATA, align 4
  %63 = call %struct.mbuf* @m_get(i32 %61, i32 %62)
  store %struct.mbuf* %63, %struct.mbuf** %4, align 8
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %65
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
