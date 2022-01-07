; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_defrag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@MHLEN = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@m_defragbytes = common dso_local global i32 0, align 4
@m_defragfailure = common dso_local global i32 0, align 4
@m_defragpackets = common dso_local global i32 0, align 4
@m_defragrandomfailures = common dso_local global i64 0, align 8
@m_defraguseless = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_defrag(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  store %struct.mbuf* null, %struct.mbuf** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @MBUF_CHECKSLEEP(i32 %10)
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @M_PKTHDR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %19, %struct.mbuf** %3, align 8
  br label %124

20:                                               ; preds = %2
  %21 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %22 = call i32 @m_fixhdr(%struct.mbuf* %21)
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MHLEN, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MT_DATA, align 4
  %32 = load i32, i32* @M_PKTHDR, align 4
  %33 = call %struct.mbuf* @m_getcl(i32 %30, i32 %31, i32 %32)
  store %struct.mbuf* %33, %struct.mbuf** %7, align 8
  br label %38

34:                                               ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MT_DATA, align 4
  %37 = call %struct.mbuf* @m_gethdr(i32 %35, i32 %36)
  store %struct.mbuf* %37, %struct.mbuf** %7, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %40 = icmp eq %struct.mbuf* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %117

42:                                               ; preds = %38
  %43 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @m_dup_pkthdr(%struct.mbuf* %43, %struct.mbuf* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %117

49:                                               ; preds = %42
  %50 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %50, %struct.mbuf** %6, align 8
  br label %51

51:                                               ; preds = %111, %49
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %112

58:                                               ; preds = %51
  %59 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MCLBYTES, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @MCLBYTES, align 4
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %72 = icmp eq %struct.mbuf* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MLEN, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @MT_DATA, align 4
  %80 = call %struct.mbuf* @m_getcl(i32 %78, i32 %79, i32 0)
  store %struct.mbuf* %80, %struct.mbuf** %6, align 8
  br label %85

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @MT_DATA, align 4
  %84 = call %struct.mbuf* @m_get(i32 %82, i32 %83)
  store %struct.mbuf* %84, %struct.mbuf** %6, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %87 = icmp eq %struct.mbuf* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %117

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %70
  %91 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %95 = load i32, i32* @caddr_t, align 4
  %96 = call i32 @mtod(%struct.mbuf* %94, i32 %95)
  %97 = call i32 @m_copydata(%struct.mbuf* %91, i32 %92, i32 %93, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %103 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %105 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %106 = icmp ne %struct.mbuf* %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %90
  %108 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %110 = call i32 @m_cat(%struct.mbuf* %108, %struct.mbuf* %109)
  br label %111

111:                                              ; preds = %107, %90
  store %struct.mbuf* null, %struct.mbuf** %6, align 8
  br label %51

112:                                              ; preds = %51
  %113 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %114 = call i32 @m_freem(%struct.mbuf* %113)
  %115 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  store %struct.mbuf* %115, %struct.mbuf** %4, align 8
  %116 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %116, %struct.mbuf** %3, align 8
  br label %124

117:                                              ; preds = %88, %48, %41
  %118 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %119 = icmp ne %struct.mbuf* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %122 = call i32 @m_freem(%struct.mbuf* %121)
  br label %123

123:                                              ; preds = %120, %117
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %124

124:                                              ; preds = %123, %112, %18
  %125 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %125
}

declare dso_local i32 @MBUF_CHECKSLEEP(i32) #1

declare dso_local i32 @m_fixhdr(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local %struct.mbuf* @m_gethdr(i32, i32) #1

declare dso_local i64 @m_dup_pkthdr(%struct.mbuf*, %struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
