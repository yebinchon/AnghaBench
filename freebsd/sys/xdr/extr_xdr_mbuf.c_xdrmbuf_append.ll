; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_mbuf.c_xdrmbuf_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xdr/extr_xdr_mbuf.c_xdrmbuf_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.mbuf*, i32* }
%struct.mbuf = type { i32, %struct.mbuf* }

@xdrmbuf_ops = common dso_local global i32 0, align 4
@XDR_ENCODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"xdrmbuf_append: invalid XDR stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdrmbuf_append(%struct.TYPE_3__* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, @xdrmbuf_ops
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XDR_ENCODE, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %21 = call i64 @m_length(%struct.mbuf* %20, i32* null)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  br label %43

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  store %struct.mbuf* %29, %struct.mbuf** %5, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  store %struct.mbuf* %30, %struct.mbuf** %32, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = call %struct.mbuf* @m_last(%struct.mbuf* %33)
  store %struct.mbuf* %34, %struct.mbuf** %5, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store %struct.mbuf* %35, %struct.mbuf** %37, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %26, %23
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_last(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
