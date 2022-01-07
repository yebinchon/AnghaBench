; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_parse_branchname_arg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_parse_branchname_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_info = type { i32 }
%struct.checkout_opts = type { i8*, i32, i64, i32, i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"only one reference expected\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"only one reference expected, %d given.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"@{-1}\00", align 1
@.str.5 = private unnamed_addr constant [113 x i8] c"'%s' could be both a local file and a tracking branch.\0APlease use -- (and optionally --no-guess) to disambiguate\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid reference: %s\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"reference is not a tree: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, %struct.branch_info*, %struct.checkout_opts*, %struct.object_id*, i32*)* @parse_branchname_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_branchname_arg(i32 %0, i8** %1, i32 %2, %struct.branch_info* %3, %struct.checkout_opts* %4, %struct.object_id* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.branch_info*, align 8
  %13 = alloca %struct.checkout_opts*, align 8
  %14 = alloca %struct.object_id*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32 %0, i32* %9, align 4
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.branch_info* %3, %struct.branch_info** %12, align 8
  store %struct.checkout_opts* %4, %struct.checkout_opts** %13, align 8
  store %struct.object_id* %5, %struct.object_id** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %26 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %25, i32 0, i32 0
  store i8** %26, i8*** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %232

30:                                               ; preds = %7
  %31 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %32 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (i32, ...) @die(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  store i32 1, i32* %20, align 4
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i8**, i8*** %10, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %18, align 8
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %46

46:                                               ; preds = %66, %42
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %52 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i8**, i8*** %10, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %21, align 4
  store i32 %64, i32* %19, align 4
  br label %69

65:                                               ; preds = %55, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %21, align 4
  br label %46

69:                                               ; preds = %63, %46
  %70 = load i32, i32* %19, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %8, align 4
  br label %232

73:                                               ; preds = %69
  %74 = load i32, i32* %19, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %20, align 4
  br label %85

77:                                               ; preds = %73
  %78 = load i32, i32* %19, align 4
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %19, align 4
  %83 = call i32 (i32, ...) @die(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %76
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %88 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi i1 [ false, %86 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %99 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i8*, i8** %18, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  br label %104

104:                                              ; preds = %103, %95
  %105 = load i8*, i8** %18, align 8
  %106 = load %struct.object_id*, %struct.object_id** %14, align 8
  %107 = call i64 @get_oid_mb(i8* %105, %struct.object_id* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %184

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %115 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = call i64 @check_filename(i32 %116, i8* %117)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %113, %109
  %121 = phi i1 [ false, %109 ], [ %119, %113 ]
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %23, align 4
  %123 = load i32, i32* %20, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %18, align 8
  %127 = call i32 @no_wildcard(i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  store i32 0, i32* %22, align 4
  br label %130

130:                                              ; preds = %129, %125, %120
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %144 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 0, i32* %22, align 4
  br label %148

148:                                              ; preds = %147, %142, %139, %133
  %149 = load i32, i32* %22, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  %152 = load i8*, i8** %18, align 8
  %153 = load %struct.object_id*, %struct.object_id** %14, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = call i8* @unique_tracking_name(i8* %152, %struct.object_id* %153, i32* %154)
  store i8* %155, i8** %24, align 8
  %156 = load i8*, i8** %24, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %151
  %159 = load i32, i32* %23, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = call i32 @_(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i8*, i8** %18, align 8
  %164 = call i32 (i32, ...) @die(i32 %162, i8* %163)
  br label %165

165:                                              ; preds = %161, %158
  %166 = load i8*, i8** %18, align 8
  %167 = load i8**, i8*** %16, align 8
  store i8* %166, i8** %167, align 8
  %168 = load i8*, i8** %24, align 8
  store i8* %168, i8** %18, align 8
  br label %170

169:                                              ; preds = %151
  store i32 0, i32* %22, align 4
  br label %170

170:                                              ; preds = %169, %165
  br label %171

171:                                              ; preds = %170, %148
  %172 = load i32, i32* %22, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %20, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i8*, i8** %18, align 8
  %180 = call i32 (i32, ...) @die(i32 %178, i8* %179)
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i32, i32* %17, align 4
  store i32 %182, i32* %8, align 4
  br label %232

183:                                              ; preds = %171
  br label %184

184:                                              ; preds = %183, %104
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  %187 = load i8**, i8*** %10, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i32 1
  store i8** %188, i8*** %10, align 8
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %9, align 4
  %191 = load %struct.branch_info*, %struct.branch_info** %12, align 8
  %192 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %193 = load %struct.object_id*, %struct.object_id** %14, align 8
  %194 = load i8*, i8** %18, align 8
  %195 = call i32 @setup_new_branch_info_and_source_tree(%struct.branch_info* %191, %struct.checkout_opts* %192, %struct.object_id* %193, i8* %194)
  %196 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %197 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %184
  %201 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %202 = load i8*, i8** %18, align 8
  %203 = call i32 (i32, ...) @die(i32 %201, i8* %202)
  br label %204

204:                                              ; preds = %200, %184
  %205 = load i32, i32* %20, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %212 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i8*, i8** %18, align 8
  %215 = call i32 @verify_non_filename(i32 %213, i8* %214)
  br label %216

216:                                              ; preds = %210, %207
  br label %230

217:                                              ; preds = %204
  %218 = load %struct.checkout_opts*, %struct.checkout_opts** %13, align 8
  %219 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %17, align 4
  %225 = load i8**, i8*** %10, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i32 1
  store i8** %226, i8*** %10, align 8
  %227 = load i32, i32* %9, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %9, align 4
  br label %229

229:                                              ; preds = %222, %217
  br label %230

230:                                              ; preds = %229, %216
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %8, align 4
  br label %232

232:                                              ; preds = %230, %181, %72, %29
  %233 = load i32, i32* %8, align 4
  ret i32 %233
}

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @get_oid_mb(i8*, %struct.object_id*) #1

declare dso_local i64 @check_filename(i32, i8*) #1

declare dso_local i32 @no_wildcard(i8*) #1

declare dso_local i8* @unique_tracking_name(i8*, %struct.object_id*, i32*) #1

declare dso_local i32 @setup_new_branch_info_and_source_tree(%struct.branch_info*, %struct.checkout_opts*, %struct.object_id*, i8*) #1

declare dso_local i32 @verify_non_filename(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
