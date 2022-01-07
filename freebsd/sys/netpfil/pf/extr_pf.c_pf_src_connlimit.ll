; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_src_connlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_src_connlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.pf_state = type { i32, %struct.TYPE_15__, %struct.TYPE_13__**, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.pf_overload_entry = type { i32, %struct.TYPE_14__*, i32, i32 }

@V_pf_status = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@LCNT_SRCCONN = common dso_local global i64 0, align 8
@LCNT_SRCCONNRATE = common dso_local global i64 0, align 8
@PFTM_PURGE = common dso_local global i32 0, align 4
@TCPS_CLOSED = common dso_local global i32 0, align 4
@M_PFTEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@PF_SK_WIRE = common dso_local global i64 0, align 8
@V_pf_overloadqueue = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@taskqueue_swi = common dso_local global i32 0, align 4
@V_pf_overloadtask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state**)* @pf_src_connlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_src_connlimit(%struct.pf_state** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pf_state**, align 8
  %4 = alloca %struct.pf_overload_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.pf_state** %0, %struct.pf_state*** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %7 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %8 = call i32 @PF_STATE_LOCK_ASSERT(%struct.pf_state* %7)
  %9 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %10 = load %struct.pf_state*, %struct.pf_state** %9, align 8
  %11 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %10, i32 0, i32 3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %17 = load %struct.pf_state*, %struct.pf_state** %16, align 8
  %18 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %21 = load %struct.pf_state*, %struct.pf_state** %20, align 8
  %22 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %21, i32 0, i32 3
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = call i32 @pf_add_threshold(i32* %24)
  %26 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %27 = load %struct.pf_state*, %struct.pf_state** %26, align 8
  %28 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %1
  %35 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %36 = load %struct.pf_state*, %struct.pf_state** %35, align 8
  %37 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %43 = load %struct.pf_state*, %struct.pf_state** %42, align 8
  %44 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %43, i32 0, i32 3
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %41, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %34
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @V_pf_status, i32 0, i32 0), align 8
  %51 = load i64, i64* @LCNT_SRCCONN, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @counter_u64_add(i32 %53, i32 1)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %34, %1
  %58 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %59 = load %struct.pf_state*, %struct.pf_state** %58, align 8
  %60 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %57
  %68 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %69 = load %struct.pf_state*, %struct.pf_state** %68, align 8
  %70 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %69, i32 0, i32 3
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = call i64 @pf_check_threshold(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @V_pf_status, i32 0, i32 0), align 8
  %77 = load i64, i64* @LCNT_SRCCONNRATE, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @counter_u64_add(i32 %79, i32 1)
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %75, %67, %57
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %157

87:                                               ; preds = %83
  %88 = load i32, i32* @PFTM_PURGE, align 4
  %89 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %90 = load %struct.pf_state*, %struct.pf_state** %89, align 8
  %91 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* @TCPS_CLOSED, align 4
  %93 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %94 = load %struct.pf_state*, %struct.pf_state** %93, align 8
  %95 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  %97 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %98 = load %struct.pf_state*, %struct.pf_state** %97, align 8
  %99 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store i32 %92, i32* %100, align 4
  %101 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %102 = load %struct.pf_state*, %struct.pf_state** %101, align 8
  %103 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %87
  store i32 1, i32* %2, align 4
  br label %157

110:                                              ; preds = %87
  %111 = load i32, i32* @M_PFTEMP, align 4
  %112 = load i32, i32* @M_NOWAIT, align 4
  %113 = call %struct.pf_overload_entry* @malloc(i32 24, i32 %111, i32 %112)
  store %struct.pf_overload_entry* %113, %struct.pf_overload_entry** %4, align 8
  %114 = load %struct.pf_overload_entry*, %struct.pf_overload_entry** %4, align 8
  %115 = icmp eq %struct.pf_overload_entry* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 1, i32* %2, align 4
  br label %157

117:                                              ; preds = %110
  %118 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %119 = load %struct.pf_state*, %struct.pf_state** %118, align 8
  %120 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %119, i32 0, i32 3
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.pf_overload_entry*, %struct.pf_overload_entry** %4, align 8
  %124 = getelementptr inbounds %struct.pf_overload_entry, %struct.pf_overload_entry* %123, i32 0, i32 3
  %125 = call i32 @bcopy(i32* %122, i32* %124, i32 4)
  %126 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %127 = load %struct.pf_state*, %struct.pf_state** %126, align 8
  %128 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %127, i32 0, i32 2
  %129 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %128, align 8
  %130 = load i64, i64* @PF_SK_WIRE, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %129, i64 %130
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.pf_overload_entry*, %struct.pf_overload_entry** %4, align 8
  %136 = getelementptr inbounds %struct.pf_overload_entry, %struct.pf_overload_entry* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %138 = load %struct.pf_state*, %struct.pf_state** %137, align 8
  %139 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load %struct.pf_overload_entry*, %struct.pf_overload_entry** %4, align 8
  %143 = getelementptr inbounds %struct.pf_overload_entry, %struct.pf_overload_entry* %142, i32 0, i32 1
  store %struct.TYPE_14__* %141, %struct.TYPE_14__** %143, align 8
  %144 = load %struct.pf_state**, %struct.pf_state*** %3, align 8
  %145 = load %struct.pf_state*, %struct.pf_state** %144, align 8
  %146 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.pf_overload_entry*, %struct.pf_overload_entry** %4, align 8
  %149 = getelementptr inbounds %struct.pf_overload_entry, %struct.pf_overload_entry* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = call i32 (...) @PF_OVERLOADQ_LOCK()
  %151 = load %struct.pf_overload_entry*, %struct.pf_overload_entry** %4, align 8
  %152 = load i32, i32* @next, align 4
  %153 = call i32 @SLIST_INSERT_HEAD(i32* @V_pf_overloadqueue, %struct.pf_overload_entry* %151, i32 %152)
  %154 = call i32 (...) @PF_OVERLOADQ_UNLOCK()
  %155 = load i32, i32* @taskqueue_swi, align 4
  %156 = call i32 @taskqueue_enqueue(i32 %155, i32* @V_pf_overloadtask)
  store i32 1, i32* %2, align 4
  br label %157

157:                                              ; preds = %117, %116, %109, %86
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @PF_STATE_LOCK_ASSERT(%struct.pf_state*) #1

declare dso_local i32 @pf_add_threshold(i32*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i64 @pf_check_threshold(i32*) #1

declare dso_local %struct.pf_overload_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @PF_OVERLOADQ_LOCK(...) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.pf_overload_entry*, i32) #1

declare dso_local i32 @PF_OVERLOADQ_UNLOCK(...) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
