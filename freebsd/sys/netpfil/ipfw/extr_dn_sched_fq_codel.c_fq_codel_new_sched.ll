; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_new_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_codel.c_fq_codel_new_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.dn_sch_inst = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.fq_codel_si = type { %struct.TYPE_11__*, i32, i32, i32, %struct.dn_queue }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.dn_queue = type { i32, %struct.dn_sch_inst*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.fq_codel_schk = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"si already configured!\00", align 1
@DN_QUEUE = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"cannot allocate memory for fq_codel configuration parameters\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fq_codel_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*)* @fq_codel_new_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_codel_new_sched(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_sch_inst*, align 8
  %4 = alloca %struct.fq_codel_si*, align 8
  %5 = alloca %struct.dn_queue*, align 8
  %6 = alloca %struct.fq_codel_schk*, align 8
  %7 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %3, align 8
  %8 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %9 = bitcast %struct.dn_sch_inst* %8 to %struct.fq_codel_si*
  store %struct.fq_codel_si* %9, %struct.fq_codel_si** %4, align 8
  %10 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %11 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i64 1
  %14 = bitcast %struct.TYPE_8__* %13 to %struct.fq_codel_schk*
  store %struct.fq_codel_schk* %14, %struct.fq_codel_schk** %6, align 8
  %15 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %16 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @D(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

21:                                               ; preds = %1
  %22 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %23 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %22, i32 0, i32 4
  store %struct.dn_queue* %23, %struct.dn_queue** %5, align 8
  %24 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %25 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* @DN_QUEUE, align 4
  %28 = call i32 @set_oid(i32* %26, i32 %27, i32 24)
  %29 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %30 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %31 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %30, i32 0, i32 1
  store %struct.dn_sch_inst* %29, %struct.dn_sch_inst** %31, align 8
  %32 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %33 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %38 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %6, align 8
  %40 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @M_DUMMYNET, align 4
  %44 = load i32, i32* @M_NOWAIT, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.TYPE_11__* @mallocarray(i32 %42, i32 4, i32 %43, i32 %46)
  %48 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %49 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %48, i32 0, i32 0
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %51 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = icmp eq %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %21
  %55 = call i32 @D(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %89

57:                                               ; preds = %21
  %58 = call i32 (...) @random()
  %59 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %60 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %62 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %61, i32 0, i32 2
  %63 = call i32 @STAILQ_INIT(i32* %62)
  %64 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %65 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %64, i32 0, i32 1
  %66 = call i32 @STAILQ_INIT(i32* %65)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %83, %57
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.fq_codel_schk*, %struct.fq_codel_schk** %6, align 8
  %70 = getelementptr inbounds %struct.fq_codel_schk, %struct.fq_codel_schk* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.fq_codel_si*, %struct.fq_codel_si** %4, align 8
  %76 = getelementptr inbounds %struct.fq_codel_si, %struct.fq_codel_si* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i32 500, i32* %82, align 4
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %67

86:                                               ; preds = %67
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fq_codel_desc, i32 0, i32 0), align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fq_codel_desc, i32 0, i32 0), align 4
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %86, %54, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @D(i8*) #1

declare dso_local i32 @set_oid(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @mallocarray(i32, i32, i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
