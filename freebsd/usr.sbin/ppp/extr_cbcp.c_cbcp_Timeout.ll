; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_cbcp.c_cbcp_Timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbcp = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@LogCBCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Urk - unexpected CBCP timeout !\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"REQ\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"RESPONSE\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Terminate REQ\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: Timeout waiting for peer %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cbcp_Timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbcp_Timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cbcp*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cbcp*
  store %struct.cbcp* %6, %struct.cbcp** %3, align 8
  %7 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %8 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = call i32 @timer_Stop(i32* %9)
  %11 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %12 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %18 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %40 [
    i32 131, label %21
    i32 128, label %21
    i32 130, label %31
    i32 129, label %34
    i32 132, label %37
  ]

21:                                               ; preds = %16, %16
  %22 = load i32, i32* @LogCBCP, align 4
  %23 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %24 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %40

31:                                               ; preds = %16
  %32 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %33 = call i32 @cbcp_SendReq(%struct.cbcp* %32)
  br label %40

34:                                               ; preds = %16
  %35 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %36 = call i32 @cbcp_SendResponse(%struct.cbcp* %35)
  br label %40

37:                                               ; preds = %16
  %38 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %39 = call i32 @cbcp_SendAck(%struct.cbcp* %38)
  br label %40

40:                                               ; preds = %16, %37, %34, %31, %21
  br label %81

41:                                               ; preds = %1
  %42 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %43 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %50 [
    i32 128, label %46
    i32 130, label %47
    i32 129, label %48
    i32 132, label %49
  ]

46:                                               ; preds = %41
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %60

47:                                               ; preds = %41
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %60

48:                                               ; preds = %41
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %60

49:                                               ; preds = %41
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %60

50:                                               ; preds = %41
  %51 = load i32, i32* @LogCBCP, align 4
  %52 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %53 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i8* null, i8** %4, align 8
  br label %60

60:                                               ; preds = %50, %49, %48, %47, %46
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* @LogCBCP, align 4
  %65 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %66 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %63, %60
  %75 = load %struct.cbcp*, %struct.cbcp** %3, align 8
  %76 = getelementptr inbounds %struct.cbcp, %struct.cbcp* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call i32 @datalink_CBCPFailed(%struct.TYPE_6__* %79)
  br label %81

81:                                               ; preds = %74, %40
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @cbcp_SendReq(%struct.cbcp*) #1

declare dso_local i32 @cbcp_SendResponse(%struct.cbcp*) #1

declare dso_local i32 @cbcp_SendAck(%struct.cbcp*) #1

declare dso_local i32 @datalink_CBCPFailed(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
