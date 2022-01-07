; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c__nop_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi_initiator/extr_isc_sm.c__nop_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__, %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"itt=%x ttt=%x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d] dslen not zero\00", align 1
@ISCSI_NOP_OUT = common dso_local global i32 0, align 4
@ISC_WAIT4PING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_18__*)* @_nop_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nop_in(%struct.TYPE_22__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %5, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %7, align 8
  %17 = call i32 @debug_called(i32 8)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @htonl(i32 %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @htonl(i32 %24)
  %26 = call i32 @sdebug(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %68

31:                                               ; preds = %2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @xdebug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load i32, i32* @ISCSI_NOP_OUT, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %8, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @memset(i32 %62, i32 0, i32 4)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = call i32 @isc_qout(%struct.TYPE_22__* %64, %struct.TYPE_18__* %65)
  br label %87

67:                                               ; preds = %41
  br label %81

68:                                               ; preds = %2
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %73
  br label %80

80:                                               ; preds = %79, %68
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = call i32 @pdu_free(i32 %84, %struct.TYPE_18__* %85)
  br label %87

87:                                               ; preds = %81, %46
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @sdebug(i32, i8*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @xdebug(i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @isc_qout(%struct.TYPE_22__*, %struct.TYPE_18__*) #1

declare dso_local i32 @pdu_free(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
