; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_printself.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_printself.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.pmcpl_ct_node = type { i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_7__*, i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"ob=%s\0A\00", align 1
@PMCPL_PCT_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"fl=%s\0Afn=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fl=???\0Afn=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fl=???\0Afn=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%p %u\00", align 1
@pmcstat_npmcs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcpl_ct_node*)* @pmcpl_ct_node_printself to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_node_printself(%struct.pmcpl_ct_node* %0) #0 {
  %2 = alloca %struct.pmcpl_ct_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pmcpl_ct_node* %0, %struct.pmcpl_ct_node** %2, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %20 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %21 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %20, i32 0, i32 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @pmcstat_string_unintern(i32 %24)
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %28 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %27, i32 0, i32 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %33 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %7, align 8
  store i32 0, i32* %5, align 4
  %36 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %37 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PMCPL_PCT_NAME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %1
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %43 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %44 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @pmcstat_string_unintern(i32 %45)
  %47 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %48 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @pmcstat_string_unintern(i32 %49)
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %50)
  br label %93

52:                                               ; preds = %1
  %53 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %54 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %53, i32 0, i32 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %13 to i32
  %58 = trunc i64 %17 to i32
  %59 = call i64 @pmcstat_image_addr2line(%struct.TYPE_7__* %55, i64 %56, i8* %15, i32 %57, i32* %5, i8* %18, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %18)
  br label %92

64:                                               ; preds = %52
  %65 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %66 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %65, i32 0, i32 6
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %71 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %72 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %71, i32 0, i32 6
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @pmcstat_string_unintern(i32 %75)
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  br label %91

78:                                               ; preds = %64
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %80 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %81 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %86 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = inttoptr i64 %88 to i8*
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  br label %91

91:                                               ; preds = %78, %69
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %41
  %94 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %95 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %158

98:                                               ; preds = %93
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %154, %98
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %102 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %157

105:                                              ; preds = %99
  %106 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %107 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %106, i32 0, i32 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %112 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %111, i32 0, i32 3
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %110, %118
  store i64 %119, i64* %8, align 8
  store i32 0, i32* %6, align 4
  %120 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %121 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %120, i32 0, i32 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = trunc i64 %13 to i32
  %125 = trunc i64 %17 to i32
  %126 = call i64 @pmcstat_image_addr2line(%struct.TYPE_7__* %122, i64 %123, i8* %15, i32 %124, i32* %6, i8* %18, i32 %125)
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %128 = load i64, i64* %8, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load i32, i32* %6, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %129, i32 %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %148, %105
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @pmcstat_npmcs, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %138 = load i32, i32* %4, align 4
  %139 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %140 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = call i32 @PMCPL_CT_SAMPLE(i32 %138, i32* %145)
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %132

151:                                              ; preds = %132
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %99

157:                                              ; preds = %99
  br label %181

158:                                              ; preds = %93
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %160 = load i64, i64* %7, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = load i32, i32* %5, align 4
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %161, i32 %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %175, %158
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @pmcstat_npmcs, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %172 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %171, i32 0, i32 2
  %173 = call i32 @PMCPL_CT_SAMPLE(i32 %170, i32* %172)
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  br label %164

178:                                              ; preds = %164
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %157
  %182 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %2, align 8
  %183 = load i64, i64* %7, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @pmcpl_ct_node_printchild(%struct.pmcpl_ct_node* %182, i64 %183, i32 %184)
  %186 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %186)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @pmcstat_string_unintern(i32) #2

declare dso_local i64 @pmcstat_image_addr2line(%struct.TYPE_7__*, i64, i8*, i32, i32*, i8*, i32) #2

declare dso_local i32 @PMCPL_CT_SAMPLE(i32, i32*) #2

declare dso_local i32 @pmcpl_ct_node_printchild(%struct.pmcpl_ct_node*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
