; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipcp.c_ipcp_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipcp = type { i32*, i32, %struct.TYPE_14__, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64, i32, %struct.in_addr, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.in_addr = type { i8* }
%struct.bundle = type { i32 }
%struct.link = type { i32 }
%struct.fsm_parent = type { i32 }
%struct.hostent = type { i64, i32, i32 }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@ipcp_Init.timer_names = internal constant [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [13 x i8] c"IPCP restart\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"IPCP openmode\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"IPCP stopped\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"IPCP\00", align 1
@PROTO_IPCP = common dso_local global i32 0, align 4
@IPCP_MAXCODE = common dso_local global i32 0, align 4
@LogIPCP = common dso_local global i32 0, align 4
@ipcp_Callbacks = common dso_local global i32 0, align 4
@DEF_VJ_STATES = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INADDR_NONE = common dso_local global i8* null, align 8
@DEF_FSMRETRY = common dso_local global i32 0, align 4
@DEF_FSMTRIES = common dso_local global i8* null, align 8
@NEG_ENABLED = common dso_local global i32 0, align 4
@NEG_ACCEPTED = common dso_local global i32 0, align 4
@SAMPLE_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipcp_Init(%struct.ipcp* %0, %struct.bundle* %1, %struct.link* %2, %struct.fsm_parent* %3) #0 {
  %5 = alloca %struct.ipcp*, align 8
  %6 = alloca %struct.bundle*, align 8
  %7 = alloca %struct.link*, align 8
  %8 = alloca %struct.fsm_parent*, align 8
  %9 = alloca %struct.hostent*, align 8
  %10 = alloca %struct.in_addr, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.ipcp* %0, %struct.ipcp** %5, align 8
  store %struct.bundle* %1, %struct.bundle** %6, align 8
  store %struct.link* %2, %struct.link** %7, align 8
  store %struct.fsm_parent* %3, %struct.fsm_parent** %8, align 8
  %13 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %18 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %17, i32 0, i32 5
  %19 = load i32, i32* @PROTO_IPCP, align 4
  %20 = load i32, i32* @IPCP_MAXCODE, align 4
  %21 = load i32, i32* @LogIPCP, align 4
  %22 = load %struct.bundle*, %struct.bundle** %6, align 8
  %23 = load %struct.link*, %struct.link** %7, align 8
  %24 = load %struct.fsm_parent*, %struct.fsm_parent** %8, align 8
  %25 = call i32 @fsm_Init(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 1, i32 %20, i32 %21, %struct.bundle* %22, %struct.link* %23, %struct.fsm_parent* %24, i32* @ipcp_Callbacks, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @ipcp_Init.timer_names, i64 0, i64 0))
  %26 = load i32, i32* @DEF_VJ_STATES, align 4
  %27 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %28 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store i32 %26, i32* %30, align 8
  %31 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %32 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %36 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 7
  %38 = call i32 @memset(i32* %37, i8 signext 0, i32 4)
  %39 = load i32, i32* @INADDR_LOOPBACK, align 4
  %40 = call i8* @htonl(i32 %39)
  %41 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** @INADDR_ANY, align 8
  %43 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %44 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %45, i32 0, i32 0
  store i8* %42, i8** %46, align 8
  %47 = trunc i64 %14 to i32
  %48 = call i64 @gethostname(i8* %16, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %4
  %51 = call %struct.hostent* @gethostbyname(i8* %16)
  store %struct.hostent* %51, %struct.hostent** %9, align 8
  %52 = load %struct.hostent*, %struct.hostent** %9, align 8
  %53 = icmp ne %struct.hostent* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %50
  %55 = load %struct.hostent*, %struct.hostent** %9, align 8
  %56 = getelementptr inbounds %struct.hostent, %struct.hostent* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AF_INET, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.hostent*, %struct.hostent** %9, align 8
  %62 = getelementptr inbounds %struct.hostent, %struct.hostent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %68 = load %struct.hostent*, %struct.hostent** %9, align 8
  %69 = getelementptr inbounds %struct.hostent, %struct.hostent* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i8** %67, i32 %70, i32 8)
  br label %72

72:                                               ; preds = %66, %60, %54, %50
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %75 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 7
  %77 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %78 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %10, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %79, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @ncprange_setip4(i32* %76, i8* %81, i8* %83)
  %85 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %86 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 6
  %88 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %89 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 5
  %91 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %92 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %90, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %93, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @ncprange_setip4(i32* %87, i8* %95, i8* %97)
  %99 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %100 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 4
  %102 = call i32 @iplist_setsrc(i32* %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %104 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load i8*, i8** @INADDR_NONE, align 8
  %107 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %108 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i8* %106, i8** %113, align 8
  %114 = load i8*, i8** @INADDR_NONE, align 8
  %115 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %116 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i8* %114, i8** %121, align 8
  %122 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %123 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load i8*, i8** @INADDR_ANY, align 8
  %127 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %128 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i8* %126, i8** %133, align 8
  %134 = load i8*, i8** @INADDR_ANY, align 8
  %135 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %136 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 1
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i8* %134, i8** %141, align 8
  %142 = load i32, i32* @DEF_FSMRETRY, align 4
  %143 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %144 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  store i32 %142, i32* %146, align 8
  %147 = load i8*, i8** @DEF_FSMTRIES, align 8
  %148 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %149 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  store i8* %147, i8** %151, align 8
  %152 = load i8*, i8** @DEF_FSMTRIES, align 8
  %153 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %154 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i8* %152, i8** %156, align 8
  %157 = load i32, i32* @NEG_ENABLED, align 4
  %158 = load i32, i32* @NEG_ACCEPTED, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %161 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  store i32 %159, i32* %163, align 4
  %164 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %165 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %164, i32 0, i32 3
  %166 = call i32 @memset(i32* %165, i8 signext 0, i32 4)
  %167 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %168 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  store i32* null, i32** %169, align 8
  %170 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %171 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  store i32* null, i32** %172, align 8
  %173 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %174 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  store i32 1, i32* %175, align 8
  %176 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %177 = call i32 @ipcp_LoadDNS(%struct.ipcp* %176)
  %178 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %179 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %178, i32 0, i32 1
  %180 = load i32, i32* @SAMPLE_PERIOD, align 4
  %181 = call i32 @throughput_init(i32* %179, i32 %180)
  %182 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %183 = getelementptr inbounds %struct.ipcp, %struct.ipcp* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @memset(i32* %184, i8 signext 0, i32 8)
  %186 = load %struct.ipcp*, %struct.ipcp** %5, align 8
  %187 = load i8*, i8** @INADDR_NONE, align 8
  %188 = call i32 @ipcp_Setup(%struct.ipcp* %186, i8* %187)
  %189 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %189)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fsm_Init(i32*, i8*, i32, i32, i32, i32, %struct.bundle*, %struct.link*, %struct.fsm_parent*, i32*, i8**) #2

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i8* @htonl(i32) #2

declare dso_local i64 @gethostname(i8*, i32) #2

declare dso_local %struct.hostent* @gethostbyname(i8*) #2

declare dso_local i32 @memcpy(i8**, i32, i32) #2

declare dso_local i32 @ncprange_setip4(i32*, i8*, i8*) #2

declare dso_local i32 @iplist_setsrc(i32*, i8*) #2

declare dso_local i32 @ipcp_LoadDNS(%struct.ipcp*) #2

declare dso_local i32 @throughput_init(i32*, i32) #2

declare dso_local i32 @ipcp_Setup(%struct.ipcp*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
