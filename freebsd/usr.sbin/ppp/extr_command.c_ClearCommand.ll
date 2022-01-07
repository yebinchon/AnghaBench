; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ClearCommand.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_ClearCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32, i32*, %struct.TYPE_14__*, %struct.datalink* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.pppThroughput }
%struct.pppThroughput = type { i32 }
%struct.TYPE_11__ = type { %struct.pppThroughput }
%struct.datalink = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.pppThroughput }

@.str = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"A link must be specified for ``clear physical''\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ipcp\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ipv6cp\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"overall\00", align 1
@THROUGHPUT_OVERALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@THROUGHPUT_CURRENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"peak\00", align 1
@THROUGHPUT_PEAK = common dso_local global i32 0, align 4
@THROUGHPUT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @ClearCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClearCommand(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.pppThroughput*, align 8
  %5 = alloca %struct.datalink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %12 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %173

17:                                               ; preds = %1
  %18 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %19 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %22 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @strcasecmp(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %17
  %30 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %31 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %30, i32 0, i32 5
  %32 = load %struct.datalink*, %struct.datalink** %31, align 8
  store %struct.datalink* %32, %struct.datalink** %5, align 8
  %33 = load %struct.datalink*, %struct.datalink** %5, align 8
  %34 = icmp ne %struct.datalink* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %37 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %36, i32 0, i32 4
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = call %struct.datalink* @bundle2datalink(%struct.TYPE_14__* %38, i32* null)
  store %struct.datalink* %39, %struct.datalink** %5, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.datalink*, %struct.datalink** %5, align 8
  %42 = icmp ne %struct.datalink* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @LogWARN, align 4
  %45 = call i32 @log_Printf(i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %173

46:                                               ; preds = %40
  %47 = load %struct.datalink*, %struct.datalink** %5, align 8
  %48 = getelementptr inbounds %struct.datalink, %struct.datalink* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store %struct.pppThroughput* %52, %struct.pppThroughput** %4, align 8
  br label %94

53:                                               ; preds = %17
  %54 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %55 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %58 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strcasecmp(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %67 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %66, i32 0, i32 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store %struct.pppThroughput* %71, %struct.pppThroughput** %4, align 8
  br label %93

72:                                               ; preds = %53
  %73 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %74 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %77 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @strcasecmp(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %72
  %85 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %86 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %85, i32 0, i32 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store %struct.pppThroughput* %90, %struct.pppThroughput** %4, align 8
  br label %92

91:                                               ; preds = %72
  store i32 -1, i32* %2, align 4
  br label %173

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93, %46
  %95 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %96 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %99 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  %102 = icmp sgt i32 %97, %101
  br i1 %102, label %103, label %164

103:                                              ; preds = %94
  store i32 0, i32* %7, align 4
  %104 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %105 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %160, %103
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %111 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %163

114:                                              ; preds = %108
  %115 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %116 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @strcasecmp(i32 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %114
  %125 = load i32, i32* @THROUGHPUT_OVERALL, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  br label %159

128:                                              ; preds = %114
  %129 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %130 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @strcasecmp(i32 %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load i32, i32* @THROUGHPUT_CURRENT, align 4
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  br label %158

142:                                              ; preds = %128
  %143 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %144 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @strcasecmp(i32 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %142
  %153 = load i32, i32* @THROUGHPUT_PEAK, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %157

156:                                              ; preds = %142
  store i32 -1, i32* %2, align 4
  br label %173

157:                                              ; preds = %152
  br label %158

158:                                              ; preds = %157, %138
  br label %159

159:                                              ; preds = %158, %124
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %108

163:                                              ; preds = %108
  br label %166

164:                                              ; preds = %94
  %165 = load i32, i32* @THROUGHPUT_ALL, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %164, %163
  %167 = load %struct.pppThroughput*, %struct.pppThroughput** %4, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %170 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @throughput_clear(%struct.pppThroughput* %167, i32 %168, i32 %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %166, %156, %91, %43, %16
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local %struct.datalink* @bundle2datalink(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @throughput_clear(%struct.pppThroughput*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
