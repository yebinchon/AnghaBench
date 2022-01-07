; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_tc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timecounter = type { i32, i32, i32, i8*, i32 (%struct.timecounter*)*, %struct.timecounter* }
%struct.sysctl_oid = type { i32 }

@hz = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Timecounter \22%s\22 frequency %ju Hz\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c" -- Insufficient hz, needs at least %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Timecounter \22%s\22 frequency %ju Hz quality %d\0A\00", align 1
@timecounters = common dso_local global %struct.timecounter* null, align 8
@_kern_timecounter_tc = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"timecounter description\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"timecounter\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"mask for implemented bits\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@sysctl_kern_timecounter_get = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"current timecounter value\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@CTLTYPE_U64 = common dso_local global i32 0, align 4
@sysctl_kern_timecounter_freq = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"QU\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"timecounter frequency\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"goodness of time counter\00", align 1
@tc_chosen = common dso_local global i64 0, align 8
@timecounter = common dso_local global %struct.timecounter* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tc_init(%struct.timecounter* %0) #0 {
  %2 = alloca %struct.timecounter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.timecounter* %0, %struct.timecounter** %2, align 8
  %5 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %6 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %9 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 10
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @hz, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %21 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %26 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %25, i32 0, i32 2
  store i32 -2000, i32* %26, align 8
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %31 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %34 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %29, %24
  br label %60

40:                                               ; preds = %19, %1
  %41 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %42 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45, %40
  %49 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %50 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %53 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %56 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %45
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.timecounter*, %struct.timecounter** @timecounters, align 8
  %62 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %63 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %62, i32 0, i32 5
  store %struct.timecounter* %61, %struct.timecounter** %63, align 8
  %64 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  store %struct.timecounter* %64, %struct.timecounter** @timecounters, align 8
  %65 = load i32, i32* @_kern_timecounter_tc, align 4
  %66 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %65)
  %67 = load i32, i32* @OID_AUTO, align 4
  %68 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %69 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @CTLFLAG_RW, align 4
  %72 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE_WITH_LABEL(i32* null, i32 %66, i32 %67, i8* %70, i32 %71, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %72, %struct.sysctl_oid** %4, align 8
  %73 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %74 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %73)
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLFLAG_RD, align 4
  %77 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %78 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %77, i32 0, i32 1
  %79 = call i32 @SYSCTL_ADD_UINT(i32* null, i32 %74, i32 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32* %78, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %80 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %81 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %80)
  %82 = load i32, i32* @OID_AUTO, align 4
  %83 = load i32, i32* @CTLTYPE_UINT, align 4
  %84 = load i32, i32* @CTLFLAG_RD, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %87 = load i32, i32* @sysctl_kern_timecounter_get, align 4
  %88 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %81, i32 %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %85, %struct.timecounter* %86, i32 40, i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %89 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %90 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %89)
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLTYPE_U64, align 4
  %93 = load i32, i32* @CTLFLAG_RD, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %96 = load i32, i32* @sysctl_kern_timecounter_freq, align 4
  %97 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %90, i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %94, %struct.timecounter* %95, i32 40, i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %98 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %99 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %98)
  %100 = load i32, i32* @OID_AUTO, align 4
  %101 = load i32, i32* @CTLFLAG_RD, align 4
  %102 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %103 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %102, i32 0, i32 2
  %104 = call i32 @SYSCTL_ADD_INT(i32* null, i32 %99, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %101, i32* %103, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %105 = load i64, i64* @tc_chosen, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %60
  br label %152

108:                                              ; preds = %60
  %109 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %110 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %152

114:                                              ; preds = %108
  %115 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %116 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.timecounter*, %struct.timecounter** @timecounter, align 8
  %119 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %152

123:                                              ; preds = %114
  %124 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %125 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.timecounter*, %struct.timecounter** @timecounter, align 8
  %128 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %123
  %132 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %133 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.timecounter*, %struct.timecounter** @timecounter, align 8
  %136 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %152

140:                                              ; preds = %131, %123
  %141 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %142 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %141, i32 0, i32 4
  %143 = load i32 (%struct.timecounter*)*, i32 (%struct.timecounter*)** %142, align 8
  %144 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %145 = call i32 %143(%struct.timecounter* %144)
  %146 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %147 = getelementptr inbounds %struct.timecounter, %struct.timecounter* %146, i32 0, i32 4
  %148 = load i32 (%struct.timecounter*)*, i32 (%struct.timecounter*)** %147, align 8
  %149 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  %150 = call i32 %148(%struct.timecounter* %149)
  %151 = load %struct.timecounter*, %struct.timecounter** %2, align 8
  store %struct.timecounter* %151, %struct.timecounter** @timecounter, align 8
  br label %152

152:                                              ; preds = %140, %139, %122, %113, %107
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE_WITH_LABEL(i32*, i32, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.timecounter*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
