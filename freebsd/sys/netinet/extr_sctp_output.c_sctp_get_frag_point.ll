; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_get_frag_point.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_output.c_sctp_get_frag_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tcb = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_association = type { i32 }

@SCTP_PCB_FLAGS_BOUND_V6 = common dso_local global i32 0, align 4
@SCTP_MIN_OVERHEAD = common dso_local global i32 0, align 4
@SCTP_MIN_V4_OVERHEAD = common dso_local global i32 0, align 4
@SCTP_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_get_frag_point(%struct.sctp_tcb* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sctp_tcb*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sctp_tcb* %0, %struct.sctp_tcb** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %7 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SCTP_PCB_FLAGS_BOUND_V6, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @SCTP_MIN_OVERHEAD, align 4
  store i32 %16, i32* %6, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @SCTP_MIN_V4_OVERHEAD, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %21 = call i64 @SCTP_DATA_CHUNK_OVERHEAD(%struct.sctp_tcb* %20)
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %5, align 4
  br label %47

40:                                               ; preds = %19
  %41 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %42 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %34
  %48 = load i32, i32* @SCTP_DATA, align 4
  %49 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %50 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @sctp_auth_is_required_chunk(i32 %48, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.sctp_tcb*, %struct.sctp_tcb** %3, align 8
  %57 = getelementptr inbounds %struct.sctp_tcb, %struct.sctp_tcb* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @sctp_get_auth_chunk_len(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %55, %47
  %66 = load i32, i32* %5, align 4
  %67 = srem i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %5, align 4
  %71 = srem i32 %70, 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @SCTP_DATA_CHUNK_OVERHEAD(%struct.sctp_tcb*) #1

declare dso_local i64 @sctp_auth_is_required_chunk(i32, i32) #1

declare dso_local i64 @sctp_get_auth_chunk_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
