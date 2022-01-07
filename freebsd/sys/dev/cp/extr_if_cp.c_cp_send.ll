; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32**, i64, i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"cp_send, tn=%d te=%d\0A\00", align 1
@T_SERIAL = common dso_local global i64 0, align 8
@BUFSZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: too long packet: %d bytes: \00", align 1
@caddr_t = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @cp_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_send(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @CP_DEBUG2(%struct.TYPE_9__* %6, i8* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %130

24:                                               ; preds = %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @T_SERIAL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i64 @cp_get_dsr(%struct.TYPE_11__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %130

46:                                               ; preds = %39, %31, %24
  br label %47

47:                                               ; preds = %117, %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = call i64 @cp_transmit_space(%struct.TYPE_11__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %122

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call %struct.mbuf* @sppp_dequeue(%struct.TYPE_10__* %56)
  store %struct.mbuf* %57, %struct.mbuf** %3, align 8
  %58 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %59 = icmp ne %struct.mbuf* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %130

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %66 = call i32 @BPF_MTAP(%struct.TYPE_10__* %64, %struct.mbuf* %65)
  %67 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %68 = call i32 @m_length(%struct.mbuf* %67, i32* null)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @BUFSZ, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %76)
  br label %117

78:                                               ; preds = %61
  %79 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %88 = load i32, i32* @caddr_t, align 4
  %89 = call i64 @mtod(%struct.mbuf* %87, i32 %88)
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @cp_send_packet(%struct.TYPE_11__* %86, i32* %90, i32 %91, i32 0)
  br label %116

93:                                               ; preds = %78
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i32**, i32*** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32*, i32** %98, i64 %103
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %5, align 8
  %106 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @m_copydata(%struct.mbuf* %106, i32 0, i32 %107, i32* %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @cp_send_packet(%struct.TYPE_11__* %112, i32* %113, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %93, %83
  br label %117

117:                                              ; preds = %116, %72
  %118 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %119 = call i32 @m_freem(%struct.mbuf* %118)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  store i32 10, i32* %121, align 8
  br label %47

122:                                              ; preds = %47
  %123 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %123
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %122, %60, %45, %23
  ret void
}

declare dso_local i32 @CP_DEBUG2(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @cp_get_dsr(%struct.TYPE_11__*) #1

declare dso_local i64 @cp_transmit_space(%struct.TYPE_11__*) #1

declare dso_local %struct.mbuf* @sppp_dequeue(%struct.TYPE_10__*) #1

declare dso_local i32 @BPF_MTAP(%struct.TYPE_10__*, %struct.mbuf*) #1

declare dso_local i32 @m_length(%struct.mbuf*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @cp_send_packet(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
