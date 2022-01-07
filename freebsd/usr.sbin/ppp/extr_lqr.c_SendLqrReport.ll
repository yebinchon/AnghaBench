; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_SendLqrReport.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_SendLqrReport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcp = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.physical = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@LQM_LQR = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: ** Too many LQR packets lost **\0A\00", align 1
@LogLQM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: Too many LQR packets lost\0A\00", align 1
@CLOSE_NORMAL = common dso_local global i32 0, align 4
@LQM_ECHO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: ** Too many LCP ECHO packets lost **\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: Too many LCP ECHO packets lost\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @SendLqrReport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendLqrReport(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lcp*, align 8
  %4 = alloca %struct.physical*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lcp*
  store %struct.lcp* %6, %struct.lcp** %3, align 8
  %7 = load %struct.lcp*, %struct.lcp** %3, align 8
  %8 = getelementptr inbounds %struct.lcp, %struct.lcp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = call %struct.physical* @link2physical(%struct.TYPE_15__* %10)
  store %struct.physical* %11, %struct.physical** %4, align 8
  %12 = load %struct.physical*, %struct.physical** %4, align 8
  %13 = getelementptr inbounds %struct.physical, %struct.physical* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = call i32 @timer_Stop(%struct.TYPE_14__* %15)
  %17 = load %struct.physical*, %struct.physical** %4, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LQM_LQR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %70

25:                                               ; preds = %1
  %26 = load %struct.physical*, %struct.physical** %4, align 8
  %27 = getelementptr inbounds %struct.physical, %struct.physical* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 5
  br i1 %32, label %33, label %59

33:                                               ; preds = %25
  %34 = load i32, i32* @LogPHASE, align 4
  %35 = load %struct.lcp*, %struct.lcp** %3, align 8
  %36 = getelementptr inbounds %struct.lcp, %struct.lcp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @log_Printf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @LogLQM, align 4
  %43 = load %struct.lcp*, %struct.lcp** %3, align 8
  %44 = getelementptr inbounds %struct.lcp, %struct.lcp* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @log_Printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.physical*, %struct.physical** %4, align 8
  %51 = getelementptr inbounds %struct.physical, %struct.physical* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.physical*, %struct.physical** %4, align 8
  %55 = getelementptr inbounds %struct.physical, %struct.physical* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CLOSE_NORMAL, align 4
  %58 = call i32 @datalink_Down(i32 %56, i32 %57)
  br label %69

59:                                               ; preds = %25
  %60 = load %struct.lcp*, %struct.lcp** %3, align 8
  %61 = call i32 @SendLqrData(%struct.lcp* %60)
  %62 = load %struct.physical*, %struct.physical** %4, align 8
  %63 = getelementptr inbounds %struct.physical, %struct.physical* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %59, %33
  br label %156

70:                                               ; preds = %1
  %71 = load %struct.physical*, %struct.physical** %4, align 8
  %72 = getelementptr inbounds %struct.physical, %struct.physical* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @LQM_ECHO, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %155

79:                                               ; preds = %70
  %80 = load %struct.physical*, %struct.physical** %4, align 8
  %81 = getelementptr inbounds %struct.physical, %struct.physical* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 5
  br i1 %86, label %87, label %102

87:                                               ; preds = %79
  %88 = load %struct.physical*, %struct.physical** %4, align 8
  %89 = getelementptr inbounds %struct.physical, %struct.physical* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 5
  %95 = load %struct.physical*, %struct.physical** %4, align 8
  %96 = getelementptr inbounds %struct.physical, %struct.physical* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %94, %100
  br i1 %101, label %125, label %102

102:                                              ; preds = %87, %79
  %103 = load %struct.physical*, %struct.physical** %4, align 8
  %104 = getelementptr inbounds %struct.physical, %struct.physical* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sle i32 %108, 5
  br i1 %109, label %110, label %151

110:                                              ; preds = %102
  %111 = load %struct.physical*, %struct.physical** %4, align 8
  %112 = getelementptr inbounds %struct.physical, %struct.physical* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.physical*, %struct.physical** %4, align 8
  %118 = getelementptr inbounds %struct.physical, %struct.physical* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 5
  %124 = icmp sgt i32 %116, %123
  br i1 %124, label %125, label %151

125:                                              ; preds = %110, %87
  %126 = load i32, i32* @LogPHASE, align 4
  %127 = load %struct.lcp*, %struct.lcp** %3, align 8
  %128 = getelementptr inbounds %struct.lcp, %struct.lcp* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @log_Printf(i32 %126, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @LogLQM, align 4
  %135 = load %struct.lcp*, %struct.lcp** %3, align 8
  %136 = getelementptr inbounds %struct.lcp, %struct.lcp* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @log_Printf(i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %140)
  %142 = load %struct.physical*, %struct.physical** %4, align 8
  %143 = getelementptr inbounds %struct.physical, %struct.physical* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.physical*, %struct.physical** %4, align 8
  %147 = getelementptr inbounds %struct.physical, %struct.physical* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @CLOSE_NORMAL, align 4
  %150 = call i32 @datalink_Down(i32 %148, i32 %149)
  br label %154

151:                                              ; preds = %110, %102
  %152 = load %struct.lcp*, %struct.lcp** %3, align 8
  %153 = call i32 @SendEchoReq(%struct.lcp* %152)
  br label %154

154:                                              ; preds = %151, %125
  br label %155

155:                                              ; preds = %154, %70
  br label %156

156:                                              ; preds = %155, %69
  %157 = load %struct.physical*, %struct.physical** %4, align 8
  %158 = getelementptr inbounds %struct.physical, %struct.physical* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %156
  %164 = load %struct.physical*, %struct.physical** %4, align 8
  %165 = getelementptr inbounds %struct.physical, %struct.physical* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = load %struct.physical*, %struct.physical** %4, align 8
  %173 = getelementptr inbounds %struct.physical, %struct.physical* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = call i32 @timer_Start(%struct.TYPE_14__* %175)
  br label %177

177:                                              ; preds = %171, %163, %156
  ret void
}

declare dso_local %struct.physical* @link2physical(%struct.TYPE_15__*) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_14__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @datalink_Down(i32, i32) #1

declare dso_local i32 @SendLqrData(%struct.lcp*) #1

declare dso_local i32 @SendEchoReq(%struct.lcp*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
