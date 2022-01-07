; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_pfil.c_pfil_realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_pfil.c_pfil_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mbuf**, i32 }
%struct.mbuf = type { i32 }
%struct.ifnet = type { i32 }

@PFIL_MEMPTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfil_realloc(%struct.TYPE_5__* %0, i32 %1, %struct.ifnet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifnet* %2, %struct.ifnet** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PFIL_MEMPTR, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @MPASS(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @PFIL_LENGTH(i32 %17)
  %19 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %20 = call %struct.mbuf* @m_devget(i32 %16, i32 %18, i32 0, %struct.ifnet* %19, i32* null)
  store %struct.mbuf* %20, %struct.mbuf** %8, align 8
  %21 = icmp eq %struct.mbuf* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %4, align 4
  br label %44

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = bitcast %struct.TYPE_5__* %26 to { %struct.mbuf**, i32 }*
  %28 = getelementptr inbounds { %struct.mbuf**, i32 }, { %struct.mbuf**, i32 }* %27, i32 0, i32 0
  %29 = load %struct.mbuf**, %struct.mbuf*** %28, align 8
  %30 = getelementptr inbounds { %struct.mbuf**, i32 }, { %struct.mbuf**, i32 }* %27, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call { %struct.mbuf**, i32 } @pfil_packet_align(%struct.mbuf** %29, i32 %31)
  %33 = bitcast %struct.TYPE_5__* %9 to { %struct.mbuf**, i32 }*
  %34 = getelementptr inbounds { %struct.mbuf**, i32 }, { %struct.mbuf**, i32 }* %33, i32 0, i32 0
  %35 = extractvalue { %struct.mbuf**, i32 } %32, 0
  store %struct.mbuf** %35, %struct.mbuf*** %34, align 8
  %36 = getelementptr inbounds { %struct.mbuf**, i32 }, { %struct.mbuf**, i32 }* %33, i32 0, i32 1
  %37 = extractvalue { %struct.mbuf**, i32 } %32, 1
  store i32 %37, i32* %36, align 8
  %38 = bitcast %struct.TYPE_5__* %25 to i8*
  %39 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.mbuf**, %struct.mbuf*** %42, align 8
  store %struct.mbuf* %40, %struct.mbuf** %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %24, %22
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.mbuf* @m_devget(i32, i32, i32, %struct.ifnet*, i32*) #1

declare dso_local i32 @PFIL_LENGTH(i32) #1

declare dso_local { %struct.mbuf**, i32 } @pfil_packet_align(%struct.mbuf**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
