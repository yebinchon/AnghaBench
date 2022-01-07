; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_cmd_reflog_delete.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_cmd_reflog_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expire_reflog_policy_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"--dry-run\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@EXPIRE_REFLOGS_DRY_RUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"--rewrite\00", align 1
@EXPIRE_REFLOGS_REWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"--updateref\00", align 1
@EXPIRE_REFLOGS_UPDATE_REF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@EXPIRE_REFLOGS_VERBOSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@reflog_delete_usage = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"no reflog specified to delete\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"@{\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"not a reflog: %s\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"no reflog for '%s'\00", align 1
@count_reflog_ent = common dso_local global i32 0, align 4
@reflog_expiry_prepare = common dso_local global i32 0, align 4
@should_expire_reflog_ent = common dso_local global i32 0, align 4
@reflog_expiry_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @cmd_reflog_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_reflog_delete(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.expire_reflog_policy_cb, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.object_id, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = call i32 @memset(%struct.expire_reflog_policy_cb* %8, i32 0, i32 8)
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %88, %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %91

23:                                               ; preds = %19
  %24 = load i8**, i8*** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32, %23
  %37 = load i32, i32* @EXPIRE_REFLOGS_DRY_RUN, align 4
  %38 = load i32, i32* %11, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %87

40:                                               ; preds = %32
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EXPIRE_REFLOGS_REWRITE, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %86

48:                                               ; preds = %40
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @EXPIRE_REFLOGS_UPDATE_REF, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %85

56:                                               ; preds = %48
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @EXPIRE_REFLOGS_VERBOSE, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %84

64:                                               ; preds = %56
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %91

71:                                               ; preds = %64
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 45
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i8*, i8** @reflog_delete_usage, align 8
  %79 = call i32 @_(i8* %78)
  %80 = call i32 @usage(i32 %79)
  br label %82

81:                                               ; preds = %71
  br label %91

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %52
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %36
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %19

91:                                               ; preds = %81, %68, %19
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %92, %93
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %98 = call i32 (i32, ...) @error(i32 %97)
  store i32 %98, i32* %4, align 4
  br label %194

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %189, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %192

104:                                              ; preds = %100
  %105 = load i8**, i8*** %6, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @strstr(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %110, i8** %13, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %104
  %114 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %115 = load i8**, i8*** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 (i32, ...) @error(i32 %114, i8* %119)
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %189

123:                                              ; preds = %104
  %124 = load i8**, i8*** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i8**, i8*** %6, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %129 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32 @dwim_log(i8* %128, i32 %138, %struct.object_id* %14, i8** %16)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %123
  %142 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %143 = load i8**, i8*** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i32, ...) @error(i32 %142, i8* %147)
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  br label %189

151:                                              ; preds = %123
  %152 = load i8*, i8** %13, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = call i32 @strtoul(i8* %153, i8** %15, i32 10)
  store i32 %154, i32* %17, align 4
  %155 = load i8*, i8** %15, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 125
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load i32, i32* %17, align 4
  %161 = sub nsw i32 0, %160
  %162 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %8, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load i8*, i8** %16, align 8
  %165 = load i32, i32* @count_reflog_ent, align 4
  %166 = call i32 @for_each_reflog_ent(i8* %164, i32 %165, %struct.expire_reflog_policy_cb* %8)
  br label %178

167:                                              ; preds = %151
  %168 = load i8*, i8** %13, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  %170 = call i32 @approxidate(i8* %169)
  %171 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %8, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i8*, i8** %16, align 8
  %174 = load i32, i32* @count_reflog_ent, align 4
  %175 = call i32 @for_each_reflog_ent(i8* %173, i32 %174, %struct.expire_reflog_policy_cb* %8)
  %176 = getelementptr inbounds %struct.expire_reflog_policy_cb, %struct.expire_reflog_policy_cb* %8, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %167, %159
  %179 = load i8*, i8** %16, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @reflog_expiry_prepare, align 4
  %182 = load i32, i32* @should_expire_reflog_ent, align 4
  %183 = load i32, i32* @reflog_expiry_cleanup, align 4
  %184 = call i32 @reflog_expire(i8* %179, %struct.object_id* %14, i32 %180, i32 %181, i32 %182, i32 %183, %struct.expire_reflog_policy_cb* %8)
  %185 = load i32, i32* %10, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %10, align 4
  %187 = load i8*, i8** %16, align 8
  %188 = call i32 @free(i8* %187)
  br label %189

189:                                              ; preds = %178, %141, %113
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %9, align 4
  br label %100

192:                                              ; preds = %100
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %192, %96
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @memset(%struct.expire_reflog_policy_cb*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @error(i32, ...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @dwim_log(i8*, i32, %struct.object_id*, i8**) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @for_each_reflog_ent(i8*, i32, %struct.expire_reflog_policy_cb*) #1

declare dso_local i32 @approxidate(i8*) #1

declare dso_local i32 @reflog_expire(i8*, %struct.object_id*, i32, i32, i32, i32, %struct.expire_reflog_policy_cb*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
