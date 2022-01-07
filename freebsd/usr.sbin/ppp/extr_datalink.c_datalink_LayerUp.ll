; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LayerUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_LayerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64 }
%struct.datalink = type { %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.lcp }
%struct.TYPE_8__ = type { i32 }
%struct.lcp = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 (i32, i32*)* }
%struct.TYPE_6__ = type { i32 }

@PROTO_LCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PHASE_NETWORK = common dso_local global i64 0, align 8
@PHASE_AUTHENTICATE = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: his = %s, mine = %s\0A\00", align 1
@PROTO_PAP = common dso_local global i64 0, align 8
@PROTO_CHAP = common dso_local global i64 0, align 8
@PROTO_CCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fsm*)* @datalink_LayerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @datalink_LayerUp(i8* %0, %struct.fsm* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.datalink*, align 8
  %6 = alloca %struct.lcp*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.fsm* %1, %struct.fsm** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.datalink*
  store %struct.datalink* %8, %struct.datalink** %5, align 8
  %9 = load %struct.datalink*, %struct.datalink** %5, align 8
  %10 = getelementptr inbounds %struct.datalink, %struct.datalink* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store %struct.lcp* %13, %struct.lcp** %6, align 8
  %14 = load %struct.fsm*, %struct.fsm** %4, align 8
  %15 = getelementptr inbounds %struct.fsm, %struct.fsm* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PROTO_LCP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %99

19:                                               ; preds = %2
  %20 = load %struct.datalink*, %struct.datalink** %5, align 8
  %21 = call i32 @datalink_GotAuthname(%struct.datalink* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.lcp*, %struct.lcp** %6, align 8
  %23 = getelementptr inbounds %struct.lcp, %struct.lcp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.lcp*, %struct.lcp** %6, align 8
  %26 = getelementptr inbounds %struct.lcp, %struct.lcp* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.lcp*, %struct.lcp** %6, align 8
  %28 = getelementptr inbounds %struct.lcp, %struct.lcp* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.lcp*, %struct.lcp** %6, align 8
  %31 = getelementptr inbounds %struct.lcp, %struct.lcp* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.lcp*, %struct.lcp** %6, align 8
  %33 = getelementptr inbounds %struct.lcp, %struct.lcp* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %19
  %37 = load %struct.lcp*, %struct.lcp** %6, align 8
  %38 = getelementptr inbounds %struct.lcp, %struct.lcp* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %36, %19
  %42 = load %struct.datalink*, %struct.datalink** %5, align 8
  %43 = getelementptr inbounds %struct.datalink, %struct.datalink* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @bundle_Phase(i32 %44)
  %46 = load i64, i64* @PHASE_NETWORK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.datalink*, %struct.datalink** %5, align 8
  %50 = getelementptr inbounds %struct.datalink, %struct.datalink* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PHASE_AUTHENTICATE, align 4
  %53 = call i32 @bundle_NewPhase(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* @LogPHASE, align 4
  %56 = load %struct.datalink*, %struct.datalink** %5, align 8
  %57 = getelementptr inbounds %struct.datalink, %struct.datalink* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.lcp*, %struct.lcp** %6, align 8
  %60 = getelementptr inbounds %struct.lcp, %struct.lcp* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.lcp*, %struct.lcp** %6, align 8
  %63 = getelementptr inbounds %struct.lcp, %struct.lcp* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @Auth2Nam(i64 %61, i32 %64)
  %66 = load %struct.lcp*, %struct.lcp** %6, align 8
  %67 = getelementptr inbounds %struct.lcp, %struct.lcp* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.lcp*, %struct.lcp** %6, align 8
  %70 = getelementptr inbounds %struct.lcp, %struct.lcp* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @Auth2Nam(i64 %68, i32 %71)
  %73 = call i32 @log_Printf(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %65, i32 %72)
  %74 = load %struct.lcp*, %struct.lcp** %6, align 8
  %75 = getelementptr inbounds %struct.lcp, %struct.lcp* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PROTO_PAP, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %54
  %80 = load %struct.datalink*, %struct.datalink** %5, align 8
  %81 = getelementptr inbounds %struct.datalink, %struct.datalink* %80, i32 0, i32 3
  %82 = call i32 @auth_StartReq(i32* %81)
  br label %83

83:                                               ; preds = %79, %54
  %84 = load %struct.lcp*, %struct.lcp** %6, align 8
  %85 = getelementptr inbounds %struct.lcp, %struct.lcp* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PROTO_CHAP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.datalink*, %struct.datalink** %5, align 8
  %91 = getelementptr inbounds %struct.datalink, %struct.datalink* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @auth_StartReq(i32* %92)
  br label %94

94:                                               ; preds = %89, %83
  br label %98

95:                                               ; preds = %36
  %96 = load %struct.datalink*, %struct.datalink** %5, align 8
  %97 = call i32 @datalink_AuthOk(%struct.datalink* %96)
  br label %98

98:                                               ; preds = %95, %94
  br label %124

99:                                               ; preds = %2
  %100 = load %struct.fsm*, %struct.fsm** %4, align 8
  %101 = getelementptr inbounds %struct.fsm, %struct.fsm* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PROTO_CCP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load %struct.datalink*, %struct.datalink** %5, align 8
  %107 = getelementptr inbounds %struct.datalink, %struct.datalink* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32 (i32, i32*)*, i32 (i32, i32*)** %109, align 8
  %111 = load %struct.datalink*, %struct.datalink** %5, align 8
  %112 = getelementptr inbounds %struct.datalink, %struct.datalink* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.datalink*, %struct.datalink** %5, align 8
  %117 = getelementptr inbounds %struct.datalink, %struct.datalink* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = call i32 %110(i32 %115, i32* %121)
  br label %123

123:                                              ; preds = %105, %99
  br label %124

124:                                              ; preds = %123, %98
  ret void
}

declare dso_local i32 @datalink_GotAuthname(%struct.datalink*, i8*) #1

declare dso_local i64 @bundle_Phase(i32) #1

declare dso_local i32 @bundle_NewPhase(i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @Auth2Nam(i64, i32) #1

declare dso_local i32 @auth_StartReq(i32*) #1

declare dso_local i32 @datalink_AuthOk(%struct.datalink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
