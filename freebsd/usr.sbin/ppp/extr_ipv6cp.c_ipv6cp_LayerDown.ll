; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_LayerDown.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ipv6cp.c_ipv6cp_LayerDown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 }
%struct.ipv6cp = type { i32, i32 }

@ipv6cp_LayerDown.recursing = internal global i32 0, align 4
@NCP_ASCIIBUFFERSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LogIPV6CP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: LayerDown: %s\0A\00", align 1
@RAD_STOP = common dso_local global i32 0, align 4
@OPT_IPCP = common dso_local global i32 0, align 4
@LINKDOWNFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MYADDR6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @ipv6cp_LayerDown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6cp_LayerDown(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.ipv6cp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %6 = load %struct.fsm*, %struct.fsm** %2, align 8
  %7 = call %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm* %6)
  store %struct.ipv6cp* %7, %struct.ipv6cp** %3, align 8
  %8 = load i32, i32* @NCP_ASCIIBUFFERSIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @ipv6cp_LayerDown.recursing, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @ipv6cp_LayerDown.recursing, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %135, label %15

15:                                               ; preds = %1
  %16 = trunc i64 %9 to i32
  %17 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %18 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %17, i32 0, i32 1
  %19 = call i8* @ncpaddr_ntoa(i32* %18)
  %20 = call i32 @snprintf(i8* %11, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @LogIPV6CP, align 4
  %22 = load %struct.fsm*, %struct.fsm** %2, align 8
  %23 = getelementptr inbounds %struct.fsm, %struct.fsm* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @log_Printf(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %11)
  %28 = load %struct.fsm*, %struct.fsm** %2, align 8
  %29 = getelementptr inbounds %struct.fsm, %struct.fsm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = call i32 @radius_Flush(%struct.TYPE_11__* %31)
  %33 = load %struct.fsm*, %struct.fsm** %2, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.fsm*, %struct.fsm** %2, align 8
  %38 = getelementptr inbounds %struct.fsm, %struct.fsm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load %struct.fsm*, %struct.fsm** %2, align 8
  %42 = getelementptr inbounds %struct.fsm, %struct.fsm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @RAD_STOP, align 4
  %47 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %48 = getelementptr inbounds %struct.ipv6cp, %struct.ipv6cp* %47, i32 0, i32 0
  %49 = call i32 @radius_Account(%struct.TYPE_11__* %36, i32* %40, i32 %45, i32 %46, i32* %48)
  %50 = load %struct.fsm*, %struct.fsm** %2, align 8
  %51 = getelementptr inbounds %struct.fsm, %struct.fsm* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = load i32, i32* @OPT_IPCP, align 4
  %54 = call i32 @Enabled(%struct.TYPE_10__* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %87, label %56

56:                                               ; preds = %15
  %57 = load %struct.fsm*, %struct.fsm** %2, align 8
  %58 = getelementptr inbounds %struct.fsm, %struct.fsm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %56
  %67 = load %struct.fsm*, %struct.fsm** %2, align 8
  %68 = getelementptr inbounds %struct.fsm, %struct.fsm* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %66
  %75 = load %struct.fsm*, %struct.fsm** %2, align 8
  %76 = getelementptr inbounds %struct.fsm, %struct.fsm* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.fsm*, %struct.fsm** %2, align 8
  %79 = getelementptr inbounds %struct.fsm, %struct.fsm* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* @LINKDOWNFILE, align 4
  %85 = call i64 @system_Select(%struct.TYPE_10__* %77, i8* %83, i32 %84, i32* null, i32* null)
  br label %86

86:                                               ; preds = %74, %66, %56
  br label %87

87:                                               ; preds = %86, %15
  %88 = load %struct.fsm*, %struct.fsm** %2, align 8
  %89 = getelementptr inbounds %struct.fsm, %struct.fsm* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* @LINKDOWNFILE, align 4
  %92 = call i64 @system_Select(%struct.TYPE_10__* %90, i8* %11, i32 %91, i32* null, i32* null)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %87
  %95 = load %struct.fsm*, %struct.fsm** %2, align 8
  %96 = getelementptr inbounds %struct.fsm, %struct.fsm* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = call i8* @bundle_GetLabel(%struct.TYPE_10__* %97)
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = load %struct.fsm*, %struct.fsm** %2, align 8
  %102 = getelementptr inbounds %struct.fsm, %struct.fsm* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* @OPT_IPCP, align 4
  %105 = call i32 @Enabled(%struct.TYPE_10__* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %100
  %108 = load %struct.fsm*, %struct.fsm** %2, align 8
  %109 = getelementptr inbounds %struct.fsm, %struct.fsm* %108, i32 0, i32 0
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load %struct.fsm*, %struct.fsm** %2, align 8
  %112 = getelementptr inbounds %struct.fsm, %struct.fsm* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = call i8* @bundle_GetLabel(%struct.TYPE_10__* %113)
  %115 = load i32, i32* @LINKDOWNFILE, align 4
  %116 = call i64 @system_Select(%struct.TYPE_10__* %110, i8* %114, i32 %115, i32* null, i32* null)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %107
  %119 = load %struct.fsm*, %struct.fsm** %2, align 8
  %120 = getelementptr inbounds %struct.fsm, %struct.fsm* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load i32, i32* @LINKDOWNFILE, align 4
  %123 = call i64 @system_Select(%struct.TYPE_10__* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32* null, i32* null)
  br label %124

124:                                              ; preds = %118, %107
  br label %131

125:                                              ; preds = %100, %94
  %126 = load %struct.fsm*, %struct.fsm** %2, align 8
  %127 = getelementptr inbounds %struct.fsm, %struct.fsm* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load i32, i32* @LINKDOWNFILE, align 4
  %130 = call i64 @system_Select(%struct.TYPE_10__* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %129, i32* null, i32* null)
  br label %131

131:                                              ; preds = %125, %124
  br label %132

132:                                              ; preds = %131, %87
  %133 = load %struct.ipv6cp*, %struct.ipv6cp** %3, align 8
  %134 = call i32 @ipv6cp_Setup(%struct.ipv6cp* %133)
  br label %135

135:                                              ; preds = %132, %1
  %136 = load i32, i32* @ipv6cp_LayerDown.recursing, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* @ipv6cp_LayerDown.recursing, align 4
  %138 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %138)
  ret void
}

declare dso_local %struct.ipv6cp* @fsm2ipv6cp(%struct.fsm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @ncpaddr_ntoa(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @radius_Flush(%struct.TYPE_11__*) #1

declare dso_local i32 @radius_Account(%struct.TYPE_11__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @Enabled(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @system_Select(%struct.TYPE_10__*, i8*, i32, i32*, i32*) #1

declare dso_local i8* @bundle_GetLabel(%struct.TYPE_10__*) #1

declare dso_local i32 @ipv6cp_Setup(%struct.ipv6cp*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
