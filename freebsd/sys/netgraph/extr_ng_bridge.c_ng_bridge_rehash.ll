; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_rehash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.ng_bridge_bucket*, i32, %struct.TYPE_6__ }
%struct.ng_bridge_bucket = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ng_bridge_hent = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MAX_BUCKETS = common dso_local global i32 0, align 4
@MIN_BUCKETS = common dso_local global i32 0, align 4
@M_NETGRAPH_BRIDGE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ng_bridge: %s: table size %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ng_bridge_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_bridge_rehash(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.ng_bridge_bucket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ng_bridge_bucket*, align 8
  %9 = alloca %struct.ng_bridge_hent*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 1
  %22 = load i32, i32* @MAX_BUCKETS, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %52

29:                                               ; preds = %17, %1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 2
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 2
  %43 = load i32, i32* @MIN_BUCKETS, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 2
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %38, %29
  br label %141

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @M_NETGRAPH_BRIDGE, align 4
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = load i32, i32* @M_ZERO, align 4
  %62 = or i32 %60, %61
  %63 = call %struct.ng_bridge_bucket* @malloc(i32 %58, i32 %59, i32 %62)
  store %struct.ng_bridge_bucket* %63, %struct.ng_bridge_bucket** %3, align 8
  %64 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %3, align 8
  %65 = icmp eq %struct.ng_bridge_bucket* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %52
  br label %141

67:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %106, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ng_bridge_bucket, %struct.ng_bridge_bucket* %77, i64 %79
  store %struct.ng_bridge_bucket* %80, %struct.ng_bridge_bucket** %8, align 8
  br label %81

81:                                               ; preds = %86, %74
  %82 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %8, align 8
  %83 = call i32 @SLIST_EMPTY(%struct.ng_bridge_bucket* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %8, align 8
  %88 = call %struct.ng_bridge_hent* @SLIST_FIRST(%struct.ng_bridge_bucket* %87)
  store %struct.ng_bridge_hent* %88, %struct.ng_bridge_hent** %9, align 8
  %89 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %8, align 8
  %90 = load i32, i32* @next, align 4
  %91 = call i32 @SLIST_REMOVE_HEAD(%struct.ng_bridge_bucket* %89, i32 %90)
  %92 = load %struct.ng_bridge_hent*, %struct.ng_bridge_hent** %9, align 8
  %93 = getelementptr inbounds %struct.ng_bridge_hent, %struct.ng_bridge_hent* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @HASH(i32 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  %98 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ng_bridge_bucket, %struct.ng_bridge_bucket* %98, i64 %100
  %102 = load %struct.ng_bridge_hent*, %struct.ng_bridge_hent** %9, align 8
  %103 = load i32, i32* @next, align 4
  %104 = call i32 @SLIST_INSERT_HEAD(%struct.ng_bridge_bucket* %101, %struct.ng_bridge_hent* %102, i32 %103)
  br label %81

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %68

109:                                              ; preds = %68
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 3
  br i1 %114, label %115, label %126

115:                                              ; preds = %109
  %116 = load i32, i32* @LOG_INFO, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ng_bridge_nodename(i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @log(i32 %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %115, %109
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %128, align 8
  %130 = load i32, i32* @M_NETGRAPH_BRIDGE, align 4
  %131 = call i32 @free(%struct.ng_bridge_bucket* %129, i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.ng_bridge_bucket*, %struct.ng_bridge_bucket** %3, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  store %struct.ng_bridge_bucket* %138, %struct.ng_bridge_bucket** %140, align 8
  br label %141

141:                                              ; preds = %126, %66, %50
  ret void
}

declare dso_local %struct.ng_bridge_bucket* @malloc(i32, i32, i32) #1

declare dso_local i32 @SLIST_EMPTY(%struct.ng_bridge_bucket*) #1

declare dso_local %struct.ng_bridge_hent* @SLIST_FIRST(%struct.ng_bridge_bucket*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(%struct.ng_bridge_bucket*, i32) #1

declare dso_local i32 @HASH(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.ng_bridge_bucket*, %struct.ng_bridge_hent*, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ng_bridge_nodename(i32) #1

declare dso_local i32 @free(%struct.ng_bridge_bucket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
