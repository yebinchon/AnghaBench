; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_wrap.c_gss_wrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_wrap.c_gss_wrap.c"
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
define dso_local i64 @gss_wrap(i64* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_4__* %4, i32* %5, %struct.TYPE_4__* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.mbuf*, align 8
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %15, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %7
  %21 = load i64*, i64** %9, align 8
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %22, i64* %8, align 8
  br label %80

23:                                               ; preds = %7
  %24 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @MT_DATA, align 4
  %27 = call i32 @MGET(%struct.mbuf* %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MLEN, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = call i32 @MCLGET(%struct.mbuf* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @m_append(%struct.mbuf* %38, i32 %41, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = load i64*, i64** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i64 @KGSS_WRAP(i32 %46, i64* %47, i32 %48, i32 %49, %struct.mbuf** %17, i32* %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* @GSS_S_COMPLETE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %37
  %56 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %57 = call i32 @m_length(%struct.mbuf* %56, i32* null)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @M_GSSAPI, align 4
  %64 = load i32, i32* @M_WAITOK, align 4
  %65 = call i32 @malloc(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @m_copydata(%struct.mbuf* %68, i32 0, i32 %71, i32 %74)
  %76 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %77 = call i32 @m_freem(%struct.mbuf* %76)
  br label %78

78:                                               ; preds = %55, %37
  %79 = load i64, i64* %16, align 8
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %78, %20
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_append(%struct.mbuf*, i32, i32) #1

declare dso_local i64 @KGSS_WRAP(i32, i64*, i32, i32, %struct.mbuf**, i32*) #1

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
