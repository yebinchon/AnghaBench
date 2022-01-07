; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_get_mic.c_gss_get_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_get_mic.c_gss_get_mic.c"
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
define dso_local i64 @gss_get_mic(i64* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.mbuf*, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i64*, i64** %7, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* @GSS_S_NO_CONTEXT, align 8
  store i64 %19, i64* %6, align 8
  br label %78

20:                                               ; preds = %5
  %21 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @MT_DATA, align 4
  %24 = call i32 @MGET(%struct.mbuf* %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLEN, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i32 @MCLGET(%struct.mbuf* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %20
  %35 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @m_append(%struct.mbuf* %35, i32 %38, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i64*, i64** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %47 = call i64 @KGSS_GET_MIC(i32 %43, i64* %44, i32 %45, %struct.mbuf* %46, %struct.mbuf** %14)
  store i64 %47, i64* %12, align 8
  %48 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %49 = call i32 @m_freem(%struct.mbuf* %48)
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @GSS_S_COMPLETE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %34
  %54 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %55 = call i32 @m_length(%struct.mbuf* %54, i32* null)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @M_GSSAPI, align 4
  %62 = load i32, i32* @M_WAITOK, align 4
  %63 = call i32 @malloc(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @m_copydata(%struct.mbuf* %66, i32 0, i32 %69, i32 %72)
  %74 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %75 = call i32 @m_freem(%struct.mbuf* %74)
  br label %76

76:                                               ; preds = %53, %34
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %76, %17
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i32 @m_append(%struct.mbuf*, i32, i32) #1

declare dso_local i64 @KGSS_GET_MIC(i32, i64*, i32, %struct.mbuf*, %struct.mbuf**) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
