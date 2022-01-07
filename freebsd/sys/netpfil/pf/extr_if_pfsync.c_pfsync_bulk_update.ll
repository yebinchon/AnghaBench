; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_bulk_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_if_pfsync.c_pfsync_bulk_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_idhash = type { i32 }
%struct.pfsync_softc = type { i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pf_state = type { i64, i64, i64, i32, i32 }

@pf_hashmask = common dso_local global i32 0, align 4
@V_pf_idhash = common dso_local global %struct.pf_idhash* null, align 8
@PFSYNC_S_NONE = common dso_local global i64 0, align 8
@PFTM_MAX = common dso_local global i64 0, align 8
@entry = common dso_local global i32 0, align 4
@PFSYNC_BUS_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pfsync_bulk_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_bulk_update(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pfsync_softc*, align 8
  %4 = alloca %struct.pf_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pf_idhash*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pfsync_softc*
  store %struct.pfsync_softc* %9, %struct.pfsync_softc** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %11 = call i32 @PFSYNC_BLOCK_ASSERT(%struct.pfsync_softc* %10)
  %12 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %13 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @CURVNET_SET(i32 %16)
  %18 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %19 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %22 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.pf_state* @pf_find_state_byid(i32 %20, i32 %23)
  store %struct.pf_state* %24, %struct.pf_state** %4, align 8
  %25 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %26 = icmp ne %struct.pf_state* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %29 = call i32 @PF_IDHASH(%struct.pf_state* %28)
  store i32 %29, i32* %5, align 4
  br label %34

30:                                               ; preds = %1
  %31 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %32 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %114, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @pf_hashmask, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %117

39:                                               ; preds = %35
  %40 = load %struct.pf_idhash*, %struct.pf_idhash** @V_pf_idhash, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.pf_idhash, %struct.pf_idhash* %40, i64 %42
  store %struct.pf_idhash* %43, %struct.pf_idhash** %7, align 8
  %44 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %45 = icmp ne %struct.pf_state* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.pf_idhash*, %struct.pf_idhash** %7, align 8
  %48 = call i32 @PF_HASHROW_ASSERT(%struct.pf_idhash* %47)
  br label %55

49:                                               ; preds = %39
  %50 = load %struct.pf_idhash*, %struct.pf_idhash** %7, align 8
  %51 = call i32 @PF_HASHROW_LOCK(%struct.pf_idhash* %50)
  %52 = load %struct.pf_idhash*, %struct.pf_idhash** %7, align 8
  %53 = getelementptr inbounds %struct.pf_idhash, %struct.pf_idhash* %52, i32 0, i32 0
  %54 = call %struct.pf_state* @LIST_FIRST(i32* %53)
  store %struct.pf_state* %54, %struct.pf_state** %4, align 8
  br label %55

55:                                               ; preds = %49, %46
  br label %56

56:                                               ; preds = %107, %55
  %57 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %58 = icmp ne %struct.pf_state* %57, null
  br i1 %58, label %59, label %111

59:                                               ; preds = %56
  %60 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %61 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PFSYNC_S_NONE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %59
  %66 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %67 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PFTM_MAX, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %65
  %72 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %73 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %76 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sle i64 %74, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %71
  %80 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %81 = call i64 @pfsync_update_state_req(%struct.pf_state* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %86 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %88 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %91 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %93 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %96 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.pf_idhash*, %struct.pf_idhash** %7, align 8
  %98 = call i32 @PF_HASHROW_UNLOCK(%struct.pf_idhash* %97)
  %99 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %100 = getelementptr inbounds %struct.pfsync_softc, %struct.pfsync_softc* %99, i32 0, i32 2
  %101 = load %struct.pfsync_softc*, %struct.pfsync_softc** %3, align 8
  %102 = call i32 @callout_reset(i32* %100, i32 1, void (i8*)* @pfsync_bulk_update, %struct.pfsync_softc* %101)
  br label %120

103:                                              ; preds = %79
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %103, %71, %65, %59
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.pf_state*, %struct.pf_state** %4, align 8
  %109 = load i32, i32* @entry, align 4
  %110 = call %struct.pf_state* @LIST_NEXT(%struct.pf_state* %108, i32 %109)
  store %struct.pf_state* %110, %struct.pf_state** %4, align 8
  br label %56

111:                                              ; preds = %56
  %112 = load %struct.pf_idhash*, %struct.pf_idhash** %7, align 8
  %113 = call i32 @PF_HASHROW_UNLOCK(%struct.pf_idhash* %112)
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %35

117:                                              ; preds = %35
  %118 = load i32, i32* @PFSYNC_BUS_END, align 4
  %119 = call i32 @pfsync_bulk_status(i32 %118)
  br label %120

120:                                              ; preds = %117, %83
  %121 = call i32 (...) @CURVNET_RESTORE()
  ret void
}

declare dso_local i32 @PFSYNC_BLOCK_ASSERT(%struct.pfsync_softc*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local %struct.pf_state* @pf_find_state_byid(i32, i32) #1

declare dso_local i32 @PF_IDHASH(%struct.pf_state*) #1

declare dso_local i32 @PF_HASHROW_ASSERT(%struct.pf_idhash*) #1

declare dso_local i32 @PF_HASHROW_LOCK(%struct.pf_idhash*) #1

declare dso_local %struct.pf_state* @LIST_FIRST(i32*) #1

declare dso_local i64 @pfsync_update_state_req(%struct.pf_state*) #1

declare dso_local i32 @PF_HASHROW_UNLOCK(%struct.pf_idhash*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.pfsync_softc*) #1

declare dso_local %struct.pf_state* @LIST_NEXT(%struct.pf_state*, i32) #1

declare dso_local i32 @pfsync_bulk_status(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
