; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@M_ASYNC = common dso_local global i64 0, align 8
@TS_ISOPEN = common dso_local global i32 0, align 4
@BF_SZ = common dso_local global i32 0, align 4
@CX_OVERRUN = common dso_local global i32 0, align 4
@CX_READ = common dso_local global i32 0, align 4
@MY_SOFT_INTR = common dso_local global i32 0, align 4
@cx_fast_ih = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no memory for packet\0A\00", align 1
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*, i32)* @cx_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx_receive(%struct.TYPE_11__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %137

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @M_ASYNC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %88

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %88

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TS_ISOPEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 5
  store i32* %41, i32** %10, align 8
  %42 = load i32, i32* @BF_SZ, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @AQ_GSZ(i32* %44)
  %46 = sub nsw i32 %43, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %137

53:                                               ; preds = %49, %39
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = load i32, i32* @CX_OVERRUN, align 4
  %64 = call i32 @cx_error(%struct.TYPE_11__* %62, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %57, %53
  br label %68

68:                                               ; preds = %72, %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %6, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32*, i32** %10, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i32 @AQ_PUSH(i32* %73, i8 zeroext %75)
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  br label %68

79:                                               ; preds = %68
  %80 = load i32, i32* @CX_READ, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  store i32 1, i32* @MY_SOFT_INTR, align 4
  %85 = load i32, i32* @cx_fast_ih, align 4
  %86 = call i32 @swi_sched(i32 %85, i32 0)
  br label %87

87:                                               ; preds = %79, %30
  br label %137

88:                                               ; preds = %25, %19
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %137

94:                                               ; preds = %88
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call %struct.mbuf* @makembuf(i8* %95, i32 %96)
  store %struct.mbuf* %97, %struct.mbuf** %8, align 8
  %98 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %99 = icmp ne %struct.mbuf* %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = call i32 @CX_DEBUG(%struct.TYPE_10__* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %107 = call i32 @if_inc_counter(i64 %105, i32 %106, i32 1)
  br label %137

108:                                              ; preds = %94
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %115 = call i32 @m_print(%struct.mbuf* %114, i32 0)
  br label %116

116:                                              ; preds = %113, %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %121 = call i32 @if_inc_counter(i64 %119, i32 %120, i32 1)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %126 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %132 = call i32 @BPF_MTAP(i64 %130, %struct.mbuf* %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %136 = call i32 @IF_ENQUEUE(i32* %134, %struct.mbuf* %135)
  br label %137

137:                                              ; preds = %116, %100, %93, %87, %52, %18
  ret void
}

declare dso_local i32 @AQ_GSZ(i32*) #1

declare dso_local i32 @cx_error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @AQ_PUSH(i32*, i8 zeroext) #1

declare dso_local i32 @swi_sched(i32, i32) #1

declare dso_local %struct.mbuf* @makembuf(i8*, i32) #1

declare dso_local i32 @CX_DEBUG(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @if_inc_counter(i64, i32, i32) #1

declare dso_local i32 @m_print(%struct.mbuf*, i32) #1

declare dso_local i32 @BPF_MTAP(i64, %struct.mbuf*) #1

declare dso_local i32 @IF_ENQUEUE(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
