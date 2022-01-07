; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dn_sch_inst = type { i32 }
%struct.fq_codel_si = type { %struct.fq_codel_list, %struct.fq_codel_list, %struct.TYPE_3__ }
%struct.fq_codel_list = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.fq_codel_schk = type { %struct.dn_sch_fq_codel_parms }
%struct.dn_sch_fq_codel_parms = type { i64 }
%struct.fq_codel_flow = type { i64, i64 }

@flowchain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.dn_sch_inst*)* @fq_codel_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @fq_codel_dequeue(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.dn_sch_inst*, align 8
  %4 = alloca %struct.fq_codel_si*, align 8
  %5 = alloca %struct.fq_codel_schk*, align 8
  %6 = alloca %struct.dn_sch_fq_codel_parms*, align 8
  %7 = alloca %struct.fq_codel_flow*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca %struct.fq_codel_list*, align 8
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %3, align 8
  %10 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %11 = bitcast %struct.dn_sch_inst* %10 to %struct.fq_codel_si*
  store %struct.fq_codel_si* %11, %struct.fq_codel_si** %4, align 8
  %12 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %13 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = inttoptr i64 %16 to %struct.fq_codel_schk*
  store %struct.fq_codel_schk* %17, %struct.fq_codel_schk** %5, align 8
  %18 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %5, align 8
  %19 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %18, i32 0, i32 0
  store %struct.dn_sch_fq_codel_parms* %19, %struct.dn_sch_fq_codel_parms** %6, align 8
  br label %20

20:                                               ; preds = %109, %1
  %21 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %22 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %21, i32 0, i32 1
  %23 = call i64 @STAILQ_EMPTY(%struct.fq_codel_list* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %27 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %26, i32 0, i32 0
  store %struct.fq_codel_list* %27, %struct.fq_codel_list** %9, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %30 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %29, i32 0, i32 1
  store %struct.fq_codel_list* %30, %struct.fq_codel_list** %9, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %33 = call i64 @STAILQ_EMPTY(%struct.fq_codel_list* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %111

36:                                               ; preds = %31
  %37 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %38 = call %struct.fq_codel_flow* @STAILQ_FIRST(%struct.fq_codel_list* %37)
  store %struct.fq_codel_flow* %38, %struct.fq_codel_flow** %7, align 8
  br label %39

39:                                               ; preds = %64, %36
  %40 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %41 = icmp ne %struct.fq_codel_flow* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %44 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.dn_sch_fq_codel_parms*, %struct.dn_sch_fq_codel_parms** %6, align 8
  %49 = getelementptr inbounds %struct.dn_sch_fq_codel_parms, %struct.dn_sch_fq_codel_parms* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %52 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, %50
  store i64 %54, i64* %52, align 8
  %55 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %56 = load i32, i32* @flowchain, align 4
  %57 = call i32 @STAILQ_REMOVE_HEAD(%struct.fq_codel_list* %55, i32 %56)
  %58 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %59 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %58, i32 0, i32 0
  %60 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %61 = load i32, i32* @flowchain, align 4
  %62 = call i32 @STAILQ_INSERT_TAIL(%struct.fq_codel_list* %59, %struct.fq_codel_flow* %60, i32 %61)
  br label %64

63:                                               ; preds = %42
  br label %67

64:                                               ; preds = %47
  %65 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %66 = call %struct.fq_codel_flow* @STAILQ_FIRST(%struct.fq_codel_list* %65)
  store %struct.fq_codel_flow* %66, %struct.fq_codel_flow** %7, align 8
  br label %39

67:                                               ; preds = %63, %39
  %68 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %69 = call i64 @STAILQ_EMPTY(%struct.fq_codel_list* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %109

72:                                               ; preds = %67
  %73 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %74 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %75 = call %struct.mbuf* @fqc_codel_dequeue(%struct.fq_codel_flow* %73, %struct.fq_codel_si* %74)
  store %struct.mbuf* %75, %struct.mbuf** %8, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %77 = icmp ne %struct.mbuf* %76, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %72
  %79 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %80 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %81 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %80, i32 0, i32 1
  %82 = icmp eq %struct.fq_codel_list* %79, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %85 = load i32, i32* @flowchain, align 4
  %86 = call i32 @STAILQ_REMOVE_HEAD(%struct.fq_codel_list* %84, i32 %85)
  %87 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %88 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %87, i32 0, i32 0
  %89 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %90 = load i32, i32* @flowchain, align 4
  %91 = call i32 @STAILQ_INSERT_TAIL(%struct.fq_codel_list* %88, %struct.fq_codel_flow* %89, i32 %90)
  br label %98

92:                                               ; preds = %78
  %93 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %94 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.fq_codel_list*, %struct.fq_codel_list** %9, align 8
  %96 = load i32, i32* @flowchain, align 4
  %97 = call i32 @STAILQ_REMOVE_HEAD(%struct.fq_codel_list* %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %83
  br label %109

99:                                               ; preds = %72
  %100 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.fq_codel_flow*, %struct.fq_codel_flow** %7, align 8
  %105 = getelementptr inbounds %struct.fq_codel_flow, %struct.fq_codel_flow* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %108, %struct.mbuf** %2, align 8
  br label %111

109:                                              ; preds = %98, %71
  br i1 true, label %20, label %110

110:                                              ; preds = %109
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %111

111:                                              ; preds = %110, %99, %35
  %112 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %112
}

declare dso_local i64 @STAILQ_EMPTY(%struct.fq_codel_list*) #1

declare dso_local %struct.fq_codel_flow* @STAILQ_FIRST(%struct.fq_codel_list*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.fq_codel_list*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.fq_codel_list*, %struct.fq_codel_flow*, i32) #1

declare dso_local %struct.mbuf* @fqc_codel_dequeue(%struct.fq_codel_flow*, %struct.fq_codel_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
