; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcp = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.physical = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i8*, i32, %struct.lcp*, i32 }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@LQM_ECHO = common dso_local global i32 0, align 4
@TY_QUALPROTO = common dso_local global i32 0, align 4
@LQM_LQR = common dso_local global i32 0, align 4
@LogLQM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Expecting LQR every %d.%02d secs\0A\00", align 1
@SendLqrReport = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"lqm\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: Will send %s every %d.%02d secs\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"LQR\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"LCP ECHO\00", align 1
@SECTICKS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: LQR/LCP ECHO not negotiated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcp*)* @lqr_Setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lqr_Setup(%struct.lcp* %0) #0 {
  %2 = alloca %struct.lcp*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca i32, align 4
  store %struct.lcp* %0, %struct.lcp** %2, align 8
  %5 = load %struct.lcp*, %struct.lcp** %2, align 8
  %6 = getelementptr inbounds %struct.lcp, %struct.lcp* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.physical* @link2physical(i32 %8)
  store %struct.physical* %9, %struct.physical** %3, align 8
  %10 = load %struct.physical*, %struct.physical** %3, align 8
  %11 = getelementptr inbounds %struct.physical, %struct.physical* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.physical*, %struct.physical** %3, align 8
  %16 = getelementptr inbounds %struct.physical, %struct.physical* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.physical*, %struct.physical** %3, align 8
  %21 = getelementptr inbounds %struct.physical, %struct.physical* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.physical*, %struct.physical** %3, align 8
  %26 = getelementptr inbounds %struct.physical, %struct.physical* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = call i32 @memset(i32* %29, i8 signext 0, i32 4)
  %31 = load %struct.lcp*, %struct.lcp** %2, align 8
  %32 = getelementptr inbounds %struct.lcp, %struct.lcp* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @LQM_ECHO, align 4
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load %struct.physical*, %struct.physical** %3, align 8
  %42 = getelementptr inbounds %struct.physical, %struct.physical* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.lcp*, %struct.lcp** %2, align 8
  %46 = getelementptr inbounds %struct.lcp, %struct.lcp* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IsEnabled(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %39
  %52 = load %struct.lcp*, %struct.lcp** %2, align 8
  %53 = load i32, i32* @TY_QUALPROTO, align 4
  %54 = call i32 @REJECTED(%struct.lcp* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @LQM_LQR, align 4
  %58 = load %struct.physical*, %struct.physical** %3, align 8
  %59 = getelementptr inbounds %struct.physical, %struct.physical* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %56, %51, %39
  %65 = load %struct.physical*, %struct.physical** %3, align 8
  %66 = getelementptr inbounds %struct.physical, %struct.physical* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = call i32 @timer_Stop(%struct.TYPE_16__* %68)
  %70 = load %struct.lcp*, %struct.lcp** %2, align 8
  %71 = getelementptr inbounds %struct.lcp, %struct.lcp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.physical*, %struct.physical** %3, align 8
  %74 = getelementptr inbounds %struct.physical, %struct.physical* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  %78 = load %struct.lcp*, %struct.lcp** %2, align 8
  %79 = getelementptr inbounds %struct.lcp, %struct.lcp* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %64
  %83 = load i32, i32* @LogLQM, align 4
  %84 = load %struct.physical*, %struct.physical** %3, align 8
  %85 = getelementptr inbounds %struct.physical, %struct.physical* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.lcp*, %struct.lcp** %2, align 8
  %89 = getelementptr inbounds %struct.lcp, %struct.lcp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 100
  %92 = load %struct.lcp*, %struct.lcp** %2, align 8
  %93 = getelementptr inbounds %struct.lcp, %struct.lcp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = srem i32 %94, 100
  %96 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %82, %64
  %98 = load %struct.lcp*, %struct.lcp** %2, align 8
  %99 = getelementptr inbounds %struct.lcp, %struct.lcp* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load %struct.lcp*, %struct.lcp** %2, align 8
  %104 = getelementptr inbounds %struct.lcp, %struct.lcp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  br label %112

106:                                              ; preds = %97
  %107 = load %struct.lcp*, %struct.lcp** %2, align 8
  %108 = getelementptr inbounds %struct.lcp, %struct.lcp* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 100
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i32 [ %105, %102 ], [ %111, %106 ]
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @SendLqrReport, align 4
  %115 = load %struct.physical*, %struct.physical** %3, align 8
  %116 = getelementptr inbounds %struct.physical, %struct.physical* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  store i32 %114, i32* %119, align 8
  %120 = load %struct.physical*, %struct.physical** %3, align 8
  %121 = getelementptr inbounds %struct.physical, %struct.physical* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %124, align 8
  %125 = load %struct.lcp*, %struct.lcp** %2, align 8
  %126 = load %struct.physical*, %struct.physical** %3, align 8
  %127 = getelementptr inbounds %struct.physical, %struct.physical* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  store %struct.lcp* %125, %struct.lcp** %130, align 8
  %131 = load %struct.lcp*, %struct.lcp** %2, align 8
  %132 = getelementptr inbounds %struct.lcp, %struct.lcp* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %112
  %136 = load %struct.physical*, %struct.physical** %3, align 8
  %137 = getelementptr inbounds %struct.physical, %struct.physical* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @LQM_ECHO, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %170

144:                                              ; preds = %135, %112
  %145 = load i32, i32* @LogLQM, align 4
  %146 = load %struct.physical*, %struct.physical** %3, align 8
  %147 = getelementptr inbounds %struct.physical, %struct.physical* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.lcp*, %struct.lcp** %2, align 8
  %151 = getelementptr inbounds %struct.lcp, %struct.lcp* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %156 = load i32, i32* %4, align 4
  %157 = sdiv i32 %156, 100
  %158 = load i32, i32* %4, align 4
  %159 = srem i32 %158, 100
  %160 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %149, i8* %155, i32 %157, i32 %159)
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @SECTICKS, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sdiv i32 %163, 100
  %165 = load %struct.physical*, %struct.physical** %3, align 8
  %166 = getelementptr inbounds %struct.physical, %struct.physical* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  store i32 %164, i32* %169, align 8
  br label %188

170:                                              ; preds = %135
  %171 = load %struct.physical*, %struct.physical** %3, align 8
  %172 = getelementptr inbounds %struct.physical, %struct.physical* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  store i32 0, i32* %175, align 8
  %176 = load %struct.lcp*, %struct.lcp** %2, align 8
  %177 = getelementptr inbounds %struct.lcp, %struct.lcp* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %170
  %181 = load i32, i32* @LogLQM, align 4
  %182 = load %struct.physical*, %struct.physical** %3, align 8
  %183 = getelementptr inbounds %struct.physical, %struct.physical* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %180, %170
  br label %188

188:                                              ; preds = %187, %144
  ret void
}

declare dso_local %struct.physical* @link2physical(i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i64 @IsEnabled(i32) #1

declare dso_local i32 @REJECTED(%struct.lcp*, i32) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_16__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
