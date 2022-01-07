; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_abort_in_reasm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_indata.c_sctp_abort_in_reasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.sctp_queued_to_read = type { i32 }
%struct.sctp_tmit_chunk = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.mbuf = type { i32 }

@SCTP_DIAG_INFO_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Reass %x,CF:%x,TSN=%8.8x,SID=%4.4x,FSN=%8.8x,MID:%8.8x\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Reass %x,CI:%x,TSN=%8.8x,SID=%4.4x,FSN=%4.4x,SSN:%4.4x\00", align 1
@SCTP_CAUSE_PROTOCOL_VIOLATION = common dso_local global i32 0, align 4
@SCTP_SO_NOT_LOCKED = common dso_local global i32 0, align 4
@SCTP_FROM_SCTP_INDATA = common dso_local global i64 0, align 8
@SCTP_LOC_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_tcb*, %struct.sctp_queued_to_read*, %struct.sctp_tmit_chunk*, i32*, i32)* @sctp_abort_in_reasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_abort_in_reasm(%struct.sctp_tcb* %0, %struct.sctp_queued_to_read* %1, %struct.sctp_tmit_chunk* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_tcb*, align 8
  %7 = alloca %struct.sctp_queued_to_read*, align 8
  %8 = alloca %struct.sctp_tmit_chunk*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mbuf*, align 8
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %6, align 8
  store %struct.sctp_queued_to_read* %1, %struct.sctp_queued_to_read** %7, align 8
  store %struct.sctp_tmit_chunk* %2, %struct.sctp_tmit_chunk** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @SCTP_DIAG_INFO_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %19 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %5
  %24 = trunc i64 %15 to i32
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %27 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %30 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %35 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %40 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %45 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snprintf(i8* %17, i32 %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %33, i32 %38, i32 %43, i32 %48)
  br label %77

50:                                               ; preds = %5
  %51 = trunc i64 %15 to i32
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.sctp_queued_to_read*, %struct.sctp_queued_to_read** %7, align 8
  %54 = getelementptr inbounds %struct.sctp_queued_to_read, %struct.sctp_queued_to_read* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %57 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %62 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %67 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %72 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @snprintf(i8* %17, i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55, i32 %60, i32 %65, i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %50, %23
  %78 = load i32, i32* @SCTP_CAUSE_PROTOCOL_VIOLATION, align 4
  %79 = call %struct.mbuf* @sctp_generate_cause(i32 %78, i8* %17)
  store %struct.mbuf* %79, %struct.mbuf** %13, align 8
  %80 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %81 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @sctp_m_freem(i32* %82)
  %84 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %85 = getelementptr inbounds %struct.sctp_tmit_chunk, %struct.sctp_tmit_chunk* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %87 = load %struct.sctp_tmit_chunk*, %struct.sctp_tmit_chunk** %8, align 8
  %88 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %89 = call i32 @sctp_free_a_chunk(%struct.sctp_tcb* %86, %struct.sctp_tmit_chunk* %87, i32 %88)
  %90 = load i64, i64* @SCTP_FROM_SCTP_INDATA, align 8
  %91 = load i64, i64* @SCTP_LOC_1, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %94 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i64 %92, i64* %96, align 8
  %97 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %98 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load %struct.sctp_tcb*, %struct.sctp_tcb** %6, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %102 = load i32, i32* @SCTP_SO_NOT_LOCKED, align 4
  %103 = call i32 @sctp_abort_an_association(%struct.TYPE_8__* %99, %struct.sctp_tcb* %100, %struct.mbuf* %101, i32 %102)
  %104 = load i32*, i32** %9, align 8
  store i32 1, i32* %104, align 4
  %105 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local %struct.mbuf* @sctp_generate_cause(i32, i8*) #2

declare dso_local i32 @sctp_m_freem(i32*) #2

declare dso_local i32 @sctp_free_a_chunk(%struct.sctp_tcb*, %struct.sctp_tmit_chunk*, i32) #2

declare dso_local i32 @sctp_abort_an_association(%struct.TYPE_8__*, %struct.sctp_tcb*, %struct.mbuf*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
