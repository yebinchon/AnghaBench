; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_real_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_real_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@newstyle = common dso_local global i32 0, align 4
@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@mtflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A_\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c" *argp, void *%s, struct svc_req *%s)\0A\00", align 1
@RESULT = common dso_local global i32 0, align 4
@RQSTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c" *argp, struct svc_req *%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\09return (\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"*argp, \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"argp->%s, \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s));\0A}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @write_real_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_real_program(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load i32, i32* @newstyle, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %159

9:                                                ; preds = %1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %3, align 8
  br label %15

15:                                               ; preds = %155, %9
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %159

18:                                               ; preds = %15
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %4, align 8
  br label %22

22:                                               ; preds = %150, %18
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = icmp ne %struct.TYPE_16__* %23, null
  br i1 %24, label %25, label %154

25:                                               ; preds = %22
  %26 = load i32, i32* @fout, align 4
  %27 = call i32 (i32, i8*, ...) @f_print(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @mtflag, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = call i32 @internal_proctype(%struct.TYPE_16__* %31)
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @fout, align 4
  %35 = call i32 (i32, i8*, ...) @f_print(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @fout, align 4
  %38 = call i32 (i32, i8*, ...) @f_print(i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pvname(i32 %41, i32 %44)
  %46 = load i32, i32* @fout, align 4
  %47 = call i32 (i32, i8*, ...) @f_print(i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %36
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @fout, align 4
  %58 = call i32 @fputs(i32 %56, i32 %57)
  br label %75

59:                                               ; preds = %36
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ptype(i32 %66, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %59, %52
  %76 = load i64, i64* @mtflag, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load i32, i32* @fout, align 4
  %80 = load i32, i32* @RESULT, align 4
  %81 = load i32, i32* @RQSTP, align 4
  %82 = call i32 (i32, i8*, ...) @f_print(i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %80, i32 %81)
  br label %87

83:                                               ; preds = %75
  %84 = load i32, i32* @fout, align 4
  %85 = load i32, i32* @RQSTP, align 4
  %86 = call i32 (i32, i8*, ...) @f_print(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* @fout, align 4
  %89 = call i32 (i32, i8*, ...) @f_print(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* @fout, align 4
  %91 = call i32 (i32, i8*, ...) @f_print(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pvname_svc(i32 %94, i32 %97)
  %99 = load i32, i32* @fout, align 4
  %100 = call i32 (i32, i8*, ...) @f_print(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %119

105:                                              ; preds = %87
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @streq(i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %105
  %116 = load i32, i32* @fout, align 4
  %117 = call i32 (i32, i8*, ...) @f_print(i32 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %105
  br label %139

119:                                              ; preds = %87
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  store %struct.TYPE_18__* %123, %struct.TYPE_18__** %5, align 8
  br label %124

124:                                              ; preds = %134, %119
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = icmp ne %struct.TYPE_18__* %125, null
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32, i32* @fout, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i8*, ...) @f_print(i32 %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %127
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  store %struct.TYPE_18__* %137, %struct.TYPE_18__** %5, align 8
  br label %124

138:                                              ; preds = %124
  br label %139

139:                                              ; preds = %138, %118
  %140 = load i64, i64* @mtflag, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* @fout, align 4
  %144 = load i32, i32* @RESULT, align 4
  %145 = call i32 (i32, i8*, ...) @f_print(i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %139
  %147 = load i32, i32* @fout, align 4
  %148 = load i32, i32* @RQSTP, align 4
  %149 = call i32 (i32, i8*, ...) @f_print(i32 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %146
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** %4, align 8
  br label %22

154:                                              ; preds = %22
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  store %struct.TYPE_15__* %158, %struct.TYPE_15__** %3, align 8
  br label %15

159:                                              ; preds = %8, %15
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @internal_proctype(%struct.TYPE_16__*) #1

declare dso_local i32 @pvname(i32, i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @ptype(i32, i32, i32) #1

declare dso_local i32 @pvname_svc(i32, i32) #1

declare dso_local i32 @streq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
