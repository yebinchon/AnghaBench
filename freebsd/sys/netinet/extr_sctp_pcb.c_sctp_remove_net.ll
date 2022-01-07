; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_remove_net.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_remove_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.sctp_association, i32 }
%struct.sctp_association = type { %struct.sctp_nets*, %struct.sctp_nets*, i32, %struct.sctp_nets*, %struct.sctp_nets*, %struct.sctp_nets*, i32 }
%struct.sctp_nets = type { i32, i32, i32 }

@sctp_next = common dso_local global i32 0, align 4
@SCTP_MOBILITY_BASE = common dso_local global i32 0, align 4
@SCTP_MOBILITY_FASTHANDOFF = common dso_local global i32 0, align 4
@SCTP_DEBUG_ASCONF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"remove_net: primary dst is deleting\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"remove_net: deleted primary may be already stored\0A\00", align 1
@SCTP_MOBILITY_PRIM_DELETED = common dso_local global i32 0, align 4
@SCTP_TIMER_TYPE_PRIM_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_remove_net(%struct.sctp_tcb* %0, %struct.sctp_nets* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_nets*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_nets*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_nets* %1, %struct.sctp_nets** %4, align 8
  %7 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %7, i32 0, i32 0
  store %struct.sctp_association* %8, %struct.sctp_association** %5, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %10 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %13, i32 0, i32 2
  %15 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %16 = load i32, i32* @sctp_next, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* %14, %struct.sctp_nets* %15, i32 %16)
  %18 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 4
  %21 = load %struct.sctp_nets*, %struct.sctp_nets** %20, align 8
  %22 = icmp eq %struct.sctp_nets* %18, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %2
  %24 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 2
  %26 = call i8* @TAILQ_FIRST(i32* %25)
  %27 = bitcast i8* %26 to %struct.sctp_nets*
  store %struct.sctp_nets* %27, %struct.sctp_nets** %6, align 8
  %28 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %29 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SCTP_MOBILITY_BASE, align 4
  %32 = call i64 @sctp_is_mobility_feature_on(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %36 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SCTP_MOBILITY_FASTHANDOFF, align 4
  %39 = call i64 @sctp_is_mobility_feature_on(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %34, %23
  %42 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %43 = call i32 @SCTPDBG(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 5
  %46 = load %struct.sctp_nets*, %struct.sctp_nets** %45, align 8
  %47 = icmp ne %struct.sctp_nets* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @SCTP_DEBUG_ASCONF1, align 4
  %50 = call i32 @SCTPDBG(i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %76

51:                                               ; preds = %41
  %52 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %53 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %54 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %53, i32 0, i32 5
  store %struct.sctp_nets* %52, %struct.sctp_nets** %54, align 8
  %55 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %56 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %55, i32 0, i32 2
  %57 = call i32 @atomic_add_int(i32* %56, i32 1)
  %58 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %59 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %58, i32 0, i32 1
  %60 = call i32 @memset(i32* %59, i32 0, i32 4)
  %61 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %62 = getelementptr inbounds %struct.sctp_nets, %struct.sctp_nets* %61, i32 0, i32 0
  %63 = call i32 @memset(i32* %62, i32 0, i32 4)
  %64 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %65 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SCTP_MOBILITY_PRIM_DELETED, align 4
  %68 = call i32 @sctp_mobility_feature_on(i32 %66, i32 %67)
  %69 = load i32, i32* @SCTP_TIMER_TYPE_PRIM_DELETED, align 4
  %70 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %71 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %74 = call i32 @sctp_timer_start(i32 %69, i32 %72, %struct.sctp_tcb* %73, i32* null)
  br label %75

75:                                               ; preds = %51, %34
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %78 = load %struct.sctp_nets*, %struct.sctp_nets** %6, align 8
  %79 = call %struct.sctp_nets* @sctp_find_alternate_net(%struct.sctp_tcb* %77, %struct.sctp_nets* %78, i32 0)
  %80 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %81 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %80, i32 0, i32 4
  store %struct.sctp_nets* %79, %struct.sctp_nets** %81, align 8
  br label %82

82:                                               ; preds = %76, %2
  %83 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %84 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %85 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %84, i32 0, i32 3
  %86 = load %struct.sctp_nets*, %struct.sctp_nets** %85, align 8
  %87 = icmp eq %struct.sctp_nets* %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %90 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %89, i32 0, i32 2
  %91 = call i8* @TAILQ_FIRST(i32* %90)
  %92 = bitcast i8* %91 to %struct.sctp_nets*
  %93 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %94 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %93, i32 0, i32 3
  store %struct.sctp_nets* %92, %struct.sctp_nets** %94, align 8
  br label %95

95:                                               ; preds = %88, %82
  %96 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %97 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %98 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %97, i32 0, i32 1
  %99 = load %struct.sctp_nets*, %struct.sctp_nets** %98, align 8
  %100 = icmp eq %struct.sctp_nets* %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %103 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %102, i32 0, i32 1
  store %struct.sctp_nets* null, %struct.sctp_nets** %103, align 8
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %106 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %107 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %107, i32 0, i32 0
  %109 = load %struct.sctp_nets*, %struct.sctp_nets** %108, align 8
  %110 = icmp eq %struct.sctp_nets* %105, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %113 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 0
  %115 = load %struct.sctp_nets*, %struct.sctp_nets** %114, align 8
  %116 = call i32 @sctp_free_remote_addr(%struct.sctp_nets* %115)
  %117 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %118 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %118, i32 0, i32 0
  store %struct.sctp_nets* null, %struct.sctp_nets** %119, align 8
  br label %120

120:                                              ; preds = %111, %104
  %121 = load %struct.sctp_nets*, %struct.sctp_nets** %4, align 8
  %122 = call i32 @sctp_free_remote_addr(%struct.sctp_nets* %121)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.sctp_nets*, i32) #1

declare dso_local i8* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @sctp_is_mobility_feature_on(i32, i32) #1

declare dso_local i32 @SCTPDBG(i32, i8*) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sctp_mobility_feature_on(i32, i32) #1

declare dso_local i32 @sctp_timer_start(i32, i32, %struct.sctp_tcb*, i32*) #1

declare dso_local %struct.sctp_nets* @sctp_find_alternate_net(%struct.sctp_tcb*, %struct.sctp_nets*, i32) #1

declare dso_local i32 @sctp_free_remote_addr(%struct.sctp_nets*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
