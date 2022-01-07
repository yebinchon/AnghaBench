; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_pack_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/ccatm/extr_ng_ccatm.c_pack_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.TYPE_2__, i32, %struct.mbuf* }
%struct.TYPE_2__ = type { i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"hlen > MHLEN\00", align 1
@MLEN = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i8*, i64, i8*, i64)* @pack_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @pack_buf(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %13, align 8
  %16 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = load i32, i32* @MT_DATA, align 4
  %19 = call i32 @MGETHDR(%struct.mbuf* %16, i32 %17, i32 %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %21 = icmp eq %struct.mbuf* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %100

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @MHLEN, align 8
  %26 = icmp ule i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @KASSERT(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @bcopy(i8* %29, i32 %32, i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %37 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %42, %struct.mbuf** %12, align 8
  br label %43

43:                                               ; preds = %69, %23
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %14, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %43
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @MLEN, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = load i32, i32* @MT_DATA, align 4
  %53 = call %struct.mbuf* @m_getcl(i32 %51, i32 %52, i32 0)
  store %struct.mbuf* %53, %struct.mbuf** %10, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @MCLBYTES, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i64, i64* @MCLBYTES, align 8
  store i64 %58, i64* %14, align 8
  br label %59

59:                                               ; preds = %57, %50
  br label %65

60:                                               ; preds = %46
  %61 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %62 = load i32, i32* @M_NOWAIT, align 4
  %63 = load i32, i32* @MT_DATA, align 4
  %64 = call i32 @MGET(%struct.mbuf* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %59
  %66 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %67 = icmp eq %struct.mbuf* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %97

69:                                               ; preds = %65
  %70 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %71 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 3
  store %struct.mbuf* %70, %struct.mbuf** %72, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %73, %struct.mbuf** %12, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @bcopy(i8* %74, i32 %77, i64 %78)
  %80 = load i64, i64* %14, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr i8, i8* %81, i64 %80
  store i8* %82, i8** %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %88 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %91 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %89
  store i64 %94, i64* %92, align 8
  br label %43

95:                                               ; preds = %43
  %96 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %96, %struct.mbuf** %5, align 8
  br label %100

97:                                               ; preds = %68
  %98 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %99 = call i32 @m_freem(%struct.mbuf* %98)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %100

100:                                              ; preds = %97, %95, %22
  %101 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %101
}

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bcopy(i8*, i32, i64) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
