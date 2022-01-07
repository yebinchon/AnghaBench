; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpRecvResetAck.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_CcpRecvResetAck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32*)* }
%struct.fsm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ccp = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32* }

@LogCCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: Incorrect ResetAck (id %d, not %d) ignored\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: Duplicate ResetAck (resetting again)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: Unexpected ResetAck (id %d) ignored\0A\00", align 1
@algorithm = common dso_local global %struct.TYPE_8__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, i32)* @CcpRecvResetAck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CcpRecvResetAck(%struct.fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccp*, align 8
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fsm*, %struct.fsm** %3, align 8
  %7 = call %struct.ccp* @fsm2ccp(%struct.fsm* %6)
  store %struct.ccp* %7, %struct.ccp** %5, align 8
  %8 = load %struct.ccp*, %struct.ccp** %5, align 8
  %9 = getelementptr inbounds %struct.ccp, %struct.ccp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ccp*, %struct.ccp** %5, align 8
  %15 = getelementptr inbounds %struct.ccp, %struct.ccp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i32, i32* @LogCCP, align 4
  %20 = load %struct.fsm*, %struct.fsm** %3, align 8
  %21 = getelementptr inbounds %struct.fsm, %struct.fsm* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ccp*, %struct.ccp** %5, align 8
  %27 = getelementptr inbounds %struct.ccp, %struct.ccp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %28)
  br label %84

30:                                               ; preds = %12
  br label %55

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.ccp*, %struct.ccp** %5, align 8
  %34 = getelementptr inbounds %struct.ccp, %struct.ccp* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32, i32* @LogCCP, align 4
  %39 = load %struct.fsm*, %struct.fsm** %3, align 8
  %40 = getelementptr inbounds %struct.fsm, %struct.fsm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %54

45:                                               ; preds = %31
  %46 = load i32, i32* @LogCCP, align 4
  %47 = load %struct.fsm*, %struct.fsm** %3, align 8
  %48 = getelementptr inbounds %struct.fsm, %struct.fsm* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  br label %84

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.ccp*, %struct.ccp** %5, align 8
  %57 = getelementptr inbounds %struct.ccp, %struct.ccp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ccp*, %struct.ccp** %5, align 8
  %60 = getelementptr inbounds %struct.ccp, %struct.ccp* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ccp*, %struct.ccp** %5, align 8
  %62 = getelementptr inbounds %struct.ccp, %struct.ccp* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 8
  %63 = load %struct.ccp*, %struct.ccp** %5, align 8
  %64 = getelementptr inbounds %struct.ccp, %struct.ccp* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %55
  %69 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @algorithm, align 8
  %70 = load %struct.ccp*, %struct.ccp** %5, align 8
  %71 = getelementptr inbounds %struct.ccp, %struct.ccp* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %69, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (i32*)*, i32 (i32*)** %77, align 8
  %79 = load %struct.ccp*, %struct.ccp** %5, align 8
  %80 = getelementptr inbounds %struct.ccp, %struct.ccp* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 %78(i32* %82)
  br label %84

84:                                               ; preds = %18, %45, %68, %55
  ret void
}

declare dso_local %struct.ccp* @fsm2ccp(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
