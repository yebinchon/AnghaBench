; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_textconf_decode_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/linux_lvm/extr_g_linux_lvm.c_llvm_textconf_decode_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_llvm_lv = type { i32, i32, i32 }
%struct.g_llvm_segment = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_GLLVM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"stripe_count\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"stripes = [\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"start_extent\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"extent_count\00", align 1
@sg_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.g_llvm_lv*)* @llvm_textconf_decode_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llvm_textconf_decode_sg(i8** %0, i8* %1, %struct.g_llvm_lv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.g_llvm_lv*, align 8
  %8 = alloca %struct.g_llvm_segment*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.g_llvm_lv* %2, %struct.g_llvm_lv** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %171

22:                                               ; preds = %14
  %23 = load i32, i32* @M_GLLVM, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.g_llvm_segment* @malloc(i32 20, i32 %23, i32 %26)
  store %struct.g_llvm_segment* %27, %struct.g_llvm_segment** %8, align 8
  %28 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %29 = icmp eq %struct.g_llvm_segment* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %4, align 4
  br label %171

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %126, %110, %105, %32
  %34 = load i8**, i8*** %5, align 8
  %35 = call i8* @strsep(i8** %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %127

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strstr(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @SPLIT(i8* %42, i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @GRAB_INT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %167

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @strstr(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %167

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strstr(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %127

63:                                               ; preds = %58
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %106

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = call i8* @strsep(i8** %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %167

73:                                               ; preds = %67
  %74 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i8*, i8** %6, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %167

78:                                               ; preds = %73
  %79 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %167

83:                                               ; preds = %78
  %84 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %85 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @strncpy(i32 %86, i8* %87, i32 4)
  %89 = load i8*, i8** %6, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 44
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %167

94:                                               ; preds = %83
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @strtol(i8* %97, i8** %9, i32 10)
  %99 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %100 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = icmp eq i8* %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %167

105:                                              ; preds = %94
  br label %33

106:                                              ; preds = %63
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @strstr(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @SPLIT(i8* %111, i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %117 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @GRAB_INT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %114, i8* %115, i32 %118)
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %123 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @GRAB_INT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %120, i8* %121, i32 %124)
  br label %33

126:                                              ; preds = %106
  br label %33

127:                                              ; preds = %62, %33
  %128 = load i8*, i8** %6, align 8
  %129 = icmp eq i8* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %167

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 1
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %136 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134, %131
  br label %167

140:                                              ; preds = %134
  %141 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %142 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %145 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = sub nsw i32 %147, 1
  %149 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %150 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %7, align 8
  %152 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %156 = getelementptr inbounds %struct.g_llvm_segment, %struct.g_llvm_segment* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %7, align 8
  %159 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.g_llvm_lv*, %struct.g_llvm_lv** %7, align 8
  %163 = getelementptr inbounds %struct.g_llvm_lv, %struct.g_llvm_lv* %162, i32 0, i32 1
  %164 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %165 = load i32, i32* @sg_next, align 4
  %166 = call i32 @LIST_INSERT_HEAD(i32* %163, %struct.g_llvm_segment* %164, i32 %165)
  store i32 0, i32* %4, align 4
  br label %171

167:                                              ; preds = %139, %130, %104, %93, %82, %77, %72, %57, %51
  %168 = load %struct.g_llvm_segment*, %struct.g_llvm_segment** %8, align 8
  %169 = load i32, i32* @M_GLLVM, align 4
  %170 = call i32 @free(%struct.g_llvm_segment* %168, i32 %169)
  store i32 -1, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %140, %30, %20
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local %struct.g_llvm_segment* @malloc(i32, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @SPLIT(i8*, i8*, i8*) #1

declare dso_local i32 @GRAB_INT(i8*, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.g_llvm_segment*, i32) #1

declare dso_local i32 @free(%struct.g_llvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
