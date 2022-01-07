; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_main.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_checkout_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.checkout_opts = type { i32, i8*, i32, i64, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i8*, %struct.TYPE_2__, i64, i32, i64, i32, i64, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.option = type { i32 }
%struct.branch_info = type { i32 }
%struct.object_id = type { i32 }

@git_checkout_config = common dso_local global i32 0, align 4
@BRANCH_TRACK_UNSPECIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"make up your mind, you need to take _something_\00", align 1
@PARSE_OPT_KEEP_DASHDASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"merge.conflictstyle\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"-b, -B and --orphan are mutually exclusive\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"-p and --overlay are mutually exclusive\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"these flags should be non-negative by now\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"--track needs a branch name\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"remotes/\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"missing branch name; try -b\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"could not resolve %s\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"reference is not a tree: %s\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"you must specify path(s) to restore\00", align 1
@PATHSPEC_PREFIX_ORIGIN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"invalid path specification\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"'%s' is not a commit and a branch '%s' cannot be created from it\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"git checkout: --detach does not take a path argument '%s'\00", align 1
@.str.18 = private unnamed_addr constant [100 x i8] c"git checkout: --ours/--theirs, --force and --merge are incompatible when\0Achecking out of the index.\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@advice_checkout_ambiguous_remote_branch_name = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [535 x i8] c"'%s' matched more than one remote tracking branch.\0AWe found %d remotes with a reference that matched. So we fell back\0Aon trying to resolve the argument as a path, but failed there too!\0A\0AIf you meant to check out a remote tracking branch on, e.g. 'origin',\0Ayou can do so by fully qualifying the name with the --track option:\0A\0A    git checkout --track origin/<name>\0A\0AIf you'd like to always have checkouts of an ambiguous <name> prefer\0Aone remote, e.g. the 'origin' remote, consider setting\0Acheckout.defaultRemote=origin in your config.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*, %struct.checkout_opts*, %struct.option*, i8**)* @checkout_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_main(i32 %0, i8** %1, i8* %2, %struct.checkout_opts* %3, %struct.option* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.checkout_opts*, align 8
  %12 = alloca %struct.option*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.branch_info, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.object_id, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.object_id, align 4
  %22 = alloca %struct.strbuf, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.checkout_opts* %3, %struct.checkout_opts** %11, align 8
  store %struct.option* %4, %struct.option** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = call i32 @memset(%struct.branch_info* %14, i32 0, i32 4)
  %25 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %26 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %29 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %31 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %30, i32 0, i32 2
  store i32 -1, i32* %31, align 8
  %32 = load i32, i32* @git_checkout_config, align 4
  %33 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %34 = call i32 @git_config(i32 %32, %struct.checkout_opts* %33)
  %35 = load i64, i64* @BRANCH_TRACK_UNSPECIFIED, align 8
  %36 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %37 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %39 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %38, i32 0, i32 22
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %6
  %43 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %44 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %43, i32 0, i32 24
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 @BUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42, %6
  %50 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %51 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %50, i32 0, i32 22
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %56 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %55, i32 0, i32 24
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @PARSE_OPT_KEEP_DASHDASH, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %59, %54, %49
  %62 = load i32, i32* %8, align 4
  %63 = load i8**, i8*** %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.option*, %struct.option** %12, align 8
  %66 = load i8**, i8*** %13, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @parse_options(i32 %62, i8** %63, i8* %64, %struct.option* %65, i8** %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %70 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %61
  %74 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %75 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %74, i32 0, i32 27
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %80 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  br label %85

81:                                               ; preds = %73
  %82 = call i32 @isatty(i32 2)
  %83 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %84 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %61
  %87 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %88 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %87, i32 0, i32 26
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %93 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %92, i32 0, i32 4
  store i32 1, i32* %93, align 8
  %94 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %95 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %94, i32 0, i32 26
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @git_xmerge_config(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %96, i32* null)
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %100 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %99, i32 0, i32 18
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %105 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %104, i32 0, i32 5
  store i32 1, i32* %105, align 4
  %106 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %107 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %106, i32 0, i32 6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %107, align 8
  %108 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %109 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %108, i32 0, i32 7
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %112 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %111, i32 0, i32 8
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %119 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %118, i32 0, i32 9
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = add nsw i32 %117, %124
  %126 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %127 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %126, i32 0, i32 10
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = add nsw i32 %125, %132
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %138

135:                                              ; preds = %110
  %136 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %137 = call i32 (i32, ...) @die(i32 %136)
  br label %138

138:                                              ; preds = %135, %110
  %139 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %140 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %139, i32 0, i32 11
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %145 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %144, i32 0, i32 16
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %150 = call i32 (i32, ...) @die(i32 %149)
  br label %151

151:                                              ; preds = %148, %143, %138
  %152 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %153 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %158 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %157, i32 0, i32 13
  %159 = load i32, i32* %158, align 8
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %156, %151
  %162 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %163 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %162, i32 0, i32 12
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %168 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %167, i32 0, i32 12
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %161
  %170 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %171 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %170, i32 0, i32 13
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %176 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %175, i32 0, i32 13
  store i32 0, i32* %176, align 8
  br label %177

177:                                              ; preds = %174, %169
  br label %205

178:                                              ; preds = %156
  %179 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %180 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %185 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 0, %186
  %188 = sub nsw i32 %187, 1
  %189 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %190 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %189, i32 0, i32 12
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %183, %178
  %192 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %193 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %192, i32 0, i32 13
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %198 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %197, i32 0, i32 13
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 0, %199
  %201 = sub nsw i32 %200, 1
  %202 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %203 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %202, i32 0, i32 13
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %196, %191
  br label %205

205:                                              ; preds = %204, %177
  %206 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %207 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %206, i32 0, i32 12
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %212 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %211, i32 0, i32 13
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %210, %205
  %216 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %210
  %218 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %219 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %218, i32 0, i32 14
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %235, label %222

222:                                              ; preds = %217
  %223 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %224 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %223, i32 0, i32 12
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %222
  %228 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %229 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %228, i32 0, i32 13
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %227
  %233 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %234 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %233, i32 0, i32 14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %234, align 8
  br label %235

235:                                              ; preds = %232, %227, %222, %217
  %236 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %237 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %236, i32 0, i32 9
  %238 = load i8*, i8** %237, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %242 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %241, i32 0, i32 9
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %245 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %244, i32 0, i32 8
  store i8* %243, i8** %245, align 8
  br label %246

246:                                              ; preds = %240, %235
  %247 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %248 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %247, i32 0, i32 10
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %253 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %252, i32 0, i32 10
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %256 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %255, i32 0, i32 8
  store i8* %254, i8** %256, align 8
  br label %257

257:                                              ; preds = %251, %246
  %258 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %259 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @BRANCH_TRACK_UNSPECIFIED, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %303

263:                                              ; preds = %257
  %264 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %265 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %264, i32 0, i32 8
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %303, label %268

268:                                              ; preds = %263
  %269 = load i8**, i8*** %9, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 0
  %271 = load i8*, i8** %270, align 8
  store i8* %271, i8** %17, align 8
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %268
  %275 = load i8*, i8** %17, align 8
  %276 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %274, %268
  %279 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %280 = call i32 (i32, ...) @die(i32 %279)
  br label %281

281:                                              ; preds = %278, %274
  %282 = load i8*, i8** %17, align 8
  %283 = call i32 @skip_prefix(i8* %282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %17)
  %284 = load i8*, i8** %17, align 8
  %285 = call i32 @skip_prefix(i8* %284, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %17)
  %286 = load i8*, i8** %17, align 8
  %287 = call i8* @strchr(i8* %286, i8 signext 47)
  store i8* %287, i8** %17, align 8
  %288 = load i8*, i8** %17, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %281
  %291 = load i8*, i8** %17, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  %293 = load i8, i8* %292, align 1
  %294 = icmp ne i8 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %290, %281
  %296 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %297 = call i32 (i32, ...) @die(i32 %296)
  br label %298

298:                                              ; preds = %295, %290
  %299 = load i8*, i8** %17, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 1
  %301 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %302 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %301, i32 0, i32 8
  store i8* %300, i8** %302, align 8
  br label %303

303:                                              ; preds = %298, %263, %257
  %304 = load i32, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %348

306:                                              ; preds = %303
  %307 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %308 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %307, i32 0, i32 24
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %348

311:                                              ; preds = %306
  %312 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %313 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %312, i32 0, i32 16
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %333, label %316

316:                                              ; preds = %311
  %317 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %318 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %317, i32 0, i32 25
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %333

321:                                              ; preds = %316
  %322 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %323 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @BRANCH_TRACK_UNSPECIFIED, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %329 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %328, i32 0, i32 8
  %330 = load i8*, i8** %329, align 8
  %331 = icmp ne i8* %330, null
  %332 = xor i1 %331, true
  br label %333

333:                                              ; preds = %327, %321, %316, %311
  %334 = phi i1 [ false, %321 ], [ false, %316 ], [ false, %311 ], [ %332, %327 ]
  %335 = zext i1 %334 to i32
  store i32 %335, i32* %19, align 4
  %336 = load i32, i32* %8, align 4
  %337 = load i8**, i8*** %9, align 8
  %338 = load i32, i32* %19, align 4
  %339 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %340 = call i32 @parse_branchname_arg(i32 %336, i8** %337, i32 %338, %struct.branch_info* %14, %struct.checkout_opts* %339, %struct.object_id* %18, i32* %15)
  store i32 %340, i32* %20, align 4
  %341 = load i32, i32* %20, align 4
  %342 = load i8**, i8*** %9, align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i8*, i8** %342, i64 %343
  store i8** %344, i8*** %9, align 8
  %345 = load i32, i32* %20, align 4
  %346 = load i32, i32* %8, align 4
  %347 = sub nsw i32 %346, %345
  store i32 %347, i32* %8, align 4
  br label %388

348:                                              ; preds = %306, %303
  %349 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %350 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %349, i32 0, i32 24
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %387, label %353

353:                                              ; preds = %348
  %354 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %355 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %354, i32 0, i32 14
  %356 = load i8*, i8** %355, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %358, label %387

358:                                              ; preds = %353
  %359 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %360 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %359, i32 0, i32 14
  %361 = load i8*, i8** %360, align 8
  %362 = call i64 @get_oid_mb(i8* %361, %struct.object_id* %21)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %358
  %365 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %366 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %367 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %366, i32 0, i32 14
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 (i32, ...) @die(i32 %365, i8* %368)
  br label %370

370:                                              ; preds = %364, %358
  %371 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %372 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %373 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %372, i32 0, i32 14
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @setup_new_branch_info_and_source_tree(%struct.branch_info* %14, %struct.checkout_opts* %371, %struct.object_id* %21, i8* %374)
  %376 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %377 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %376, i32 0, i32 23
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %386, label %380

380:                                              ; preds = %370
  %381 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %382 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %383 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %382, i32 0, i32 14
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 (i32, ...) @die(i32 %381, i8* %384)
  br label %386

386:                                              ; preds = %380, %370
  br label %387

387:                                              ; preds = %386, %353, %348
  br label %388

388:                                              ; preds = %387, %333
  %389 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %390 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %389, i32 0, i32 22
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %409

393:                                              ; preds = %388
  %394 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %395 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %394, i32 0, i32 21
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %409, label %398

398:                                              ; preds = %393
  %399 = load i32, i32* %8, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %409, label %401

401:                                              ; preds = %398
  %402 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %403 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %402, i32 0, i32 16
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %401
  %407 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  %408 = call i32 (i32, ...) @die(i32 %407)
  br label %409

409:                                              ; preds = %406, %401, %398, %393, %388
  %410 = load i32, i32* %8, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %492

412:                                              ; preds = %409
  %413 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %414 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %413, i32 0, i32 15
  %415 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %416 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %415, i32 0, i32 16
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %421

419:                                              ; preds = %412
  %420 = load i32, i32* @PATHSPEC_PREFIX_ORIGIN, align 4
  br label %422

421:                                              ; preds = %412
  br label %422

422:                                              ; preds = %421, %419
  %423 = phi i32 [ %420, %419 ], [ 0, %421 ]
  %424 = load i8*, i8** %10, align 8
  %425 = load i8**, i8*** %9, align 8
  %426 = call i32 @parse_pathspec(%struct.TYPE_2__* %414, i32 0, i32 %423, i8* %424, i8** %425)
  %427 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %428 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %427, i32 0, i32 15
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %435, label %432

432:                                              ; preds = %422
  %433 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %434 = call i32 (i32, ...) @die(i32 %433)
  br label %435

435:                                              ; preds = %432, %422
  %436 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %437 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %436, i32 0, i32 8
  %438 = load i8*, i8** %437, align 8
  %439 = icmp ne i8* %438, null
  br i1 %439, label %440, label %452

440:                                              ; preds = %435
  %441 = load i32, i32* %8, align 4
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %443, label %452

443:                                              ; preds = %440
  %444 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0))
  %445 = load i8**, i8*** %9, align 8
  %446 = getelementptr inbounds i8*, i8** %445, i64 0
  %447 = load i8*, i8** %446, align 8
  %448 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %449 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %448, i32 0, i32 8
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 (i32, ...) @die(i32 %444, i8* %447, i8* %450)
  br label %452

452:                                              ; preds = %443, %440, %435
  %453 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %454 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %453, i32 0, i32 20
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %463

457:                                              ; preds = %452
  %458 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0))
  %459 = load i8**, i8*** %9, align 8
  %460 = getelementptr inbounds i8*, i8** %459, i64 0
  %461 = load i8*, i8** %460, align 8
  %462 = call i32 (i32, ...) @die(i32 %458, i8* %461)
  br label %463

463:                                              ; preds = %457, %452
  %464 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %465 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %464, i32 0, i32 19
  %466 = load i32, i32* %465, align 8
  %467 = icmp ne i32 %466, 0
  %468 = xor i1 %467, true
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %472 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %471, i32 0, i32 18
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  %475 = xor i1 %474, true
  %476 = xor i1 %475, true
  %477 = zext i1 %476 to i32
  %478 = add nsw i32 %470, %477
  %479 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %480 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  %483 = xor i1 %482, true
  %484 = xor i1 %483, true
  %485 = zext i1 %484 to i32
  %486 = add nsw i32 %478, %485
  %487 = icmp slt i32 1, %486
  br i1 %487, label %488, label %491

488:                                              ; preds = %463
  %489 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.18, i64 0, i64 0))
  %490 = call i32 (i32, ...) @die(i32 %489)
  br label %491

491:                                              ; preds = %488, %463
  br label %492

492:                                              ; preds = %491, %409
  %493 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %494 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %493, i32 0, i32 8
  %495 = load i8*, i8** %494, align 8
  %496 = icmp ne i8* %495, null
  br i1 %496, label %497, label %519

497:                                              ; preds = %492
  %498 = bitcast %struct.strbuf* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %498, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %499 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %500 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %499, i32 0, i32 9
  %501 = load i8*, i8** %500, align 8
  %502 = icmp ne i8* %501, null
  br i1 %502, label %503, label %510

503:                                              ; preds = %497
  %504 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %505 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %504, i32 0, i32 8
  %506 = load i8*, i8** %505, align 8
  %507 = call i32 @validate_branchname(i8* %506, %struct.strbuf* %22)
  %508 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %509 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %508, i32 0, i32 17
  store i32 %507, i32* %509, align 8
  br label %517

510:                                              ; preds = %497
  %511 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %512 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %511, i32 0, i32 8
  %513 = load i8*, i8** %512, align 8
  %514 = call i32 @validate_new_branchname(i8* %513, %struct.strbuf* %22, i32 0)
  %515 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %516 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %515, i32 0, i32 17
  store i32 %514, i32* %516, align 8
  br label %517

517:                                              ; preds = %510, %503
  %518 = call i32 @strbuf_release(%struct.strbuf* %22)
  br label %519

519:                                              ; preds = %517, %492
  %520 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %521 = call i32 @UNLEAK(%struct.checkout_opts* %520)
  %522 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %523 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %522, i32 0, i32 16
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %532, label %526

526:                                              ; preds = %519
  %527 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %528 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %554

532:                                              ; preds = %526, %519
  %533 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %534 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %14, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @checkout_paths(%struct.checkout_opts* %533, i32 %535)
  store i32 %536, i32* %23, align 4
  %537 = load i32, i32* %23, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %552

539:                                              ; preds = %532
  %540 = load i32, i32* %15, align 4
  %541 = icmp sgt i32 %540, 1
  br i1 %541, label %542, label %552

542:                                              ; preds = %539
  %543 = load i64, i64* @advice_checkout_ambiguous_remote_branch_name, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %552

545:                                              ; preds = %542
  %546 = call i32 @_(i8* getelementptr inbounds ([535 x i8], [535 x i8]* @.str.19, i64 0, i64 0))
  %547 = load i8**, i8*** %9, align 8
  %548 = getelementptr inbounds i8*, i8** %547, i64 0
  %549 = load i8*, i8** %548, align 8
  %550 = load i32, i32* %15, align 4
  %551 = call i32 @advise(i32 %546, i8* %549, i32 %550)
  br label %552

552:                                              ; preds = %545, %542, %539, %532
  %553 = load i32, i32* %23, align 4
  store i32 %553, i32* %7, align 4
  br label %557

554:                                              ; preds = %526
  %555 = load %struct.checkout_opts*, %struct.checkout_opts** %11, align 8
  %556 = call i32 @checkout_branch(%struct.checkout_opts* %555, %struct.branch_info* %14)
  store i32 %556, i32* %7, align 4
  br label %557

557:                                              ; preds = %554, %552
  %558 = load i32, i32* %7, align 4
  ret i32 %558
}

declare dso_local i32 @memset(%struct.branch_info*, i32, i32) #1

declare dso_local i32 @git_config(i32, %struct.checkout_opts*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i8**, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @git_xmerge_config(i8*, i64, i32*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_branchname_arg(i32, i8**, i32, %struct.branch_info*, %struct.checkout_opts*, %struct.object_id*, i32*) #1

declare dso_local i64 @get_oid_mb(i8*, %struct.object_id*) #1

declare dso_local i32 @setup_new_branch_info_and_source_tree(%struct.branch_info*, %struct.checkout_opts*, %struct.object_id*, i8*) #1

declare dso_local i32 @parse_pathspec(%struct.TYPE_2__*, i32, i32, i8*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @validate_branchname(i8*, %struct.strbuf*) #1

declare dso_local i32 @validate_new_branchname(i8*, %struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @UNLEAK(%struct.checkout_opts*) #1

declare dso_local i32 @checkout_paths(%struct.checkout_opts*, i32) #1

declare dso_local i32 @advise(i32, i8*, i32) #1

declare dso_local i32 @checkout_branch(%struct.checkout_opts*, %struct.branch_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
