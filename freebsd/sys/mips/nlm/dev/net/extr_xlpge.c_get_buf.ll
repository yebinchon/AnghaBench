; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_get_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_get_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@NAE_CACHELINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"m_new->m_data is not cacheline aligned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_buf() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @M_NOWAIT, align 4
  %5 = load i32, i32* @MT_DATA, align 4
  %6 = load i32, i32* @M_PKTHDR, align 4
  %7 = call %struct.mbuf* @m_getcl(i32 %4, i32 %5, i32 %6)
  store %struct.mbuf* %7, %struct.mbuf** %2, align 8
  %8 = icmp eq %struct.mbuf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %45

10:                                               ; preds = %0
  %11 = load i32, i32* @MCLBYTES, align 4
  %12 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 2
  store i32 %11, i32* %16, align 4
  %17 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @NAE_CACHELINE_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = and i64 %19, %22
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %3, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %32 = ptrtoint %struct.mbuf* %31 to i64
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 15731629, i32* %37, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %39 = load i32, i32* @NAE_CACHELINE_SIZE, align 4
  %40 = call i32 @m_adj(%struct.mbuf* %38, i32 %39)
  %41 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %1, align 8
  br label %45

45:                                               ; preds = %10, %9
  %46 = load i8*, i8** %1, align 8
  ret i8* %46
}

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
