; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge.c_merge_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge.c_merge_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.merge_remote_desc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.object_id }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [32 x i8] c"'%s' does not point to a commit\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s\09\09branch '%s' of .\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s\09\09tag '%s' of .\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s\09\09remote-tracking branch '%s' of .\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"refs/heads/%s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s\09\09branch '%s'%s of .\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c" (early part)\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OBJ_TAG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"%s\09\09%s '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"%s\09\09commit '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.strbuf*)* @merge_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_name(i8* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.object_id, align 4
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca %struct.merge_remote_desc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.strbuf, align 8
  store i8* %0, i8** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %16 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strbuf_branchname(%struct.strbuf* %8, i8* %18, i32 0)
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  %22 = call i32 @oidclr(%struct.object_id* %6)
  %23 = load i8*, i8** %3, align 8
  %24 = call %struct.commit* @get_merge_parent(i8* %23)
  store %struct.commit* %24, %struct.commit** %5, align 8
  %25 = load %struct.commit*, %struct.commit** %5, align 8
  %26 = icmp ne %struct.commit* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @die(i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i64 @dwim_ref(i8* %32, i32 %34, %struct.object_id* %6, i8** %11)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %31
  %38 = load i8*, i8** %11, align 8
  %39 = call i64 @starts_with(i8* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %43 = call i32 @oid_to_hex(%struct.object_id* %6)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46)
  br label %228

48:                                               ; preds = %37
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @starts_with(i8* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %54 = call i32 @oid_to_hex(%struct.object_id* %6)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %56, i8* %57)
  br label %228

59:                                               ; preds = %48
  %60 = load i8*, i8** %11, align 8
  %61 = call i64 @starts_with(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %65 = call i32 @oid_to_hex(%struct.object_id* %6)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %67, i8* %68)
  br label %228

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %31
  store i32 0, i32* %12, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = load i8*, i8** %3, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8* %76, i8** %10, align 8
  br label %77

77:                                               ; preds = %92, %71
  %78 = load i8*, i8** %3, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 94
  br label %87

87:                                               ; preds = %81, %77
  %88 = phi i1 [ false, %77 ], [ %86, %81 ]
  br i1 %88, label %89, label %95

89:                                               ; preds = %87
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %10, align 8
  br label %77

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 1, i32* %13, align 4
  br label %147

99:                                               ; preds = %95
  store i32 0, i32* %13, align 4
  %100 = load i8*, i8** %3, align 8
  %101 = call i8* @strrchr(i8* %100, i8 signext 126)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %146

104:                                              ; preds = %99
  store i32 0, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %120, %104
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @isdigit(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %113, %107
  %119 = phi i1 [ false, %107 ], [ %117, %113 ]
  br i1 %119, label %120, label %130

120:                                              ; preds = %118
  %121 = load i8*, i8** %10, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 48
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %14, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %107

130:                                              ; preds = %118
  %131 = load i8*, i8** %10, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 0, i32* %12, align 4
  br label %145

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 1, i32* %13, align 4
  br label %144

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1, i32* %13, align 4
  br label %143

143:                                              ; preds = %142, %139
  br label %144

144:                                              ; preds = %143, %138
  br label %145

145:                                              ; preds = %144, %134
  br label %146

146:                                              ; preds = %145, %99
  br label %147

147:                                              ; preds = %146, %98
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %183

150:                                              ; preds = %147
  %151 = bitcast %struct.strbuf* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %152 = load i8*, i8** %3, align 8
  %153 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %152)
  %154 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = sub nsw i64 %155, %157
  %159 = call i32 @strbuf_setlen(%struct.strbuf* %15, i64 %158)
  %160 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @ref_exists(i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %150
  %165 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %166 = load %struct.commit*, %struct.commit** %5, align 8
  %167 = getelementptr inbounds %struct.commit, %struct.commit* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = call i32 @oid_to_hex(%struct.object_id* %168)
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 11
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %179 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %165, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %171, i8* %174, i8* %178)
  %180 = call i32 @strbuf_release(%struct.strbuf* %15)
  br label %228

181:                                              ; preds = %150
  %182 = call i32 @strbuf_release(%struct.strbuf* %15)
  br label %183

183:                                              ; preds = %181, %147
  %184 = load %struct.commit*, %struct.commit** %5, align 8
  %185 = call %struct.merge_remote_desc* @merge_remote_util(%struct.commit* %184)
  store %struct.merge_remote_desc* %185, %struct.merge_remote_desc** %9, align 8
  %186 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %9, align 8
  %187 = icmp ne %struct.merge_remote_desc* %186, null
  br i1 %187, label %188, label %218

188:                                              ; preds = %183
  %189 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %9, align 8
  %190 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %189, i32 0, i32 0
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %190, align 8
  %192 = icmp ne %struct.TYPE_3__* %191, null
  br i1 %192, label %193, label %218

193:                                              ; preds = %188
  %194 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %9, align 8
  %195 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %194, i32 0, i32 0
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @OBJ_TAG, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %218

201:                                              ; preds = %193
  %202 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %203 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %9, align 8
  %204 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %203, i32 0, i32 0
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = call i32 @oid_to_hex(%struct.object_id* %206)
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %9, align 8
  %211 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %210, i32 0, i32 0
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @type_name(i64 %214)
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %202, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %209, i32 %215, i8* %216)
  br label %228

218:                                              ; preds = %193, %188, %183
  %219 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %220 = load %struct.commit*, %struct.commit** %5, align 8
  %221 = getelementptr inbounds %struct.commit, %struct.commit* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = call i32 @oid_to_hex(%struct.object_id* %222)
  %224 = sext i32 %223 to i64
  %225 = inttoptr i64 %224 to i8*
  %226 = load i8*, i8** %3, align 8
  %227 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %219, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %225, i8* %226)
  br label %228

228:                                              ; preds = %218, %201, %164, %63, %52, %41
  %229 = call i32 @strbuf_release(%struct.strbuf* %7)
  %230 = call i32 @strbuf_release(%struct.strbuf* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_branchname(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local %struct.commit* @get_merge_parent(i8*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @dwim_ref(i8*, i32, %struct.object_id*, i8**) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @starts_with(i8*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i64 @ref_exists(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local %struct.merge_remote_desc* @merge_remote_util(%struct.commit*) #2

declare dso_local i32 @type_name(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
