; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_tok_getnumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw_queues.c_tok_getnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"$ncpu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"$ncpu1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"$nwq\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"$maxmrq\00", align 1
@OCS_HW_MAX_MRQS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"$nulp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"$rpt0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"$rpt1\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"$rpt2\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"$rpt3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_9__*)* @tok_getnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tok_getnumber(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @ocs_get_num_cpus()
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %178 [
    i32 128, label %13
    i32 129, label %173
  ]

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ocs_strcmp(i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %7, align 4
  br label %172

21:                                               ; preds = %13
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ocs_strcmp(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %171

30:                                               ; preds = %21
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ocs_strcmp(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %36
  br label %170

45:                                               ; preds = %30
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ocs_strcmp(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @OCS_HW_MAX_MRQS, align 4
  %54 = call i32 @MIN(i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  br label %169

55:                                               ; preds = %45
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ocs_strcmp(i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = add nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  br label %168

71:                                               ; preds = %55
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ocs_strcmp(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  br label %167

93:                                               ; preds = %76, %71
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ocs_strcmp(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %7, align 4
  br label %166

115:                                              ; preds = %98, %93
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 2
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ocs_strcmp(i32 %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %7, align 4
  br label %165

137:                                              ; preds = %120, %115
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 3
  br i1 %141, label %142, label %159

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ocs_strcmp(i32 %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %151, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %7, align 4
  br label %164

159:                                              ; preds = %142, %137
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ocs_strtoul(i32 %162, i32 0, i32 0)
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %159, %148
  br label %165

165:                                              ; preds = %164, %126
  br label %166

166:                                              ; preds = %165, %104
  br label %167

167:                                              ; preds = %166, %82
  br label %168

168:                                              ; preds = %167, %61
  br label %169

169:                                              ; preds = %168, %51
  br label %170

170:                                              ; preds = %169, %44
  br label %171

171:                                              ; preds = %170, %27
  br label %172

172:                                              ; preds = %171, %19
  br label %179

173:                                              ; preds = %3
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ocs_strtoul(i32 %176, i32 0, i32 0)
  store i32 %177, i32* %7, align 4
  br label %179

178:                                              ; preds = %3
  br label %179

179:                                              ; preds = %178, %173, %172
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

declare dso_local i32 @ocs_get_num_cpus(...) #1

declare dso_local i32 @ocs_strcmp(i32, i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ocs_strtoul(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
