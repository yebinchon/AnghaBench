; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.checkout_opts = type { i32, i64, i64, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.branch_info = type { i32, i64, i64 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"paths cannot be used with switching branches\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"'%s' cannot be used with switching branches\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--patch\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"--[no]-overlay\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"--ours/--theirs\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"'%s' cannot be used with '%s'\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"--discard-changes\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"--merge\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"--detach\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"-b/-B/--orphan\00", align 1
@BRANCH_TRACK_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"--orphan\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"'%s' cannot take <start-point>\00", align 1
@git_branch_track = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [42 x i8] c"Cannot switch branch to a non-commit '%s'\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"missing branch or commit argument\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@REF_ISSYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.checkout_opts*, %struct.branch_info*)* @checkout_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_branch(%struct.checkout_opts* %0, %struct.branch_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.checkout_opts*, align 8
  %5 = alloca %struct.branch_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i32, align 4
  store %struct.checkout_opts* %0, %struct.checkout_opts** %4, align 8
  store %struct.branch_info* %1, %struct.branch_info** %5, align 8
  %10 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %11 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %10, i32 0, i32 16
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i32, ...) @die(i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %20 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %19, i32 0, i32 15
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (i32, ...) @die(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %28 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (i32, ...) @die(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %36 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %35, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 (i32, ...) @die(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %44 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %49 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %48, i32 0, i32 11
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %54 = call i32 (i32, ...) @die(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47, %42
  %56 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %57 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %56, i32 0, i32 12
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %62 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %67 = call i32 (i32, ...) @die(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60, %55
  %69 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %70 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %75 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %80 = call i32 (i32, ...) @die(i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %73, %68
  %82 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %83 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %88 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BRANCH_TRACK_UNSPECIFIED, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %94 = call i32 (i32, ...) @die(i32 %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %86
  %96 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %97 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %102 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %107 = call i32 (i32, ...) @die(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100, %95
  br label %136

109:                                              ; preds = %81
  %110 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %111 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %116 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @BRANCH_TRACK_UNSPECIFIED, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %122 = call i32 (i32, ...) @die(i32 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %114
  br label %135

124:                                              ; preds = %109
  %125 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %126 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @BRANCH_TRACK_UNSPECIFIED, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i64, i64* @git_branch_track, align 8
  %132 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %133 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  br label %135

135:                                              ; preds = %134, %123
  br label %136

136:                                              ; preds = %135, %108
  %137 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %138 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %143 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %148 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %149 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32, ...) @die(i32 %147, i64 %150)
  br label %152

152:                                              ; preds = %146, %141, %136
  %153 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %154 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %175, label %157

157:                                              ; preds = %152
  %158 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %159 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %157
  %163 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %164 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %162
  %168 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %169 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %174 = call i32 (i32, ...) @die(i32 %173)
  br label %175

175:                                              ; preds = %172, %167, %162, %157, %152
  %176 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %177 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %208, label %180

180:                                              ; preds = %175
  %181 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %182 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %208, label %185

185:                                              ; preds = %180
  %186 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %187 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %208, label %190

190:                                              ; preds = %185
  %191 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %192 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %208, label %195

195:                                              ; preds = %190
  %196 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %197 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %202 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %207 = call i32 @die_expecting_a_branch(%struct.branch_info* %206)
  br label %208

208:                                              ; preds = %205, %200, %195, %190, %185, %180, %175
  %209 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %210 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %208
  %214 = call i32 (...) @die_if_some_operation_in_progress()
  br label %215

215:                                              ; preds = %213, %208
  %216 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %217 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %259

220:                                              ; preds = %215
  %221 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %222 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %259, label %225

225:                                              ; preds = %220
  %226 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %227 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %259, label %230

230:                                              ; preds = %225
  %231 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %232 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %259, label %235

235:                                              ; preds = %230
  %236 = call i8* @resolve_refdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 0, i32* null, i32* %6)
  store i8* %236, i8** %7, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* @REF_ISSYMREF, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load i8*, i8** %7, align 8
  %246 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %247 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @strcmp(i8* %245, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %244, %239
  %252 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %253 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @die_if_checked_out(i64 %254, i32 1)
  br label %256

256:                                              ; preds = %251, %244, %235
  %257 = load i8*, i8** %7, align 8
  %258 = call i32 @free(i8* %257)
  br label %259

259:                                              ; preds = %256, %230, %225, %220, %215
  %260 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %261 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %284, label %264

264:                                              ; preds = %259
  %265 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %266 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %264
  %270 = call i32 @read_ref_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 0, %struct.object_id* %8, i32* %9)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %283, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* @REF_ISSYMREF, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %272
  %278 = call i64 @is_null_oid(%struct.object_id* %8)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %282 = call i32 @switch_unborn_to_new_branch(%struct.checkout_opts* %281)
  store i32 %282, i32* %3, align 4
  br label %288

283:                                              ; preds = %277, %272, %269
  br label %284

284:                                              ; preds = %283, %264, %259
  %285 = load %struct.checkout_opts*, %struct.checkout_opts** %4, align 8
  %286 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %287 = call i32 @switch_branches(%struct.checkout_opts* %285, %struct.branch_info* %286)
  store i32 %287, i32* %3, align 4
  br label %288

288:                                              ; preds = %284, %280
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @die_expecting_a_branch(%struct.branch_info*) #1

declare dso_local i32 @die_if_some_operation_in_progress(...) #1

declare dso_local i8* @resolve_refdup(i8*, i32, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @die_if_checked_out(i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @read_ref_full(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @switch_unborn_to_new_branch(%struct.checkout_opts*) #1

declare dso_local i32 @switch_branches(%struct.checkout_opts*, %struct.branch_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
