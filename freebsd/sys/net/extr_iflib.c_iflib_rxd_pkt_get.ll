; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_rxd_pkt_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_rxd_pkt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.if_rxsd = type { i32* }

@IFLIB_RX_COPY_THRESH = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@PFIL_PASS = common dso_local global i32 0, align 4
@PFIL_REALLOCED = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i32, %struct.TYPE_8__*)* @iflib_rxd_pkt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @iflib_rxd_pkt_get(i32 %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.if_rxsd, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %79

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 9
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @IFLIB_RX_COPY_THRESH, align 4
  %21 = load i32, i32* @MHLEN, align 4
  %22 = call i64 @MIN(i32 %20, i32 %21)
  %23 = icmp sle i64 %19, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 9
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call %struct.mbuf* @rxd_frag_to_sd(i32 %25, %struct.TYPE_9__* %29, i32 0, %struct.if_rxsd* %6, i32* %8, %struct.TYPE_8__* %30)
  store %struct.mbuf* %31, %struct.mbuf** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PFIL_PASS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PFIL_REALLOCED, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %40, %struct.mbuf** %3, align 8
  br label %143

41:                                               ; preds = %35, %24
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PFIL_PASS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %41
  %46 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %47 = load i32, i32* @M_NOWAIT, align 4
  %48 = load i32, i32* @MT_DATA, align 4
  %49 = load i32, i32* @M_PKTHDR, align 4
  %50 = call i32 @m_init(%struct.mbuf* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %52 = call i32 @IP_ALIGNED(%struct.mbuf* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %45
  %55 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %54, %45
  %60 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.if_rxsd, %struct.if_rxsd* %6, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i32 %62, i32 %65, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 9
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %77 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %59, %41
  br label %93

79:                                               ; preds = %13, %2
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = call %struct.mbuf* @assemble_segments(i32 %80, %struct.TYPE_8__* %81, %struct.if_rxsd* %6, i32* %8)
  store %struct.mbuf* %82, %struct.mbuf** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @PFIL_PASS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @PFIL_REALLOCED, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %91, %struct.mbuf** %3, align 8
  br label %143

92:                                               ; preds = %86, %79
  br label %93

93:                                               ; preds = %92, %78
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %98 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %104 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 4
  store i32 %102, i32* %105, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %110 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %117 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  store i32 %115, i32* %118, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %123 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @M_HASHTYPE_SET(%struct.mbuf* %125, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %134 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %140 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %142, %struct.mbuf** %3, align 8
  br label %143

143:                                              ; preds = %93, %90, %39
  %144 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %144
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local %struct.mbuf* @rxd_frag_to_sd(i32, %struct.TYPE_9__*, i32, %struct.if_rxsd*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @m_init(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @IP_ALIGNED(%struct.mbuf*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.mbuf* @assemble_segments(i32, %struct.TYPE_8__*, %struct.if_rxsd*, i32*) #1

declare dso_local i32 @M_HASHTYPE_SET(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
