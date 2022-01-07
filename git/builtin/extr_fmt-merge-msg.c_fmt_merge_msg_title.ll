; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_fmt_merge_msg_title.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_fmt_merge_msg_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.src_data* }
%struct.src_data = type { i32, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Merge \00", align 1
@srcs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"branch \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"branches \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"remote-tracking branch \00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"remote-tracking branches \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tag \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"tags \00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"commit \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"commits \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c" of %s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c" into %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @fmt_merge_msg_title to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_merge_msg_title(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.src_data*, align 8
  %8 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %10 = call i32 @strbuf_addstr(%struct.strbuf* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %121, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srcs, i32 0, i32 0), align 8
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %124

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srcs, i32 0, i32 1), align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.src_data*, %struct.src_data** %20, align 8
  store %struct.src_data* %21, %struct.src_data** %7, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strbuf_addstr(%struct.strbuf* %22, i8* %23)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %25 = load %struct.src_data*, %struct.src_data** %7, align 8
  %26 = getelementptr inbounds %struct.src_data, %struct.src_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  %30 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srcs, i32 0, i32 1), align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %30, i8* %36)
  br label %121

38:                                               ; preds = %15
  %39 = load %struct.src_data*, %struct.src_data** %7, align 8
  %40 = getelementptr inbounds %struct.src_data, %struct.src_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %44 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.src_data*, %struct.src_data** %7, align 8
  %48 = getelementptr inbounds %struct.src_data, %struct.src_data* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @strbuf_addstr(%struct.strbuf* %53, i8* %54)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %56 = load %struct.src_data*, %struct.src_data** %7, align 8
  %57 = getelementptr inbounds %struct.src_data, %struct.src_data* %56, i32 0, i32 4
  %58 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %59 = call i32 @print_joined(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_6__* %57, %struct.strbuf* %58)
  br label %60

60:                                               ; preds = %52, %46
  %61 = load %struct.src_data*, %struct.src_data** %7, align 8
  %62 = getelementptr inbounds %struct.src_data, %struct.src_data* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @strbuf_addstr(%struct.strbuf* %67, i8* %68)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %70 = load %struct.src_data*, %struct.src_data** %7, align 8
  %71 = getelementptr inbounds %struct.src_data, %struct.src_data* %70, i32 0, i32 3
  %72 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %73 = call i32 @print_joined(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_6__* %71, %struct.strbuf* %72)
  br label %74

74:                                               ; preds = %66, %60
  %75 = load %struct.src_data*, %struct.src_data** %7, align 8
  %76 = getelementptr inbounds %struct.src_data, %struct.src_data* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @strbuf_addstr(%struct.strbuf* %81, i8* %82)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %84 = load %struct.src_data*, %struct.src_data** %7, align 8
  %85 = getelementptr inbounds %struct.src_data, %struct.src_data* %84, i32 0, i32 2
  %86 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %87 = call i32 @print_joined(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_6__* %85, %struct.strbuf* %86)
  br label %88

88:                                               ; preds = %80, %74
  %89 = load %struct.src_data*, %struct.src_data** %7, align 8
  %90 = getelementptr inbounds %struct.src_data, %struct.src_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = call i32 @strbuf_addstr(%struct.strbuf* %95, i8* %96)
  %98 = load %struct.src_data*, %struct.src_data** %7, align 8
  %99 = getelementptr inbounds %struct.src_data, %struct.src_data* %98, i32 0, i32 1
  %100 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %101 = call i32 @print_joined(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_6__* %99, %struct.strbuf* %100)
  br label %102

102:                                              ; preds = %94, %88
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srcs, i32 0, i32 1), align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @srcs, i32 0, i32 1), align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strbuf_addf(%struct.strbuf* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %111, %102
  br label %121

121:                                              ; preds = %120, %29
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %11

124:                                              ; preds = %11
  %125 = load i8*, i8** %4, align 8
  %126 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %124
  %129 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %130 = call i32 @strbuf_addch(%struct.strbuf* %129, i8 signext 10)
  br label %135

131:                                              ; preds = %124
  %132 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @strbuf_addf(%struct.strbuf* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %131, %128
  ret void
}

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @print_joined(i8*, i8*, %struct.TYPE_6__*, %struct.strbuf*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
