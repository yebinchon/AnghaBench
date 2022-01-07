; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_2100.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_2100.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }

@ISP_LOGCONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NVRAM Port WWN 0x%08x%08x\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"NVRAM Node WWN 0x%08x%08x\00", align 1
@ISP_CFG_OWNFSZ = common dso_local global i32 0, align 4
@ISP_CFG_OWNLOOPID = common dso_local global i32 0, align 4
@ISP_CFG_OWNEXCTHROTTLE = common dso_local global i32 0, align 4
@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"NVRAM 0x%08x%08x 0x%08x%08x maxalloc %d maxframelen %d\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"execthrottle %d fwoptions 0x%x hardloop %d tov %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"xfwoptions 0x%x zfw options 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @isp_parse_nvram_2100 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_parse_nvram_2100(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = call %struct.TYPE_10__* @FCPARAM(%struct.TYPE_9__* %9, i32 0)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ISP2100_NVRAM_PORT_NAME(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* @ISP_LOGCONFIG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 32
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (%struct.TYPE_9__*, i32, i8*, i8*, i8*, ...) @isp_prt(%struct.TYPE_9__* %16, i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24)
  %26 = load i32, i32* %6, align 4
  %27 = ashr i32 %26, 60
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, undef
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %15
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = call i64 @IS_2200(%struct.TYPE_9__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = call i64 @IS_23XX(%struct.TYPE_9__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %40, %33
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @ISP2100_NVRAM_NODE_NAME(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load i32, i32* @ISP_LOGCONFIG, align 4
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 32
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (%struct.TYPE_9__*, i32, i8*, i8*, i8*, ...) @isp_prt(%struct.TYPE_9__* %50, i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %58)
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, undef
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %49
  br label %72

67:                                               ; preds = %44
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, undef
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %67, %66
  br label %76

73:                                               ; preds = %40
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, undef
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %72
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @ISP2100_NVRAM_MAXIOCBALLOCATION(i32* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ISP_CFG_OWNFSZ, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @ISP2100_NVRAM_MAXFRAMELENGTH(i32* %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90, %76
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @ISP2100_NVRAM_RETRY_DELAY(i32* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @ISP2100_NVRAM_RETRY_COUNT(i32* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ISP_CFG_OWNLOOPID, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %93
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @ISP2100_NVRAM_HARDLOOPID(i32* %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %93
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ISP_CFG_OWNEXCTHROTTLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @ISP2100_NVRAM_EXECUTION_THROTTLE(i32* %121)
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %113
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @ISP2100_NVRAM_OPTIONS(i32* %124)
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %129 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 32
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = ashr i32 %143, 32
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @ISP2100_NVRAM_MAXIOCBALLOCATION(i32* %152)
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @ISP2100_NVRAM_MAXFRAMELENGTH(i32* %154)
  %156 = call i32 (%struct.TYPE_9__*, i32, i8*, i8*, i8*, ...) @isp_prt(%struct.TYPE_9__* %128, i32 %129, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %135, i8* %140, i8* %146, i8* %151, i32 %153, i32 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @ISP2100_NVRAM_EXECUTION_THROTTLE(i32* %159)
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @ISP2100_NVRAM_OPTIONS(i32* %163)
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @ISP2100_NVRAM_HARDLOOPID(i32* %167)
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @ISP2100_NVRAM_TOV(i32* %169)
  %171 = call i32 (%struct.TYPE_9__*, i32, i8*, i8*, i8*, ...) @isp_prt(%struct.TYPE_9__* %157, i32 %158, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %162, i8* %166, i32 %168, i32 %170)
  %172 = load i32*, i32** %4, align 8
  %173 = call i8* @ISP2100_XFW_OPTIONS(i32* %172)
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 3
  store i8* %173, i8** %175, align 8
  %176 = load i32*, i32** %4, align 8
  %177 = call i8* @ISP2100_ZFW_OPTIONS(i32* %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %181 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %182 = load i32*, i32** %4, align 8
  %183 = call i8* @ISP2100_XFW_OPTIONS(i32* %182)
  %184 = load i32*, i32** %4, align 8
  %185 = call i8* @ISP2100_ZFW_OPTIONS(i32* %184)
  %186 = call i32 (%struct.TYPE_9__*, i32, i8*, i8*, i8*, ...) @isp_prt(%struct.TYPE_9__* %180, i32 %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %183, i8* %185)
  ret void
}

declare dso_local %struct.TYPE_10__* @FCPARAM(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ISP2100_NVRAM_PORT_NAME(i32*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_9__*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i64 @IS_2200(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_23XX(%struct.TYPE_9__*) #1

declare dso_local i32 @ISP2100_NVRAM_NODE_NAME(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_MAXIOCBALLOCATION(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_MAXFRAMELENGTH(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_RETRY_DELAY(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_RETRY_COUNT(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_HARDLOOPID(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_EXECUTION_THROTTLE(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_OPTIONS(i32*) #1

declare dso_local i32 @ISP2100_NVRAM_TOV(i32*) #1

declare dso_local i8* @ISP2100_XFW_OPTIONS(i32*) #1

declare dso_local i8* @ISP2100_ZFW_OPTIONS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
