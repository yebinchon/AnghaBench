; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpSendConfigReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_IpcpSendConfigReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, i32 }
%struct.physical = type { i32 }
%struct.ipcp = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.compreq }
%struct.compreq = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.compreq }
%struct.fsm_opt = type { i32 }

@MAX_FSM_OPT_LEN = common dso_local global i32 0, align 4
@TY_IPADDR = common dso_local global i64 0, align 8
@TY_COMPPROTO = common dso_local global i64 0, align 8
@PROTO_VJCOMP = common dso_local global i32 0, align 4
@TY_PRIMARY_DNS = common dso_local global i64 0, align 8
@TY_ADJUST_NS = common dso_local global i64 0, align 8
@TY_SECONDARY_DNS = common dso_local global i64 0, align 8
@CODE_CONFIGREQ = common dso_local global i32 0, align 4
@MB_IPCPOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @IpcpSendConfigReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IpcpSendConfigReq(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.ipcp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fsm_opt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.compreq, align 4
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %10 = load %struct.fsm*, %struct.fsm** %2, align 8
  %11 = getelementptr inbounds %struct.fsm, %struct.fsm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.physical* @link2physical(i32 %12)
  store %struct.physical* %13, %struct.physical** %3, align 8
  %14 = load %struct.fsm*, %struct.fsm** %2, align 8
  %15 = call %struct.ipcp* @fsm2ipcp(%struct.fsm* %14)
  store %struct.ipcp* %15, %struct.ipcp** %4, align 8
  %16 = load i32, i32* @MAX_FSM_OPT_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = bitcast i32* %19 to %struct.fsm_opt*
  store %struct.fsm_opt* %20, %struct.fsm_opt** %7, align 8
  %21 = load %struct.physical*, %struct.physical** %3, align 8
  %22 = icmp ne %struct.physical* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.physical*, %struct.physical** %3, align 8
  %25 = call i32 @physical_IsSync(%struct.physical* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23, %1
  %28 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %29 = load i64, i64* @TY_IPADDR, align 8
  %30 = call i32 @REJECTED(%struct.ipcp* %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %34 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %37 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @memcpy(i32 %35, %struct.compreq* %38, i32 4)
  %40 = load i64, i64* @TY_IPADDR, align 8
  %41 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %42 = call i32 @INC_FSM_OPT(i64 %40, i32 6, %struct.fsm_opt* %41)
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %45 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %43
  %49 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %50 = load i64, i64* @TY_COMPPROTO, align 8
  %51 = call i32 @REJECTED(%struct.ipcp* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %93, label %53

53:                                               ; preds = %48
  %54 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %55 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i32, i32* @PROTO_VJCOMP, align 4
  store i32 %59, i32* %8, align 4
  %60 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %61 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ua_htons(i32* %8, i32 %62)
  %64 = load i64, i64* @TY_COMPPROTO, align 8
  %65 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %66 = call i32 @INC_FSM_OPT(i64 %64, i32 4, %struct.fsm_opt* %65)
  br label %92

67:                                               ; preds = %53
  %68 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %69 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 16
  %72 = call i32 @htons(i32 %71)
  %73 = getelementptr inbounds %struct.compreq, %struct.compreq* %9, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %75 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = getelementptr inbounds %struct.compreq, %struct.compreq* %9, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %81 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 1
  %84 = getelementptr inbounds %struct.compreq, %struct.compreq* %9, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %86 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32 %87, %struct.compreq* %9, i32 4)
  %89 = load i64, i64* @TY_COMPPROTO, align 8
  %90 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %91 = call i32 @INC_FSM_OPT(i64 %89, i32 6, %struct.fsm_opt* %90)
  br label %92

92:                                               ; preds = %67, %58
  br label %93

93:                                               ; preds = %92, %48, %43
  %94 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %95 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @IsEnabled(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %93
  %102 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %103 = load i64, i64* @TY_PRIMARY_DNS, align 8
  %104 = load i64, i64* @TY_ADJUST_NS, align 8
  %105 = sub nsw i64 %103, %104
  %106 = call i32 @REJECTED(%struct.ipcp* %102, i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %101
  %109 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %110 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %113 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = call i32 @memcpy(i32 %111, %struct.compreq* %117, i32 4)
  %119 = load i64, i64* @TY_PRIMARY_DNS, align 8
  %120 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %121 = call i32 @INC_FSM_OPT(i64 %119, i32 6, %struct.fsm_opt* %120)
  br label %122

122:                                              ; preds = %108, %101
  %123 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %124 = load i64, i64* @TY_SECONDARY_DNS, align 8
  %125 = load i64, i64* @TY_ADJUST_NS, align 8
  %126 = sub nsw i64 %124, %125
  %127 = call i32 @REJECTED(%struct.ipcp* %123, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %122
  %130 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %131 = getelementptr inbounds %struct.fsm_opt, %struct.fsm_opt* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ipcp*, %struct.ipcp** %4, align 8
  %134 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = call i32 @memcpy(i32 %132, %struct.compreq* %138, i32 4)
  %140 = load i64, i64* @TY_SECONDARY_DNS, align 8
  %141 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %142 = call i32 @INC_FSM_OPT(i64 %140, i32 6, %struct.fsm_opt* %141)
  br label %143

143:                                              ; preds = %129, %122
  br label %144

144:                                              ; preds = %143, %93
  %145 = load %struct.fsm*, %struct.fsm** %2, align 8
  %146 = load i32, i32* @CODE_CONFIGREQ, align 4
  %147 = load %struct.fsm*, %struct.fsm** %2, align 8
  %148 = getelementptr inbounds %struct.fsm, %struct.fsm* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fsm_opt*, %struct.fsm_opt** %7, align 8
  %151 = bitcast %struct.fsm_opt* %150 to i32*
  %152 = ptrtoint i32* %151 to i64
  %153 = ptrtoint i32* %19 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = load i32, i32* @MB_IPCPOUT, align 4
  %158 = call i32 @fsm_Output(%struct.fsm* %145, i32 %146, i32 %149, i32* %19, i32 %156, i32 %157)
  %159 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %159)
  ret void
}

declare dso_local %struct.physical* @link2physical(i32) #1

declare dso_local %struct.ipcp* @fsm2ipcp(%struct.fsm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @REJECTED(%struct.ipcp*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.compreq*, i32) #1

declare dso_local i32 @INC_FSM_OPT(i64, i32, %struct.fsm_opt*) #1

declare dso_local i32 @ua_htons(i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @IsEnabled(i32) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
