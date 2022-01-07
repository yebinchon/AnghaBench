; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_isc_qout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c_isc_qout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@ISCSI_WRITE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"enqued: pq=%p\00", align 1
@ISC_OQNOTEMPTY = common dso_local global i32 0, align 4
@ISC_OWAITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_qout(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 @debug_called(i32 8)
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = call i32 @i_prepPDU(%struct.TYPE_23__* %13, %struct.TYPE_22__* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %12, %2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = call i32 @i_nqueue_isnd(%struct.TYPE_23__* %28, %struct.TYPE_22__* %29)
  br label %49

31:                                               ; preds = %19
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ISCSI_WRITE_DATA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = call i32 @i_nqueue_wsnd(%struct.TYPE_23__* %41, %struct.TYPE_22__* %42)
  br label %48

44:                                               ; preds = %31
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = call i32 @i_nqueue_csnd(%struct.TYPE_23__* %45, %struct.TYPE_22__* %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %51 = call i32 @sdebug(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %50)
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = call i32 @mtx_lock(i32* %53)
  %55 = load i32, i32* @ISC_OQNOTEMPTY, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ISC_OWAITING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %49
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = call i32 @wakeup(i32* %68)
  br label %70

70:                                               ; preds = %66, %49
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = call i32 @mtx_unlock(i32* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %17
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @i_prepPDU(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @i_nqueue_isnd(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @i_nqueue_wsnd(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @i_nqueue_csnd(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @sdebug(i32, i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
