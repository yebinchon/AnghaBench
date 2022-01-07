; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_2400.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_2400.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i64, i64 }

@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"NVRAM 0x%08x%08x 0x%08x%08x exchg_cnt %d maxframelen %d\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"NVRAM execthr %d loopid %d fwopt1 0x%x fwopt2 0x%x fwopt3 0x%x\00", align 1
@ISP_CFG_OWNFSZ = common dso_local global i32 0, align 4
@ISP_CFG_OWNLOOPID = common dso_local global i32 0, align 4
@ISP_CFG_OWNEXCTHROTTLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @isp_parse_nvram_2400 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_parse_nvram_2400(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = call %struct.TYPE_8__* @FCPARAM(%struct.TYPE_7__* %9, i32 0)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ISP2400_NVRAM_NODE_NAME(i32* %13)
  %15 = ashr i32 %14, 32
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ISP2400_NVRAM_NODE_NAME(i32* %16)
  %18 = sext i32 %17 to i64
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @ISP2400_NVRAM_PORT_NAME(i32* %19)
  %21 = ashr i32 %20, 32
  %22 = sext i32 %21 to i64
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ISP2400_NVRAM_PORT_NAME(i32* %23)
  %25 = sext i32 %24 to i64
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @ISP2400_NVRAM_EXCHANGE_COUNT(i32* %26)
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ISP2400_NVRAM_MAXFRAMELENGTH(i32* %29)
  %31 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, i64, i64, i64, i32, ...) @isp_prt(%struct.TYPE_7__* %11, i32 %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18, i64 %22, i64 %25, i32 %28, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ISP2400_NVRAM_EXECUTION_THROTTLE(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @ISP2400_NVRAM_HARDLOOPID(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i64 @ISP2400_NVRAM_FIRMWARE_OPTIONS1(i32* %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @ISP2400_NVRAM_FIRMWARE_OPTIONS2(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ISP2400_NVRAM_FIRMWARE_OPTIONS3(i32* %42)
  %44 = call i32 (%struct.TYPE_7__*, i32, i8*, i32, i64, i64, i64, i32, ...) @isp_prt(%struct.TYPE_7__* %32, i32 %33, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %35, i64 %37, i64 %39, i64 %41, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ISP2400_NVRAM_PORT_NAME(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @ISP2400_NVRAM_NODE_NAME(i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 60
  %57 = icmp ne i32 %56, 2
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = ashr i32 %59, 60
  %61 = icmp ne i32 %60, 5
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %58, %54
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 60
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, undef
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %73, %67, %64
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @ISP2400_NVRAM_EXCHANGE_COUNT(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load i32*, i32** %4, align 8
  %88 = call i64 @ISP2400_NVRAM_EXCHANGE_COUNT(i32* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 6
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %79
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ISP_CFG_OWNFSZ, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @ISP2400_NVRAM_MAXFRAMELENGTH(i32* %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ISP_CFG_OWNLOOPID, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i32*, i32** %4, align 8
  %110 = call i64 @ISP2400_NVRAM_HARDLOOPID(i32* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 5
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %108, %101
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ISP_CFG_OWNEXCTHROTTLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @ISP2400_NVRAM_EXECUTION_THROTTLE(i32* %121)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %113
  %124 = load i32*, i32** %4, align 8
  %125 = call i64 @ISP2400_NVRAM_FIRMWARE_OPTIONS1(i32* %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i64 @ISP2400_NVRAM_FIRMWARE_OPTIONS2(i32* %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @ISP2400_NVRAM_FIRMWARE_OPTIONS3(i32* %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  ret void
}

declare dso_local %struct.TYPE_8__* @FCPARAM(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @isp_prt(%struct.TYPE_7__*, i32, i8*, i32, i64, i64, i64, i32, ...) #1

declare dso_local i32 @ISP2400_NVRAM_NODE_NAME(i32*) #1

declare dso_local i32 @ISP2400_NVRAM_PORT_NAME(i32*) #1

declare dso_local i64 @ISP2400_NVRAM_EXCHANGE_COUNT(i32*) #1

declare dso_local i32 @ISP2400_NVRAM_MAXFRAMELENGTH(i32*) #1

declare dso_local i32 @ISP2400_NVRAM_EXECUTION_THROTTLE(i32*) #1

declare dso_local i64 @ISP2400_NVRAM_HARDLOOPID(i32*) #1

declare dso_local i64 @ISP2400_NVRAM_FIRMWARE_OPTIONS1(i32*) #1

declare dso_local i64 @ISP2400_NVRAM_FIRMWARE_OPTIONS2(i32*) #1

declare dso_local i32 @ISP2400_NVRAM_FIRMWARE_OPTIONS3(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
