; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.mbuf = type { i64, i64, %struct.mbuf* }
%struct.mbucket = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mbucket* }

@MemMap = common dso_local global %struct.TYPE_6__* null, align 8
@mbuf_Frees = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_free(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mbucket**, align 8
  %4 = alloca %struct.mbucket*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %7 = bitcast %struct.mbuf* %6 to %struct.mbucket*
  store %struct.mbucket* %7, %struct.mbucket** %4, align 8
  %8 = icmp ne %struct.mbucket* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MemMap, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %12 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MemMap, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %28, %20
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 2
  %33 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  store %struct.mbuf* %33, %struct.mbuf** %5, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.mbucket** @M_BUCKET(i64 %36)
  store %struct.mbucket** %37, %struct.mbucket*** %3, align 8
  %38 = load %struct.mbucket**, %struct.mbucket*** %3, align 8
  %39 = load %struct.mbucket*, %struct.mbucket** %38, align 8
  %40 = load %struct.mbucket*, %struct.mbucket** %4, align 8
  %41 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store %struct.mbucket* %39, %struct.mbucket** %43, align 8
  %44 = load %struct.mbucket*, %struct.mbucket** %4, align 8
  %45 = getelementptr inbounds %struct.mbucket, %struct.mbucket* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.mbucket*, %struct.mbucket** %4, align 8
  %49 = load %struct.mbucket**, %struct.mbucket*** %3, align 8
  store %struct.mbucket* %48, %struct.mbucket** %49, align 8
  %50 = load i32, i32* @mbuf_Frees, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @mbuf_Frees, align 4
  %52 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %52, %struct.mbuf** %2, align 8
  br label %53

53:                                               ; preds = %9, %1
  %54 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %54
}

declare dso_local %struct.mbucket** @M_BUCKET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
