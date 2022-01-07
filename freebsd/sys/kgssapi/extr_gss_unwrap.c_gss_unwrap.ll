; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_unwrap.c_gss_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_unwrap.c_gss_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@GSS_S_NO_CONTEXT = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@M_GSSAPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gss_unwrap(i64* %0, i32 %1, %struct.TYPE_4__* %2, %struct.TYPE_4__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.mbuf*, align 8
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i64*, i64** %8, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %20, i64* %7, align 8
  br label %77

21:                                               ; preds = %6
  %22 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @MT_DATA, align 4
  %25 = call i32 @MGET(%struct.mbuf* %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MLEN, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i32 @MCLGET(%struct.mbuf* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %21
  %36 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @m_append(%struct.mbuf* %36, i32 %39, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i64 @KGSS_UNWRAP(i32 %44, i64* %45, %struct.mbuf** %15, i32* %46, i32* %47)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @GSS_S_COMPLETE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %35
  %53 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %54 = call i32 @m_length(%struct.mbuf* %53, i32* null)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @M_GSSAPI, align 4
  %61 = load i32, i32* @M_WAITOK, align 4
  %62 = call i32 @malloc(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @m_copydata(%struct.mbuf* %65, i32 0, i32 %68, i32 %71)
  %73 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %74 = call i32 @m_freem(%struct.mbuf* %73)
  br label %75

75:                                               ; preds = %52, %35
  %76 = load i64, i64* %14, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %75, %18
  %78 = load i64, i64* %7, align 8
  ret i64 %78
}

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_append(%struct.mbuf*, i32, i32) #1

declare dso_local i64 @KGSS_UNWRAP(i32, i64*, %struct.mbuf**, i32*, i32*) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
