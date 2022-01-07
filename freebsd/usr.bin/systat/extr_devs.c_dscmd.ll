; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dscmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_devs.c_dscmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statinfo = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@DS_SELECT_ADDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@DS_SELECT_REMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"only\00", align 1
@DS_SELECT_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@dev_select = common dso_local global i32 0, align 4
@num_selected = common dso_local global i32 0, align 4
@num_selections = common dso_local global i32 0, align 4
@select_generation = common dso_local global i32 0, align 4
@generation = common dso_local global i32 0, align 4
@num_devices = common dso_local global i32 0, align 4
@last_type = common dso_local global i64 0, align 8
@DS_MATCHTYPE_PATTERN = common dso_local global i64 0, align 8
@matches = common dso_local global i32* null, align 8
@num_matches = common dso_local global i32 0, align 4
@DS_MATCHTYPE_SPEC = common dso_local global i64 0, align 8
@specified_devices = common dso_local global i32* null, align 8
@num_devices_specified = common dso_local global i32 0, align 4
@DS_MATCHTYPE_NONE = common dso_local global i64 0, align 8
@DS_SELECT_ADD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@devstat_errbuf = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"drives\00", align 1
@CMDLINE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"%s%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dscmd(i8* %0, i8* %1, i32 %2, %struct.statinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.statinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.statinfo* %3, %struct.statinfo** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @prefix(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @prefix(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @DS_SELECT_ADDONLY, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %24 = call i32 @dsselect(i8* %20, i32 %21, i32 %22, %struct.statinfo* %23)
  store i32 %24, i32* %5, align 4
  br label %172

25:                                               ; preds = %15
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @prefix(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @prefix(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @DS_SELECT_REMOVE, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %38 = call i32 @dsselect(i8* %34, i32 %35, i32 %36, %struct.statinfo* %37)
  store i32 %38, i32* %5, align 4
  br label %172

39:                                               ; preds = %29
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @prefix(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @prefix(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %39
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @DS_SELECT_ONLY, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %52 = call i32 @dsselect(i8* %48, i32 %49, i32 %50, %struct.statinfo* %51)
  store i32 %52, i32* %5, align 4
  br label %172

53:                                               ; preds = %43
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @prefix(i8* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @prefix(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57, %53
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @DS_SELECT_ONLY, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %66 = call i32 @dsmatchselect(i8* %62, i32 %63, i32 %64, %struct.statinfo* %65)
  store i32 %66, i32* %5, align 4
  br label %172

67:                                               ; preds = %57
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @prefix(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load i32, i32* @generation, align 4
  %73 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %74 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* @num_devices, align 4
  %79 = load i64, i64* @last_type, align 8
  %80 = load i64, i64* @DS_MATCHTYPE_PATTERN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32*, i32** @matches, align 8
  br label %85

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32* [ %83, %82 ], [ null, %84 ]
  %87 = load i64, i64* @last_type, align 8
  %88 = load i64, i64* @DS_MATCHTYPE_PATTERN, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @num_matches, align 4
  br label %93

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = load i64, i64* @last_type, align 8
  %96 = load i64, i64* @DS_MATCHTYPE_SPEC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32*, i32** @specified_devices, align 8
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32* [ %99, %98 ], [ null, %100 ]
  %103 = load i64, i64* @last_type, align 8
  %104 = load i64, i64* @DS_MATCHTYPE_SPEC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @num_devices_specified, align 4
  br label %109

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = load i64, i64* @last_type, align 8
  %112 = load i64, i64* @DS_MATCHTYPE_NONE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @DS_SELECT_ADD, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @DS_SELECT_ADDONLY, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @devstat_selectdevs(i32* @dev_select, i32* @num_selected, i32* @num_selections, i32* @select_generation, i32 %72, %struct.TYPE_4__* %77, i32 %78, i32* %86, i32 %94, i32* %102, i32 %110, i32 %119, i32 %120, i32 0)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @devstat_errbuf, align 4
  %126 = call i32 @warnx(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %125)
  store i32 0, i32* %5, align 4
  br label %172

127:                                              ; preds = %118
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 2, i32* %5, align 4
  br label %172

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %67
  %134 = load i8*, i8** %6, align 8
  %135 = call i64 @prefix(i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %133
  %138 = load i32, i32* @CMDLINE, align 4
  %139 = call i32 @move(i32 %138, i32 0)
  %140 = call i32 (...) @clrtoeol()
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %167, %137
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @num_devices, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %141
  %146 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %147 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.statinfo*, %struct.statinfo** %9, align 8
  %157 = getelementptr inbounds %struct.statinfo, %struct.statinfo* %156, i32 0, i32 0
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @printw(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %155, i32 %165)
  br label %167

167:                                              ; preds = %145
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %141

170:                                              ; preds = %141
  store i32 1, i32* %5, align 4
  br label %172

171:                                              ; preds = %133
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %170, %130, %124, %61, %47, %33, %19
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i64 @prefix(i8*, i8*) #1

declare dso_local i32 @dsselect(i8*, i32, i32, %struct.statinfo*) #1

declare dso_local i32 @dsmatchselect(i8*, i32, i32, %struct.statinfo*) #1

declare dso_local i32 @devstat_selectdevs(i32*, i32*, i32*, i32*, i32, %struct.TYPE_4__*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @printw(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
