; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_unlink_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf.c_pf_unlink_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_idhash = type { i32 }
%struct.pf_state = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__**, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@V_pf_idhash = common dso_local global %struct.pf_idhash* null, align 8
@PF_ENTER_LOCKED = common dso_local global i32 0, align 4
@PFTM_UNLINKED = common dso_local global i64 0, align 8
@PF_TCPS_PROXY_DST = common dso_local global i64 0, align 8
@PF_SK_WIRE = common dso_local global i64 0, align 8
@TH_RST = common dso_local global i32 0, align 4
@TH_ACK = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_unlink_state(%struct.pf_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_idhash*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pf_idhash*, %struct.pf_idhash** @V_pf_idhash, align 8
  %8 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %9 = call i64 @PF_IDHASH(%struct.pf_state* %8)
  %10 = getelementptr inbounds %struct.pf_idhash, %struct.pf_idhash* %7, i64 %9
  store %struct.pf_idhash* %10, %struct.pf_idhash** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PF_ENTER_LOCKED, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.pf_idhash*, %struct.pf_idhash** %6, align 8
  %17 = call i32 @PF_HASHROW_LOCK(%struct.pf_idhash* %16)
  br label %21

18:                                               ; preds = %2
  %19 = load %struct.pf_idhash*, %struct.pf_idhash** %6, align 8
  %20 = call i32 @PF_HASHROW_ASSERT(%struct.pf_idhash* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %23 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PFTM_UNLINKED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.pf_idhash*, %struct.pf_idhash** %6, align 8
  %29 = call i32 @PF_HASHROW_UNLOCK(%struct.pf_idhash* %28)
  store i32 0, i32* %3, align 4
  br label %126

30:                                               ; preds = %21
  %31 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %32 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PF_TCPS_PROXY_DST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %104

37:                                               ; preds = %30
  %38 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %39 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %43 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %42, i32 0, i32 4
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %43, align 8
  %45 = load i64, i64* @PF_SK_WIRE, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %44, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %51 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %50, i32 0, i32 4
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = load i64, i64* @PF_SK_WIRE, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %60 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %59, i32 0, i32 4
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %60, align 8
  %62 = load i64, i64* @PF_SK_WIRE, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %61, i64 %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %69 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %69, align 8
  %71 = load i64, i64* @PF_SK_WIRE, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %70, i64 %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %79 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %78, i32 0, i32 4
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %79, align 8
  %81 = load i64, i64* @PF_SK_WIRE, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %80, i64 %81
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %89 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %93 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  %97 = load i32, i32* @TH_RST, align 4
  %98 = load i32, i32* @TH_ACK, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %101 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pf_send_tcp(i32* null, i32 %41, i32 %49, i32* %58, i32* %67, i32 %77, i32 %87, i32 %91, i64 %96, i32 %99, i32 0, i32 0, i32 0, i32 1, i32 %102, i32* null)
  br label %104

104:                                              ; preds = %37, %30
  %105 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %106 = load i32, i32* @entry, align 4
  %107 = call i32 @LIST_REMOVE(%struct.pf_state* %105, i32 %106)
  %108 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %109 = call i32 @pf_src_tree_remove_state(%struct.pf_state* %108)
  %110 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %111 = call i32 @V_pfsync_delete_state_ptr(%struct.pf_state* %110)
  %112 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %113 = call i32 @STATE_DEC_COUNTERS(%struct.pf_state* %112)
  %114 = load i64, i64* @PFTM_UNLINKED, align 8
  %115 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %116 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.pf_idhash*, %struct.pf_idhash** %6, align 8
  %118 = call i32 @PF_HASHROW_UNLOCK(%struct.pf_idhash* %117)
  %119 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %120 = call i32 @pf_detach_state(%struct.pf_state* %119)
  %121 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %122 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %121, i32 0, i32 1
  %123 = call i32 @refcount_release(i32* %122)
  %124 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %125 = call i32 @pf_release_state(%struct.pf_state* %124)
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %104, %27
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @PF_IDHASH(%struct.pf_state*) #1

declare dso_local i32 @PF_HASHROW_LOCK(%struct.pf_idhash*) #1

declare dso_local i32 @PF_HASHROW_ASSERT(%struct.pf_idhash*) #1

declare dso_local i32 @PF_HASHROW_UNLOCK(%struct.pf_idhash*) #1

declare dso_local i32 @pf_send_tcp(i32*, i32, i32, i32*, i32*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.pf_state*, i32) #1

declare dso_local i32 @pf_src_tree_remove_state(%struct.pf_state*) #1

declare dso_local i32 @V_pfsync_delete_state_ptr(%struct.pf_state*) #1

declare dso_local i32 @STATE_DEC_COUNTERS(%struct.pf_state*) #1

declare dso_local i32 @pf_detach_state(%struct.pf_state*) #1

declare dso_local i32 @refcount_release(i32*) #1

declare dso_local i32 @pf_release_state(%struct.pf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
