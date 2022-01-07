; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.datalink = type { i64, %struct.datalink*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@DATALINK_CLOSED = common dso_local global i64 0, align 8
@DATALINK_HANGUP = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: Invalid datalink name\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_Close(%struct.bundle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.datalink*, align 8
  %8 = alloca %struct.datalink*, align 8
  %9 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store %struct.datalink* null, %struct.datalink** %8, align 8
  %10 = load %struct.bundle*, %struct.bundle** %4, align 8
  %11 = getelementptr inbounds %struct.bundle, %struct.bundle* %10, i32 0, i32 0
  %12 = load %struct.datalink*, %struct.datalink** %11, align 8
  store %struct.datalink* %12, %struct.datalink** %7, align 8
  br label %13

13:                                               ; preds = %61, %3
  %14 = load %struct.datalink*, %struct.datalink** %7, align 8
  %15 = icmp ne %struct.datalink* %14, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.datalink*, %struct.datalink** %7, align 8
  %22 = getelementptr inbounds %struct.datalink, %struct.datalink* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strcasecmp(i8* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load %struct.datalink*, %struct.datalink** %7, align 8
  store %struct.datalink* %27, %struct.datalink** %8, align 8
  br label %28

28:                                               ; preds = %26, %19, %16
  %29 = load i8*, i8** %5, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load %struct.datalink*, %struct.datalink** %8, align 8
  %33 = load %struct.datalink*, %struct.datalink** %7, align 8
  %34 = icmp eq %struct.datalink* %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %43 [
    i32 129, label %37
    i32 128, label %40
  ]

37:                                               ; preds = %35
  %38 = load %struct.datalink*, %struct.datalink** %7, align 8
  %39 = call i32 @datalink_DontHangup(%struct.datalink* %38)
  br label %43

40:                                               ; preds = %35
  %41 = load %struct.datalink*, %struct.datalink** %7, align 8
  %42 = call i32 @datalink_StayDown(%struct.datalink* %41)
  br label %43

43:                                               ; preds = %35, %40, %37
  br label %60

44:                                               ; preds = %31
  %45 = load %struct.datalink*, %struct.datalink** %7, align 8
  %46 = getelementptr inbounds %struct.datalink, %struct.datalink* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DATALINK_CLOSED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.datalink*, %struct.datalink** %7, align 8
  %52 = getelementptr inbounds %struct.datalink, %struct.datalink* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DATALINK_HANGUP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %50, %44
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.datalink*, %struct.datalink** %7, align 8
  %63 = getelementptr inbounds %struct.datalink, %struct.datalink* %62, i32 0, i32 1
  %64 = load %struct.datalink*, %struct.datalink** %63, align 8
  store %struct.datalink* %64, %struct.datalink** %7, align 8
  br label %13

65:                                               ; preds = %13
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.datalink*, %struct.datalink** %8, align 8
  %70 = icmp eq %struct.datalink* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @LogWARN, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @log_Printf(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %73)
  br label %142

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %122, label %78

78:                                               ; preds = %75
  %79 = load %struct.bundle*, %struct.bundle** %4, align 8
  %80 = getelementptr inbounds %struct.bundle, %struct.bundle* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.bundle*, %struct.bundle** %4, align 8
  %86 = call i32 @bundle_StopSessionTimer(%struct.bundle* %85)
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.bundle*, %struct.bundle** %4, align 8
  %89 = call i32 @bundle_StopIdleTimer(%struct.bundle* %88)
  %90 = load %struct.bundle*, %struct.bundle** %4, align 8
  %91 = getelementptr inbounds %struct.bundle, %struct.bundle* %90, i32 0, i32 1
  %92 = call i64 @ncp_LayersUnfinished(%struct.TYPE_6__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.bundle*, %struct.bundle** %4, align 8
  %96 = getelementptr inbounds %struct.bundle, %struct.bundle* %95, i32 0, i32 1
  %97 = call i32 @ncp_Close(%struct.TYPE_6__* %96)
  br label %121

98:                                               ; preds = %87
  %99 = load %struct.bundle*, %struct.bundle** %4, align 8
  %100 = getelementptr inbounds %struct.bundle, %struct.bundle* %99, i32 0, i32 1
  %101 = call i32 @ncp2initial(%struct.TYPE_6__* %100)
  %102 = load %struct.bundle*, %struct.bundle** %4, align 8
  %103 = getelementptr inbounds %struct.bundle, %struct.bundle* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = call i32 @mp_Down(i32* %104)
  %106 = load %struct.bundle*, %struct.bundle** %4, align 8
  %107 = getelementptr inbounds %struct.bundle, %struct.bundle* %106, i32 0, i32 0
  %108 = load %struct.datalink*, %struct.datalink** %107, align 8
  store %struct.datalink* %108, %struct.datalink** %7, align 8
  br label %109

109:                                              ; preds = %116, %98
  %110 = load %struct.datalink*, %struct.datalink** %7, align 8
  %111 = icmp ne %struct.datalink* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.datalink*, %struct.datalink** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @datalink_Close(%struct.datalink* %113, i32 %114)
  br label %116

116:                                              ; preds = %112
  %117 = load %struct.datalink*, %struct.datalink** %7, align 8
  %118 = getelementptr inbounds %struct.datalink, %struct.datalink* %117, i32 0, i32 1
  %119 = load %struct.datalink*, %struct.datalink** %118, align 8
  store %struct.datalink* %119, %struct.datalink** %7, align 8
  br label %109

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %94
  br label %142

122:                                              ; preds = %75
  %123 = load %struct.datalink*, %struct.datalink** %8, align 8
  %124 = icmp ne %struct.datalink* %123, null
  br i1 %124, label %125, label %141

125:                                              ; preds = %122
  %126 = load %struct.datalink*, %struct.datalink** %8, align 8
  %127 = getelementptr inbounds %struct.datalink, %struct.datalink* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DATALINK_CLOSED, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.datalink*, %struct.datalink** %8, align 8
  %133 = getelementptr inbounds %struct.datalink, %struct.datalink* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DATALINK_HANGUP, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load %struct.datalink*, %struct.datalink** %8, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @datalink_Close(%struct.datalink* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %131, %125, %122
  br label %142

142:                                              ; preds = %71, %141, %121
  ret void
}

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i32 @datalink_DontHangup(%struct.datalink*) #1

declare dso_local i32 @datalink_StayDown(%struct.datalink*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i32 @bundle_StopSessionTimer(%struct.bundle*) #1

declare dso_local i32 @bundle_StopIdleTimer(%struct.bundle*) #1

declare dso_local i64 @ncp_LayersUnfinished(%struct.TYPE_6__*) #1

declare dso_local i32 @ncp_Close(%struct.TYPE_6__*) #1

declare dso_local i32 @ncp2initial(%struct.TYPE_6__*) #1

declare dso_local i32 @mp_Down(i32*) #1

declare dso_local i32 @datalink_Close(%struct.datalink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
