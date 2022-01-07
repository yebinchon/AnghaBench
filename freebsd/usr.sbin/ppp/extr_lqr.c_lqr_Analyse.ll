; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Analyse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Analyse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdlc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lqrdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LogLQM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Analysis:\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"  Outbound lossage: %d LQR%s (%d en route), %d packet%s, %d octet%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"  Inbound lossage: %d packet%s, %d octet%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"                   Likely due to both peer congestion and physical errors\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"                   Likely due to peer congestion\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"                   Likely due to physical errors\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"                   Likely due to transport congestion\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lqr_Analyse(%struct.hdlc* %0, %struct.lqrdata* %1, %struct.lqrdata* %2) #0 {
  %4 = alloca %struct.hdlc*, align 8
  %5 = alloca %struct.lqrdata*, align 8
  %6 = alloca %struct.lqrdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hdlc* %0, %struct.hdlc** %4, align 8
  store %struct.lqrdata* %1, %struct.lqrdata** %5, align 8
  store %struct.lqrdata* %2, %struct.lqrdata** %6, align 8
  %13 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %14 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %190

18:                                               ; preds = %3
  %19 = load i32, i32* @LogLQM, align 4
  %20 = call i32 (i32, i8*, ...) @log_Printf(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %22 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %25 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %29 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %32 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = sub nsw i32 %27, %34
  store i32 %35, i32* %7, align 4
  %36 = load %struct.hdlc*, %struct.hdlc** %4, align 8
  %37 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %42 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %46 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %49 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  %52 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %53 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %56 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = sub nsw i32 %51, %58
  store i32 %59, i32* %9, align 4
  %60 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %61 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %64 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %62, %65
  %67 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %68 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %71 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = sub nsw i32 %66, %73
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* @LogLQM, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %92 = call i32 (i32, i8*, ...) @log_Printf(i32 %75, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %76, i8* %80, i32 %81, i32 %82, i8* %86, i32 %87, i8* %91)
  %93 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %94 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %97 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = load %struct.hdlc*, %struct.hdlc** %4, align 8
  %101 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hdlc*, %struct.hdlc** %4, align 8
  %107 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %105, %111
  %113 = sub nsw i32 %99, %112
  store i32 %113, i32* %9, align 4
  %114 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %115 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %118 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = load %struct.hdlc*, %struct.hdlc** %4, align 8
  %122 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.hdlc*, %struct.hdlc** %4, align 8
  %128 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %126, %132
  %134 = sub nsw i32 %120, %133
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* @LogLQM, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 1
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 1
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %146 = call i32 (i32, i8*, ...) @log_Printf(i32 %135, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %136, i8* %140, i32 %141, i8* %145)
  %147 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %148 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %151 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  store i32 %153, i32* %11, align 4
  %154 = load %struct.lqrdata*, %struct.lqrdata** %6, align 8
  %155 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.lqrdata*, %struct.lqrdata** %5, align 8
  %158 = getelementptr inbounds %struct.lqrdata, %struct.lqrdata* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %156, %159
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %18
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @LogLQM, align 4
  %168 = call i32 (i32, i8*, ...) @log_Printf(i32 %167, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  br label %190

169:                                              ; preds = %163, %18
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @LogLQM, align 4
  %174 = call i32 (i32, i8*, ...) @log_Printf(i32 %173, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %189

175:                                              ; preds = %169
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* @LogLQM, align 4
  %180 = call i32 (i32, i8*, ...) @log_Printf(i32 %179, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  br label %188

181:                                              ; preds = %175
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* @LogLQM, align 4
  %186 = call i32 (i32, i8*, ...) @log_Printf(i32 %185, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  br label %187

187:                                              ; preds = %184, %181
  br label %188

188:                                              ; preds = %187, %178
  br label %189

189:                                              ; preds = %188, %172
  br label %190

190:                                              ; preds = %17, %189, %166
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
