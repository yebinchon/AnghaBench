; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_scan_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_scan_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@LOOP_LTEST_DONE = common dso_local global i64 0, align 8
@LOOP_LSCAN_DONE = common dso_local global i64 0, align 8
@ISP_LOG_SANCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Chan %d FC loop scan\00", align 1
@LOOP_SCANNING_LOOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Chan %d FC loop scan done (no loop)\00", align 1
@ISP_FC_SCRLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Chan %d Getting list of handles failed with %x\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Chan %d FC loop scan done (bad)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Chan %d Got %d handles\00", align 1
@NPH_RESERVED = common dso_local global i32 0, align 4
@FL_ID = common dso_local global i32 0, align 4
@SNS_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Chan %d FC loop scan aborted\00", align 1
@INI_NONE = common dso_local global i64 0, align 8
@ISP_LOGDEBUG1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Chan %d FC Scan Loop handle %d returned %x\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Chan %d FC loop scan done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @isp_scan_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_scan_loop(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_3__* @FCPARAM(i32* %14, i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LOOP_LTEST_DONE, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %200

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LOOP_LSCAN_DONE, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %200

30:                                               ; preds = %23
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %31, i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* @LOOP_SCANNING_LOOP, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @TOPO_IS_FABRIC(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %30
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @IS_24XX(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @isp_fix_portids(i32* %48, i32 %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LOOP_SCANNING_LOOP, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %146

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %59, i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @LOOP_LSCAN_DONE, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  store i32 0, i32* %3, align 4
  br label %200

66:                                               ; preds = %30
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %11, align 8
  %71 = load i32, i32* @ISP_FC_SCRLEN, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %8, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @isp_gethandles(i32* %73, i32 %74, i32* %75, i32* %8, i32 1)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %66
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %80, i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %85, i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  store i32 -1, i32* %3, align 4
  br label %200

89:                                               ; preds = %66
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %90, i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @isp_mark_portdb(i32* %95, i32 %96)
  store i32 0, i32* %7, align 4
  br label %98

98:                                               ; preds = %182, %89
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %185

102:                                              ; preds = %98
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %12, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = call i64 @ISP_CAP_2KLOGIN(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %102
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @NPH_RESERVED, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %182

116:                                              ; preds = %111
  br label %127

117:                                              ; preds = %102
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @FL_ID, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @SNS_ID, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %182

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %116
  %128 = load i32*, i32** %4, align 8
  %129 = call i64 @IS_2100(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32*, i32** %4, align 8
  %133 = call i64 @IS_2200(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %131, %127
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i64 @isp_get_wwn(i32* %136, i32 %137, i32 %138, i32 1)
  store i64 %139, i64* %13, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @LOOP_SCANNING_LOOP, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %191, %167, %145, %56
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %147, i32 %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  store i32 1, i32* %3, align 4
  br label %200

151:                                              ; preds = %135
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @INI_NONE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %182

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %131
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @isp_getpdb(i32* %158, i32 %159, i32 %160, i32* %10)
  store i32 %161, i32* %9, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @LOOP_SCANNING_LOOP, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %146

168:                                              ; preds = %157
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i32*, i32** %4, align 8
  %173 = load i32, i32* @ISP_LOGDEBUG1, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %172, i32 %173, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %174, i32 %175, i32 %176)
  br label %182

178:                                              ; preds = %168
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @isp_pdb_add_update(i32* %179, i32 %180, i32* %10)
  br label %182

182:                                              ; preds = %178, %171, %155, %125, %115
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %98

185:                                              ; preds = %98
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @LOOP_SCANNING_LOOP, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %146

192:                                              ; preds = %185
  %193 = load i64, i64* @LOOP_LSCAN_DONE, align 8
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load i32*, i32** %4, align 8
  %197 = load i32, i32* @ISP_LOG_SANCFG, align 4
  %198 = load i32, i32* %5, align 4
  %199 = call i32 (i32*, i32, i8*, i32, ...) @isp_prt(i32* %196, i32 %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %192, %146, %79, %58, %29, %22
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_3__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, i32, ...) #1

declare dso_local i64 @TOPO_IS_FABRIC(i32) #1

declare dso_local i32 @IS_24XX(i32*) #1

declare dso_local i32 @isp_fix_portids(i32*, i32) #1

declare dso_local i32 @isp_gethandles(i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @isp_mark_portdb(i32*, i32) #1

declare dso_local i64 @ISP_CAP_2KLOGIN(i32*) #1

declare dso_local i64 @IS_2100(i32*) #1

declare dso_local i64 @IS_2200(i32*) #1

declare dso_local i64 @isp_get_wwn(i32*, i32, i32, i32) #1

declare dso_local i32 @isp_getpdb(i32*, i32, i32, i32*) #1

declare dso_local i32 @isp_pdb_add_update(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
