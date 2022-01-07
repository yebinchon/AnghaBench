; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_pr_comment.c_pr_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_pr_comment.c_pr_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i32 }

@opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ps = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@buf_ptr = common dso_local global i8* null, align 8
@s_lab = common dso_local global i64 0, align 8
@e_lab = common dso_local global i64 0, align 8
@s_code = common dso_local global i64 0, align 8
@e_code = common dso_local global i64 0, align 8
@save_com = common dso_local global i8* null, align 8
@sc_size = common dso_local global i32 0, align 4
@sc_buf = common dso_local global i8* null, align 8
@in_buffer = common dso_local global i8* null, align 8
@e_com = common dso_local global i8* null, align 8
@buf_end = common dso_local global i8* null, align 8
@s_com = common dso_local global i8* null, align 8
@lbrace = common dso_local global i64 0, align 8
@prefix_blankline_requested = common dso_local global i32 0, align 4
@had_eof = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unterminated comment\0A\00", align 1
@line_no = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"*\0A\0D\08\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pr_comment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 0), align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 1), align 4
  store i32 %13, i32* %2, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 0), align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 11), align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 11), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 10), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 10), align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  br label %117

22:                                               ; preds = %18, %0
  %23 = load i8*, i8** @buf_ptr, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %40, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** @buf_ptr, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 42
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** @buf_ptr, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 11), align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %27, %22
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37, %32
  %42 = load i64, i64* @s_lab, align 8
  %43 = load i64, i64* @e_lab, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load i64, i64* @s_code, align 8
  %47 = load i64, i64* @e_code, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 3), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 2), align 8
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 3), align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 4), align 8
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 10), align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = add nsw i32 1, %63
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  br label %65

65:                                               ; preds = %59, %49
  br label %116

66:                                               ; preds = %45, %41
  store i32 0, i32* %5, align 4
  %67 = load i64, i64* @s_code, align 8
  %68 = load i64, i64* @e_code, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = call i32 (...) @compute_code_target()
  %72 = load i64, i64* @s_code, align 8
  %73 = call i32 @count_spaces(i32 %71, i64 %72)
  store i32 %73, i32* %7, align 4
  br label %83

74:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  %75 = load i64, i64* @s_lab, align 8
  %76 = load i64, i64* @e_lab, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = call i32 (...) @compute_label_target()
  %80 = load i64, i64* @s_lab, align 8
  %81 = call i32 @count_spaces(i32 %79, i64 %80)
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 9), align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 3), align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86, %83
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 5), align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 6), align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 7), align 4
  %103 = sdiv i32 %101, %102
  %104 = add nsw i32 1, %103
  %105 = mul nsw i32 %99, %104
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  br label %107

107:                                              ; preds = %98, %93
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %109 = add nsw i32 %108, 24
  %110 = load i32, i32* %2, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %114 = add nsw i32 %113, 24
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %107
  br label %116

116:                                              ; preds = %115, %65
  br label %117

117:                                              ; preds = %116, %21
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %117
  %121 = load i8*, i8** @buf_ptr, align 8
  %122 = load i8*, i8** @save_com, align 8
  %123 = icmp uge i8* %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load i8*, i8** @buf_ptr, align 8
  %126 = load i8*, i8** @save_com, align 8
  %127 = load i32, i32* @sc_size, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = icmp ult i8* %125, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i8*, i8** @sc_buf, align 8
  br label %135

133:                                              ; preds = %124, %120
  %134 = load i8*, i8** @in_buffer, align 8
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i8* [ %132, %131 ], [ %134, %133 ]
  store i8* %136, i8** %8, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = load i8*, i8** @buf_ptr, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 -2
  %140 = call i32 @count_spaces_until(i32 1, i8* %137, i8* %139)
  %141 = sub nsw i32 1, %140
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 4), align 8
  br label %159

142:                                              ; preds = %117
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 4), align 8
  br label %143

143:                                              ; preds = %155, %142
  %144 = load i8*, i8** @buf_ptr, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 32
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load i8*, i8** @buf_ptr, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 9
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i1 [ true, %143 ], [ %152, %148 ]
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = load i8*, i8** @buf_ptr, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** @buf_ptr, align 8
  br label %143

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158, %135
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 8), align 8
  %160 = load i8*, i8** @e_com, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** @e_com, align 8
  store i8 47, i8* %160, align 1
  %162 = load i8*, i8** @e_com, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** @e_com, align 8
  store i8 42, i8* %162, align 1
  %164 = load i8*, i8** @buf_ptr, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 32
  br i1 %167, label %168, label %174

168:                                              ; preds = %159
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i8*, i8** @e_com, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** @e_com, align 8
  store i8 32, i8* %172, align 1
  br label %174

174:                                              ; preds = %171, %168, %159
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %224

177:                                              ; preds = %174
  %178 = load i8*, i8** @buf_ptr, align 8
  store i8* %178, i8** %4, align 8
  br label %179

179:                                              ; preds = %220, %177
  %180 = load i8*, i8** %4, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i8*, i8** %4, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 10
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi i1 [ false, %179 ], [ %188, %184 ]
  br i1 %190, label %191, label %223

191:                                              ; preds = %189
  %192 = load i8*, i8** %4, align 8
  %193 = load i8*, i8** @buf_end, align 8
  %194 = icmp uge i8* %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = call i32 (...) @fill_buffer()
  br label %197

197:                                              ; preds = %195, %191
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 42
  br i1 %202, label %203, label %219

203:                                              ; preds = %197
  %204 = load i8*, i8** %4, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 47
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  %210 = load i32, i32* %2, align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %212 = load i8*, i8** @buf_ptr, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 2
  %215 = call i32 @count_spaces_until(i32 %211, i8* %212, i8* %214)
  %216 = icmp sge i32 %210, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %217, %209
  br label %223

219:                                              ; preds = %203, %197
  br label %220

220:                                              ; preds = %219
  %221 = load i8*, i8** %4, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %4, align 8
  br label %179

223:                                              ; preds = %218, %189
  br label %224

224:                                              ; preds = %223, %174
  %225 = load i32, i32* %5, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %255

227:                                              ; preds = %224
  %228 = load i8*, i8** @e_com, align 8
  store i8* %228, i8** %9, align 8
  %229 = load i8*, i8** @s_com, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 2
  store i8* %230, i8** @e_com, align 8
  %231 = load i8*, i8** @e_com, align 8
  store i8 0, i8* %231, align 1
  %232 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 9), align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %227
  %235 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 5), align 8
  %236 = load i64, i64* @lbrace, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 1, i32* @prefix_blankline_requested, align 4
  br label %239

239:                                              ; preds = %238, %234, %227
  %240 = call i32 (...) @dump_line()
  %241 = load i8*, i8** %9, align 8
  store i8* %241, i8** @s_com, align 8
  store i8* %241, i8** @e_com, align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %239
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 8), align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %244
  %248 = load i8*, i8** @e_com, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** @e_com, align 8
  store i8 32, i8* %248, align 1
  %250 = load i8*, i8** @e_com, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** @e_com, align 8
  store i8 42, i8* %250, align 1
  %252 = load i8*, i8** @e_com, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** @e_com, align 8
  store i8 32, i8* %252, align 1
  br label %254

254:                                              ; preds = %247, %244, %239
  br label %255

255:                                              ; preds = %254, %224
  br label %256

256:                                              ; preds = %255, %648
  %257 = load i8*, i8** @buf_ptr, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  switch i32 %259, label %506 [
    i32 12, label %260
    i32 10, label %305
    i32 42, label %441
  ]

260:                                              ; preds = %256
  %261 = call i32 @CHECK_SIZE_COM(i32 3)
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %294, label %264

264:                                              ; preds = %260
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 6), align 8
  %265 = call i32 (...) @dump_line()
  store i8* null, i8** %3, align 8
  %266 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %278, label %268

268:                                              ; preds = %264
  %269 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 8), align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %278

271:                                              ; preds = %268
  %272 = load i8*, i8** @e_com, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** @e_com, align 8
  store i8 32, i8* %272, align 1
  %274 = load i8*, i8** @e_com, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** @e_com, align 8
  store i8 42, i8* %274, align 1
  %276 = load i8*, i8** @e_com, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** @e_com, align 8
  store i8 32, i8* %276, align 1
  br label %278

278:                                              ; preds = %271, %268, %264
  br label %279

279:                                              ; preds = %292, %278
  %280 = load i8*, i8** @buf_ptr, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** @buf_ptr, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 32
  br i1 %284, label %290, label %285

285:                                              ; preds = %279
  %286 = load i8*, i8** @buf_ptr, align 8
  %287 = load i8, i8* %286, align 1
  %288 = sext i8 %287 to i32
  %289 = icmp eq i32 %288, 9
  br label %290

290:                                              ; preds = %285, %279
  %291 = phi i1 [ true, %279 ], [ %289, %285 ]
  br i1 %291, label %292, label %293

292:                                              ; preds = %290
  br label %279

293:                                              ; preds = %290
  br label %304

294:                                              ; preds = %260
  %295 = load i8*, i8** @buf_ptr, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** @buf_ptr, align 8
  %297 = load i8*, i8** @buf_end, align 8
  %298 = icmp uge i8* %296, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = call i32 (...) @fill_buffer()
  br label %301

301:                                              ; preds = %299, %294
  %302 = load i8*, i8** @e_com, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** @e_com, align 8
  store i8 12, i8* %302, align 1
  br label %304

304:                                              ; preds = %301, %293
  br label %648

305:                                              ; preds = %256
  %306 = load i32, i32* @had_eof, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %310 = call i32 (...) @dump_line()
  br label %649

311:                                              ; preds = %305
  store i8* null, i8** %3, align 8
  %312 = call i32 @CHECK_SIZE_COM(i32 4)
  %313 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %311
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 7), align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %362

318:                                              ; preds = %315, %311
  %319 = load i8*, i8** @s_com, align 8
  %320 = load i8*, i8** @e_com, align 8
  %321 = icmp eq i8* %319, %320
  br i1 %321, label %322, label %325

322:                                              ; preds = %318
  %323 = load i8*, i8** @e_com, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** @e_com, align 8
  store i8 32, i8* %323, align 1
  br label %325

325:                                              ; preds = %322, %318
  %326 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %347, label %328

328:                                              ; preds = %325
  %329 = load i8*, i8** @e_com, align 8
  %330 = load i8*, i8** @s_com, align 8
  %331 = ptrtoint i8* %329 to i64
  %332 = ptrtoint i8* %330 to i64
  %333 = sub i64 %331, %332
  %334 = icmp sgt i64 %333, 3
  br i1 %334, label %335, label %347

335:                                              ; preds = %328
  %336 = call i32 (...) @dump_line()
  %337 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 8), align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %335
  %340 = load i8*, i8** @e_com, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** @e_com, align 8
  store i8 32, i8* %340, align 1
  %342 = load i8*, i8** @e_com, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** @e_com, align 8
  store i8 42, i8* %342, align 1
  %344 = load i8*, i8** @e_com, align 8
  %345 = getelementptr inbounds i8, i8* %344, i32 1
  store i8* %345, i8** @e_com, align 8
  store i8 32, i8* %344, align 1
  br label %346

346:                                              ; preds = %339, %335
  br label %347

347:                                              ; preds = %346, %328, %325
  %348 = call i32 (...) @dump_line()
  %349 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %361, label %351

351:                                              ; preds = %347
  %352 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 8), align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %351
  %355 = load i8*, i8** @e_com, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %356, i8** @e_com, align 8
  store i8 32, i8* %355, align 1
  %357 = load i8*, i8** @e_com, align 8
  %358 = getelementptr inbounds i8, i8* %357, i32 1
  store i8* %358, i8** @e_com, align 8
  store i8 42, i8* %357, align 1
  %359 = load i8*, i8** @e_com, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %360, i8** @e_com, align 8
  store i8 32, i8* %359, align 1
  br label %361

361:                                              ; preds = %354, %351, %347
  br label %382

362:                                              ; preds = %315
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 7), align 4
  %363 = load i8*, i8** @e_com, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 -1
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp eq i32 %366, 32
  br i1 %367, label %374, label %368

368:                                              ; preds = %362
  %369 = load i8*, i8** @e_com, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 -1
  %371 = load i8, i8* %370, align 1
  %372 = sext i8 %371 to i32
  %373 = icmp eq i32 %372, 9
  br i1 %373, label %374, label %377

374:                                              ; preds = %368, %362
  %375 = load i8*, i8** @e_com, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 -1
  store i8* %376, i8** %3, align 8
  br label %381

377:                                              ; preds = %368
  %378 = load i8*, i8** @e_com, align 8
  store i8* %378, i8** %3, align 8
  %379 = load i8*, i8** @e_com, align 8
  %380 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %380, i8** @e_com, align 8
  store i8 32, i8* %379, align 1
  br label %381

381:                                              ; preds = %377, %374
  br label %382

382:                                              ; preds = %381, %361
  %383 = load i32, i32* @line_no, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* @line_no, align 4
  %385 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %432, label %387

387:                                              ; preds = %382
  store i32 1, i32* %10, align 4
  br label %388

388:                                              ; preds = %429, %387
  %389 = load i8*, i8** @buf_ptr, align 8
  %390 = getelementptr inbounds i8, i8* %389, i32 1
  store i8* %390, i8** @buf_ptr, align 8
  %391 = load i8*, i8** @buf_end, align 8
  %392 = icmp uge i8* %390, %391
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = call i32 (...) @fill_buffer()
  br label %395

395:                                              ; preds = %393, %388
  %396 = load i8*, i8** @buf_ptr, align 8
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp eq i32 %398, 42
  br i1 %399, label %400, label %418

400:                                              ; preds = %395
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %401, -1
  store i32 %402, i32* %10, align 4
  %403 = icmp sge i32 %402, 0
  br i1 %403, label %404, label %418

404:                                              ; preds = %400
  %405 = load i8*, i8** @buf_ptr, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** @buf_ptr, align 8
  %407 = load i8*, i8** @buf_end, align 8
  %408 = icmp uge i8* %406, %407
  br i1 %408, label %409, label %411

409:                                              ; preds = %404
  %410 = call i32 (...) @fill_buffer()
  br label %411

411:                                              ; preds = %409, %404
  %412 = load i8*, i8** @buf_ptr, align 8
  %413 = load i8, i8* %412, align 1
  %414 = sext i8 %413 to i32
  %415 = icmp eq i32 %414, 47
  br i1 %415, label %416, label %417

416:                                              ; preds = %411
  br label %455

417:                                              ; preds = %411
  br label %418

418:                                              ; preds = %417, %400, %395
  br label %419

419:                                              ; preds = %418
  %420 = load i8*, i8** @buf_ptr, align 8
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp eq i32 %422, 32
  br i1 %423, label %429, label %424

424:                                              ; preds = %419
  %425 = load i8*, i8** @buf_ptr, align 8
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = icmp eq i32 %427, 9
  br label %429

429:                                              ; preds = %424, %419
  %430 = phi i1 [ true, %419 ], [ %428, %424 ]
  br i1 %430, label %388, label %431

431:                                              ; preds = %429
  br label %440

432:                                              ; preds = %382
  %433 = load i8*, i8** @buf_ptr, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** @buf_ptr, align 8
  %435 = load i8*, i8** @buf_end, align 8
  %436 = icmp uge i8* %434, %435
  br i1 %436, label %437, label %439

437:                                              ; preds = %432
  %438 = call i32 (...) @fill_buffer()
  br label %439

439:                                              ; preds = %437, %432
  br label %440

440:                                              ; preds = %439, %431
  br label %648

441:                                              ; preds = %256
  %442 = load i8*, i8** @buf_ptr, align 8
  %443 = getelementptr inbounds i8, i8* %442, i32 1
  store i8* %443, i8** @buf_ptr, align 8
  %444 = load i8*, i8** @buf_end, align 8
  %445 = icmp uge i8* %443, %444
  br i1 %445, label %446, label %448

446:                                              ; preds = %441
  %447 = call i32 (...) @fill_buffer()
  br label %448

448:                                              ; preds = %446, %441
  %449 = call i32 @CHECK_SIZE_COM(i32 4)
  %450 = load i8*, i8** @buf_ptr, align 8
  %451 = load i8, i8* %450, align 1
  %452 = sext i8 %451 to i32
  %453 = icmp eq i32 %452, 47
  br i1 %453, label %454, label %502

454:                                              ; preds = %448
  br label %455

455:                                              ; preds = %454, %416
  %456 = load i8*, i8** @buf_ptr, align 8
  %457 = getelementptr inbounds i8, i8* %456, i32 1
  store i8* %457, i8** @buf_ptr, align 8
  %458 = load i8*, i8** @buf_end, align 8
  %459 = icmp uge i8* %457, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = call i32 (...) @fill_buffer()
  br label %462

462:                                              ; preds = %460, %455
  %463 = load i32, i32* %5, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %477

465:                                              ; preds = %462
  %466 = load i8*, i8** @e_com, align 8
  %467 = load i8*, i8** @s_com, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 3
  %469 = icmp ugt i8* %466, %468
  br i1 %469, label %470, label %472

470:                                              ; preds = %465
  %471 = call i32 (...) @dump_line()
  br label %474

472:                                              ; preds = %465
  %473 = load i8*, i8** @e_com, align 8
  store i8* %473, i8** @s_com, align 8
  br label %474

474:                                              ; preds = %472, %470
  %475 = load i8*, i8** @e_com, align 8
  %476 = getelementptr inbounds i8, i8* %475, i32 1
  store i8* %476, i8** @e_com, align 8
  store i8 32, i8* %475, align 1
  br label %477

477:                                              ; preds = %474, %462
  %478 = load i8*, i8** @e_com, align 8
  %479 = getelementptr inbounds i8, i8* %478, i64 -1
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i32
  %482 = icmp ne i32 %481, 32
  br i1 %482, label %483, label %495

483:                                              ; preds = %477
  %484 = load i8*, i8** @e_com, align 8
  %485 = getelementptr inbounds i8, i8* %484, i64 -1
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i32
  %488 = icmp ne i32 %487, 9
  br i1 %488, label %489, label %495

489:                                              ; preds = %483
  %490 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %495, label %492

492:                                              ; preds = %489
  %493 = load i8*, i8** @e_com, align 8
  %494 = getelementptr inbounds i8, i8* %493, i32 1
  store i8* %494, i8** @e_com, align 8
  store i8 32, i8* %493, align 1
  br label %495

495:                                              ; preds = %492, %489, %483, %477
  %496 = load i8*, i8** @e_com, align 8
  %497 = getelementptr inbounds i8, i8* %496, i32 1
  store i8* %497, i8** @e_com, align 8
  store i8 42, i8* %496, align 1
  %498 = load i8*, i8** @e_com, align 8
  %499 = getelementptr inbounds i8, i8* %498, i32 1
  store i8* %499, i8** @e_com, align 8
  store i8 47, i8* %498, align 1
  %500 = load i8*, i8** @e_com, align 8
  store i8 0, i8* %500, align 1
  %501 = load i32, i32* %6, align 4
  store i32 %501, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 0), align 8
  br label %649

502:                                              ; preds = %448
  %503 = load i8*, i8** @e_com, align 8
  %504 = getelementptr inbounds i8, i8* %503, i32 1
  store i8* %504, i8** @e_com, align 8
  store i8 42, i8* %503, align 1
  br label %505

505:                                              ; preds = %502
  br label %648

506:                                              ; preds = %256
  %507 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %508 = load i8*, i8** @s_com, align 8
  %509 = load i8*, i8** @e_com, align 8
  %510 = call i32 @count_spaces_until(i32 %507, i8* %508, i8* %509)
  store i32 %510, i32* %1, align 4
  br label %511

511:                                              ; preds = %554, %506
  %512 = call i32 @CHECK_SIZE_COM(i32 1)
  %513 = load i8*, i8** @buf_ptr, align 8
  %514 = getelementptr inbounds i8, i8* %513, i32 1
  store i8* %514, i8** @buf_ptr, align 8
  %515 = load i8, i8* %513, align 1
  %516 = load i8*, i8** @e_com, align 8
  store i8 %515, i8* %516, align 1
  %517 = load i8*, i8** @buf_ptr, align 8
  %518 = load i8*, i8** @buf_end, align 8
  %519 = icmp uge i8* %517, %518
  br i1 %519, label %520, label %522

520:                                              ; preds = %511
  %521 = call i32 (...) @fill_buffer()
  br label %522

522:                                              ; preds = %520, %511
  %523 = load i8*, i8** @e_com, align 8
  %524 = load i8, i8* %523, align 1
  %525 = sext i8 %524 to i32
  %526 = icmp eq i32 %525, 32
  br i1 %526, label %532, label %527

527:                                              ; preds = %522
  %528 = load i8*, i8** @e_com, align 8
  %529 = load i8, i8* %528, align 1
  %530 = sext i8 %529 to i32
  %531 = icmp eq i32 %530, 9
  br i1 %531, label %532, label %534

532:                                              ; preds = %527, %522
  %533 = load i8*, i8** @e_com, align 8
  store i8* %533, i8** %3, align 8
  br label %534

534:                                              ; preds = %532, %527
  %535 = load i8*, i8** @e_com, align 8
  %536 = getelementptr inbounds i8, i8* %535, i32 1
  store i8* %536, i8** @e_com, align 8
  %537 = load i32, i32* %1, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %1, align 4
  br label %539

539:                                              ; preds = %534
  %540 = load i8*, i8** @buf_ptr, align 8
  %541 = load i8, i8* %540, align 1
  %542 = call i32 @memchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 signext %541, i32 6)
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %554, label %544

544:                                              ; preds = %539
  %545 = load i32, i32* %1, align 4
  %546 = load i32, i32* %2, align 4
  %547 = icmp sle i32 %545, %546
  br i1 %547, label %552, label %548

548:                                              ; preds = %544
  %549 = load i8*, i8** %3, align 8
  %550 = icmp ne i8* %549, null
  %551 = xor i1 %550, true
  br label %552

552:                                              ; preds = %548, %544
  %553 = phi i1 [ true, %544 ], [ %551, %548 ]
  br label %554

554:                                              ; preds = %552, %539
  %555 = phi i1 [ false, %539 ], [ %553, %552 ]
  br i1 %555, label %511, label %556

556:                                              ; preds = %554
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 7), align 4
  %557 = load i32, i32* %1, align 4
  %558 = load i32, i32* %2, align 4
  %559 = icmp sgt i32 %557, %558
  br i1 %559, label %560, label %647

560:                                              ; preds = %556
  %561 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %647, label %563

563:                                              ; preds = %560
  %564 = load i8*, i8** @e_com, align 8
  %565 = getelementptr inbounds i8, i8* %564, i64 -1
  %566 = load i8, i8* %565, align 1
  %567 = sext i8 %566 to i32
  %568 = icmp sgt i32 %567, 32
  br i1 %568, label %569, label %647

569:                                              ; preds = %563
  %570 = load i8*, i8** %3, align 8
  %571 = icmp eq i8* %570, null
  br i1 %571, label %572, label %587

572:                                              ; preds = %569
  %573 = call i32 (...) @dump_line()
  %574 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %586, label %576

576:                                              ; preds = %572
  %577 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 8), align 8
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %586

579:                                              ; preds = %576
  %580 = load i8*, i8** @e_com, align 8
  %581 = getelementptr inbounds i8, i8* %580, i32 1
  store i8* %581, i8** @e_com, align 8
  store i8 32, i8* %580, align 1
  %582 = load i8*, i8** @e_com, align 8
  %583 = getelementptr inbounds i8, i8* %582, i32 1
  store i8* %583, i8** @e_com, align 8
  store i8 42, i8* %582, align 1
  %584 = load i8*, i8** @e_com, align 8
  %585 = getelementptr inbounds i8, i8* %584, i32 1
  store i8* %585, i8** @e_com, align 8
  store i8 32, i8* %584, align 1
  br label %586

586:                                              ; preds = %579, %576, %572
  br label %648

587:                                              ; preds = %569
  %588 = load i8*, i8** @e_com, align 8
  store i8 0, i8* %588, align 1
  %589 = load i8*, i8** %3, align 8
  store i8* %589, i8** @e_com, align 8
  %590 = call i32 (...) @dump_line()
  %591 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %603, label %593

593:                                              ; preds = %587
  %594 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 8), align 8
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %603

596:                                              ; preds = %593
  %597 = load i8*, i8** @e_com, align 8
  %598 = getelementptr inbounds i8, i8* %597, i32 1
  store i8* %598, i8** @e_com, align 8
  store i8 32, i8* %597, align 1
  %599 = load i8*, i8** @e_com, align 8
  %600 = getelementptr inbounds i8, i8* %599, i32 1
  store i8* %600, i8** @e_com, align 8
  store i8 42, i8* %599, align 1
  %601 = load i8*, i8** @e_com, align 8
  %602 = getelementptr inbounds i8, i8* %601, i32 1
  store i8* %602, i8** @e_com, align 8
  store i8 32, i8* %601, align 1
  br label %603

603:                                              ; preds = %596, %593, %587
  %604 = load i8*, i8** %3, align 8
  %605 = getelementptr inbounds i8, i8* %604, i64 1
  store i8* %605, i8** %4, align 8
  br label %606

606:                                              ; preds = %619, %603
  %607 = load i8*, i8** %4, align 8
  %608 = load i8, i8* %607, align 1
  %609 = sext i8 %608 to i32
  %610 = icmp eq i32 %609, 32
  br i1 %610, label %616, label %611

611:                                              ; preds = %606
  %612 = load i8*, i8** %4, align 8
  %613 = load i8, i8* %612, align 1
  %614 = sext i8 %613 to i32
  %615 = icmp eq i32 %614, 9
  br label %616

616:                                              ; preds = %611, %606
  %617 = phi i1 [ true, %606 ], [ %615, %611 ]
  br i1 %617, label %618, label %622

618:                                              ; preds = %616
  br label %619

619:                                              ; preds = %618
  %620 = load i8*, i8** %4, align 8
  %621 = getelementptr inbounds i8, i8* %620, i32 1
  store i8* %621, i8** %4, align 8
  br label %606

622:                                              ; preds = %616
  store i8* null, i8** %3, align 8
  br label %623

623:                                              ; preds = %640, %622
  %624 = load i8*, i8** %4, align 8
  %625 = load i8, i8* %624, align 1
  %626 = sext i8 %625 to i32
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %646

628:                                              ; preds = %623
  %629 = load i8*, i8** %4, align 8
  %630 = load i8, i8* %629, align 1
  %631 = sext i8 %630 to i32
  %632 = icmp eq i32 %631, 32
  br i1 %632, label %638, label %633

633:                                              ; preds = %628
  %634 = load i8*, i8** %4, align 8
  %635 = load i8, i8* %634, align 1
  %636 = sext i8 %635 to i32
  %637 = icmp eq i32 %636, 9
  br i1 %637, label %638, label %640

638:                                              ; preds = %633, %628
  %639 = load i8*, i8** @e_com, align 8
  store i8* %639, i8** %3, align 8
  br label %640

640:                                              ; preds = %638, %633
  %641 = load i8*, i8** %4, align 8
  %642 = getelementptr inbounds i8, i8* %641, i32 1
  store i8* %642, i8** %4, align 8
  %643 = load i8, i8* %641, align 1
  %644 = load i8*, i8** @e_com, align 8
  %645 = getelementptr inbounds i8, i8* %644, i32 1
  store i8* %645, i8** @e_com, align 8
  store i8 %643, i8* %644, align 1
  br label %623

646:                                              ; preds = %623
  br label %647

647:                                              ; preds = %646, %563, %560, %556
  br label %648

648:                                              ; preds = %647, %586, %505, %440, %304
  br label %256

649:                                              ; preds = %495, %308
  ret void
}

declare dso_local i32 @count_spaces(i32, i64) #1

declare dso_local i32 @compute_code_target(...) #1

declare dso_local i32 @compute_label_target(...) #1

declare dso_local i32 @count_spaces_until(i32, i8*, i8*) #1

declare dso_local i32 @fill_buffer(...) #1

declare dso_local i32 @dump_line(...) #1

declare dso_local i32 @CHECK_SIZE_COM(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memchr(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
