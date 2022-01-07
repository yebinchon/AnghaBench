; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c__scsi_rsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c__scsi_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"itt=%x pq=%p opq=%p\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%d] we lost something itt=%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*)* @_scsi_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsi_rsp(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %6 = call i32 @debug_called(i32 8)
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_20__* @i_search_hld(%struct.TYPE_21__* %7, i32 %13, i32 0)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = call i32 @debug(i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.TYPE_20__* %22, %struct.TYPE_20__* %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = icmp ne %struct.TYPE_20__* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = call i32 @iscsi_done(%struct.TYPE_21__* %28, %struct.TYPE_20__* %29, %struct.TYPE_20__* %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = call i32 @i_acked_hld(%struct.TYPE_21__* %32, %struct.TYPE_17__* %34)
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohl(i32 %45)
  %47 = call i32 @xdebug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %36, %27
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = call i32 @pdu_free(i32 %51, %struct.TYPE_20__* %52)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.TYPE_20__* @i_search_hld(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @iscsi_done(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @i_acked_hld(%struct.TYPE_21__*, %struct.TYPE_17__*) #1

declare dso_local i32 @xdebug(i8*, i32, i32) #1

declare dso_local i32 @pdu_free(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
