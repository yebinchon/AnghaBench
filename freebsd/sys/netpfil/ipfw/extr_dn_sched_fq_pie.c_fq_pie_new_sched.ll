; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_new_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_pie_new_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.dn_sch_inst = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.fq_pie_si = type { %struct.TYPE_12__*, i32, i32, i32, %struct.dn_queue }
%struct.TYPE_12__ = type { i64, %struct.fq_pie_flow* }
%struct.fq_pie_flow = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.dn_queue = type { i32, %struct.dn_sch_inst*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fq_pie_schk = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"si already configured!\00", align 1
@DN_QUEUE = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot allocate memory for fq_pie si extra vars\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for fq_pie flows\00", align 1
@fq_pie_desc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*)* @fq_pie_new_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_pie_new_sched(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_sch_inst*, align 8
  %4 = alloca %struct.fq_pie_si*, align 8
  %5 = alloca %struct.dn_queue*, align 8
  %6 = alloca %struct.fq_pie_schk*, align 8
  %7 = alloca %struct.fq_pie_flow*, align 8
  %8 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %3, align 8
  %9 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %10 = bitcast %struct.dn_sch_inst* %9 to %struct.fq_pie_si*
  store %struct.fq_pie_si* %10, %struct.fq_pie_si** %4, align 8
  %11 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %12 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i64 1
  %15 = bitcast %struct.TYPE_9__* %14 to %struct.fq_pie_schk*
  store %struct.fq_pie_schk* %15, %struct.fq_pie_schk** %6, align 8
  %16 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %17 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @D(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %136

22:                                               ; preds = %1
  %23 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %24 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %23, i32 0, i32 4
  store %struct.dn_queue* %24, %struct.dn_queue** %5, align 8
  %25 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %26 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* @DN_QUEUE, align 4
  %29 = call i32 @set_oid(i32* %27, i32 %28, i32 24)
  %30 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %31 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %32 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %31, i32 0, i32 1
  store %struct.dn_sch_inst* %30, %struct.dn_sch_inst** %32, align 8
  %33 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %34 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %39 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @M_DUMMYNET, align 4
  %41 = load i32, i32* @M_NOWAIT, align 4
  %42 = load i32, i32* @M_ZERO, align 4
  %43 = or i32 %41, %42
  %44 = call %struct.TYPE_12__* @malloc(i32 4, i32 %40, i32 %43)
  %45 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %46 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %45, i32 0, i32 0
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %46, align 8
  %47 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %48 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = icmp eq %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %22
  %52 = call i32 @D(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %2, align 4
  br label %136

54:                                               ; preds = %22
  %55 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %6, align 8
  %56 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @M_DUMMYNET, align 4
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = load i32, i32* @M_ZERO, align 4
  %62 = or i32 %60, %61
  %63 = call %struct.fq_pie_flow* @mallocarray(i32 %58, i32 16, i32 %59, i32 %62)
  %64 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %65 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store %struct.fq_pie_flow* %63, %struct.fq_pie_flow** %67, align 8
  %68 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %69 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %71, align 8
  store %struct.fq_pie_flow* %72, %struct.fq_pie_flow** %7, align 8
  %73 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %7, align 8
  %74 = icmp eq %struct.fq_pie_flow* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %54
  %76 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %77 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* @M_DUMMYNET, align 4
  %80 = call i32 @free(%struct.TYPE_12__* %78, i32 %79)
  %81 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %82 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %81, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %82, align 8
  %83 = call i32 @D(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %2, align 4
  br label %136

85:                                               ; preds = %54
  %86 = call i32 (...) @random()
  %87 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %88 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %90 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %94 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %93, i32 0, i32 2
  %95 = call i32 @STAILQ_INIT(i32* %94)
  %96 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %97 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %96, i32 0, i32 1
  %98 = call i32 @STAILQ_INIT(i32* %97)
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %130, %85
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %6, align 8
  %102 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %99
  %107 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %6, align 8
  %108 = getelementptr inbounds %struct.fq_pie_schk, %struct.fq_pie_schk* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %110, i64 %112
  %114 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32* %109, i32** %115, align 8
  %116 = load %struct.fq_pie_si*, %struct.fq_pie_si** %4, align 8
  %117 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %119, i64 %121
  %123 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %122, i32 0, i32 0
  store %struct.TYPE_12__* %118, %struct.TYPE_12__** %123, align 8
  %124 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %124, i64 %126
  %128 = load %struct.fq_pie_schk*, %struct.fq_pie_schk** %6, align 8
  %129 = call i32 @pie_init(%struct.fq_pie_flow* %127, %struct.fq_pie_schk* %128)
  br label %130

130:                                              ; preds = %106
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %99

133:                                              ; preds = %99
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fq_pie_desc, i32 0, i32 0), align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @fq_pie_desc, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %133, %75, %51, %20
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @set_oid(i32*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @malloc(i32, i32, i32) #1

declare dso_local %struct.fq_pie_flow* @mallocarray(i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @pie_init(%struct.fq_pie_flow*, %struct.fq_pie_schk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
