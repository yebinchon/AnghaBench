; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_LayerUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_LayerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_12__, %struct.TYPE_15__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_10__ = type { i32 }
%struct.ipv6cp = type { %struct.TYPE_14__, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@NCP_ASCIIBUFFERSIZE = common dso_local global i32 0, align 4
@LogIPV6CP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: LayerUp.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"myaddr %s hisaddr = %s\0A\00", align 1
@RAD_START = common dso_local global i32 0, align 4
@OPT_IPCP = common dso_local global i32 0, align 4
@LINKUPFILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"MYADDR6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsm*)* @ipv6cp_LayerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6cp_LayerUp(%struct.fsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca %struct.ipv6cp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  %8 = load %struct.fsm*, %struct.fsm** %3, align 8
  %9 = call %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm* %8)
  store %struct.ipv6cp* %9, %struct.ipv6cp** %4, align 8
  %10 = load i32, i32* @NCP_ASCIIBUFFERSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @LogIPV6CP, align 4
  %15 = load %struct.fsm*, %struct.fsm** %3, align 8
  %16 = getelementptr inbounds %struct.fsm, %struct.fsm* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %24 = call i32 @ipv6cp_InterfaceUp(%struct.ipv6cp* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %162

27:                                               ; preds = %1
  %28 = trunc i64 %11 to i32
  %29 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %30 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %29, i32 0, i32 4
  %31 = call i8* @ncpaddr_ntoa(i32* %30)
  %32 = call i32 @snprintf(i8* %13, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @LogIPV6CP, align 4
  %34 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %35 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %34, i32 0, i32 3
  %36 = call i8* @ncpaddr_ntoa(i32* %35)
  %37 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %13, i8* %36)
  %38 = load %struct.fsm*, %struct.fsm** %3, align 8
  %39 = getelementptr inbounds %struct.fsm, %struct.fsm* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %43 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @radius_Account_Set_Ipv6(i32* %41, i32 %44)
  %46 = load %struct.fsm*, %struct.fsm** %3, align 8
  %47 = getelementptr inbounds %struct.fsm, %struct.fsm* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load %struct.fsm*, %struct.fsm** %3, align 8
  %51 = getelementptr inbounds %struct.fsm, %struct.fsm* %50, i32 0, i32 1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  %54 = load %struct.fsm*, %struct.fsm** %3, align 8
  %55 = getelementptr inbounds %struct.fsm, %struct.fsm* %54, i32 0, i32 1
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @RAD_START, align 4
  %60 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %61 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %60, i32 0, i32 1
  %62 = call i32 @radius_Account(%struct.TYPE_16__* %49, i32* %53, i32 %58, i32 %59, i32* %61)
  %63 = load %struct.fsm*, %struct.fsm** %3, align 8
  %64 = getelementptr inbounds %struct.fsm, %struct.fsm* %63, i32 0, i32 1
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i32, i32* @OPT_IPCP, align 4
  %67 = call i32 @Enabled(%struct.TYPE_15__* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %100, label %69

69:                                               ; preds = %27
  %70 = load %struct.fsm*, %struct.fsm** %3, align 8
  %71 = getelementptr inbounds %struct.fsm, %struct.fsm* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %69
  %80 = load %struct.fsm*, %struct.fsm** %3, align 8
  %81 = getelementptr inbounds %struct.fsm, %struct.fsm* %80, i32 0, i32 1
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %79
  %88 = load %struct.fsm*, %struct.fsm** %3, align 8
  %89 = getelementptr inbounds %struct.fsm, %struct.fsm* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load %struct.fsm*, %struct.fsm** %3, align 8
  %92 = getelementptr inbounds %struct.fsm, %struct.fsm* %91, i32 0, i32 1
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @LINKUPFILE, align 4
  %98 = call i64 @system_Select(%struct.TYPE_15__* %90, i8* %96, i32 %97, i32* null, i32* null)
  br label %99

99:                                               ; preds = %87, %79, %69
  br label %100

100:                                              ; preds = %99, %27
  %101 = load %struct.fsm*, %struct.fsm** %3, align 8
  %102 = getelementptr inbounds %struct.fsm, %struct.fsm* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = load i32, i32* @LINKUPFILE, align 4
  %105 = call i64 @system_Select(%struct.TYPE_15__* %103, i8* %13, i32 %104, i32* null, i32* null)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %100
  %108 = load %struct.fsm*, %struct.fsm** %3, align 8
  %109 = getelementptr inbounds %struct.fsm, %struct.fsm* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = call i8* @bundle_GetLabel(%struct.TYPE_15__* %110)
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %138

113:                                              ; preds = %107
  %114 = load %struct.fsm*, %struct.fsm** %3, align 8
  %115 = getelementptr inbounds %struct.fsm, %struct.fsm* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = load i32, i32* @OPT_IPCP, align 4
  %118 = call i32 @Enabled(%struct.TYPE_15__* %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %113
  %121 = load %struct.fsm*, %struct.fsm** %3, align 8
  %122 = getelementptr inbounds %struct.fsm, %struct.fsm* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load %struct.fsm*, %struct.fsm** %3, align 8
  %125 = getelementptr inbounds %struct.fsm, %struct.fsm* %124, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = call i8* @bundle_GetLabel(%struct.TYPE_15__* %126)
  %128 = load i32, i32* @LINKUPFILE, align 4
  %129 = call i64 @system_Select(%struct.TYPE_15__* %123, i8* %127, i32 %128, i32* null, i32* null)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.fsm*, %struct.fsm** %3, align 8
  %133 = getelementptr inbounds %struct.fsm, %struct.fsm* %132, i32 0, i32 1
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = load i32, i32* @LINKUPFILE, align 4
  %136 = call i64 @system_Select(%struct.TYPE_15__* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32* null, i32* null)
  br label %137

137:                                              ; preds = %131, %120
  br label %144

138:                                              ; preds = %113, %107
  %139 = load %struct.fsm*, %struct.fsm** %3, align 8
  %140 = getelementptr inbounds %struct.fsm, %struct.fsm* %139, i32 0, i32 1
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = load i32, i32* @LINKUPFILE, align 4
  %143 = call i64 @system_Select(%struct.TYPE_15__* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %142, i32* null, i32* null)
  br label %144

144:                                              ; preds = %138, %137
  br label %145

145:                                              ; preds = %144, %100
  %146 = load %struct.ipv6cp*, %struct.ipv6cp** %4, align 8
  %147 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %150, 3
  %152 = load %struct.fsm*, %struct.fsm** %3, align 8
  %153 = getelementptr inbounds %struct.fsm, %struct.fsm* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  store i32 %151, i32* %154, align 8
  %155 = load %struct.fsm*, %struct.fsm** %3, align 8
  %156 = getelementptr inbounds %struct.fsm, %struct.fsm* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store i32 %151, i32* %157, align 4
  %158 = load %struct.fsm*, %struct.fsm** %3, align 8
  %159 = getelementptr inbounds %struct.fsm, %struct.fsm* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i32 %151, i32* %160, align 8
  %161 = call i32 (...) @log_DisplayPrompts()
  store i32 1, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %162

162:                                              ; preds = %145, %26
  %163 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @ipv6cp_InterfaceUp(%struct.ipv6cp*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @ncpaddr_ntoa(i32*) #1

declare dso_local i32 @radius_Account_Set_Ipv6(i32*, i32) #1

declare dso_local i32 @radius_Account(%struct.TYPE_16__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @Enabled(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @system_Select(%struct.TYPE_15__*, i8*, i32, i32*, i32*) #1

declare dso_local i8* @bundle_GetLabel(%struct.TYPE_15__*) #1

declare dso_local i32 @log_DisplayPrompts(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
