; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_ComeDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_ComeDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datalink = type { i32, i64, %struct.TYPE_6__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CLOSE_LCP = common dso_local global i32 0, align 4
@CLOSE_STAYDOWN = common dso_local global i32 0, align 4
@DATALINK_READY = common dso_local global i64 0, align 8
@DATALINK_CLOSED = common dso_local global i64 0, align 8
@DATALINK_HANGUP = common dso_local global i64 0, align 8
@DATALINK_OPENING = common dso_local global i64 0, align 8
@DATALINK_LOGOUT = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid hangup script\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid logout script\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datalink_ComeDown(%struct.datalink* %0, i32 %1) #0 {
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.datalink* %0, %struct.datalink** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CLOSE_LCP, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.datalink*, %struct.datalink** %3, align 8
  %11 = call i32 @datalink_DontHangup(%struct.datalink* %10)
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.datalink*, %struct.datalink** %3, align 8
  %18 = call i32 @datalink_StayDown(%struct.datalink* %17)
  br label %19

19:                                               ; preds = %16, %12
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.datalink*, %struct.datalink** %3, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.datalink*, %struct.datalink** %3, align 8
  %25 = getelementptr inbounds %struct.datalink, %struct.datalink* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.datalink*, %struct.datalink** %3, align 8
  %27 = getelementptr inbounds %struct.datalink, %struct.datalink* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DATALINK_READY, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.datalink*, %struct.datalink** %3, align 8
  %36 = getelementptr inbounds %struct.datalink, %struct.datalink* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @physical_StopDeviceTimer(i32 %37)
  %39 = load %struct.datalink*, %struct.datalink** %3, align 8
  %40 = load i64, i64* @DATALINK_READY, align 8
  %41 = call i32 @datalink_NewState(%struct.datalink* %39, i64 %40)
  br label %116

42:                                               ; preds = %31, %20
  %43 = load %struct.datalink*, %struct.datalink** %3, align 8
  %44 = getelementptr inbounds %struct.datalink, %struct.datalink* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DATALINK_CLOSED, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %115

48:                                               ; preds = %42
  %49 = load %struct.datalink*, %struct.datalink** %3, align 8
  %50 = getelementptr inbounds %struct.datalink, %struct.datalink* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DATALINK_HANGUP, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %48
  %55 = load %struct.datalink*, %struct.datalink** %3, align 8
  %56 = getelementptr inbounds %struct.datalink, %struct.datalink* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @physical_Offline(i32 %57)
  %59 = load %struct.datalink*, %struct.datalink** %3, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %111

64:                                               ; preds = %54
  %65 = load %struct.datalink*, %struct.datalink** %3, align 8
  %66 = getelementptr inbounds %struct.datalink, %struct.datalink* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DATALINK_OPENING, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %64
  %71 = load %struct.datalink*, %struct.datalink** %3, align 8
  %72 = getelementptr inbounds %struct.datalink, %struct.datalink* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DATALINK_LOGOUT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load %struct.datalink*, %struct.datalink** %3, align 8
  %78 = load i64, i64* @DATALINK_HANGUP, align 8
  %79 = call i32 @datalink_NewState(%struct.datalink* %77, i64 %78)
  %80 = load %struct.datalink*, %struct.datalink** %3, align 8
  %81 = getelementptr inbounds %struct.datalink, %struct.datalink* %80, i32 0, i32 3
  %82 = load %struct.datalink*, %struct.datalink** %3, align 8
  %83 = getelementptr inbounds %struct.datalink, %struct.datalink* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @chat_Setup(i32* %81, i32 %86, i32* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %76
  %90 = load i32, i32* @LogWARN, align 4
  %91 = call i32 @log_Printf(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %76
  br label %110

93:                                               ; preds = %70
  %94 = load %struct.datalink*, %struct.datalink** %3, align 8
  %95 = load i64, i64* @DATALINK_LOGOUT, align 8
  %96 = call i32 @datalink_NewState(%struct.datalink* %94, i64 %95)
  %97 = load %struct.datalink*, %struct.datalink** %3, align 8
  %98 = getelementptr inbounds %struct.datalink, %struct.datalink* %97, i32 0, i32 3
  %99 = load %struct.datalink*, %struct.datalink** %3, align 8
  %100 = getelementptr inbounds %struct.datalink, %struct.datalink* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @chat_Setup(i32* %98, i32 %103, i32* null)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %93
  %107 = load i32, i32* @LogWARN, align 4
  %108 = call i32 @log_Printf(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %93
  br label %110

110:                                              ; preds = %109, %92
  br label %114

111:                                              ; preds = %64, %54
  %112 = load %struct.datalink*, %struct.datalink** %3, align 8
  %113 = call i32 @datalink_HangupDone(%struct.datalink* %112)
  br label %114

114:                                              ; preds = %111, %110
  br label %115

115:                                              ; preds = %114, %48, %42
  br label %116

116:                                              ; preds = %115, %34
  ret void
}

declare dso_local i32 @datalink_DontHangup(%struct.datalink*) #1

declare dso_local i32 @datalink_StayDown(%struct.datalink*) #1

declare dso_local i32 @physical_StopDeviceTimer(i32) #1

declare dso_local i32 @datalink_NewState(%struct.datalink*, i64) #1

declare dso_local i32 @physical_Offline(i32) #1

declare dso_local i32 @chat_Setup(i32*, i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @datalink_HangupDone(%struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
