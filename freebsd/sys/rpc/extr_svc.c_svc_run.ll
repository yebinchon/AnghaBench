; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, %struct.TYPE_8__*, %struct.proc*, i32 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i8* }

@curproc = common dso_local global %struct.proc* null, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s: master\00", align 1
@SVCPOOL_ACTIVE = common dso_local global i32 0, align 4
@SVC_MAXGROUPS = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"svcexit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_run(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %8, %struct.proc** %5, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %6, align 8
  %10 = load %struct.thread*, %struct.thread** %6, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @snprintf(i32 %12, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @SVCPOOL_ACTIVE, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 8
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  store %struct.proc* %20, %struct.proc** %22, align 8
  %23 = load i32, i32* @SVC_MAXGROUPS, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  %28 = load i32, i32* @mp_ncpus, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  %30 = sdiv i32 %29, 6
  %31 = call i32 @min(i32 %23, i32 %30)
  %32 = call i8* @max(i32 1, i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %73, %1
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %51, %54
  %56 = call i8* @max(i32 1, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sdiv i32 %62, %65
  %67 = call i8* @max(i32 1, i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @time_uptime, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %42
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %36

76:                                               ; preds = %36
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %114, %76
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %117

90:                                               ; preds = %84
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %7, align 8
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %110, %90
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = call i32 @svc_new_thread(%struct.TYPE_8__* %108)
  br label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %101

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %84

117:                                              ; preds = %84
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 0
  %122 = load i32, i32* @TRUE, align 4
  %123 = call i32 @svc_run_internal(%struct.TYPE_8__* %121, i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %154, %117
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %124
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %135
  store %struct.TYPE_8__* %136, %struct.TYPE_8__** %7, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = call i32 @mtx_lock(i32* %138)
  br label %140

140:                                              ; preds = %145, %130
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = call i32 @msleep(%struct.TYPE_8__* %146, i32* %148, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %140

150:                                              ; preds = %140
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = call i32 @mtx_unlock(i32* %152)
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %124

157:                                              ; preds = %124
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @svc_new_thread(%struct.TYPE_8__*) #1

declare dso_local i32 @svc_run_internal(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @msleep(%struct.TYPE_8__*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
