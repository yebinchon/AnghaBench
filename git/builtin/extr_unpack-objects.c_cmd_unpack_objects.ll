; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_cmd_unpack_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_unpack-objects.c_cmd_unpack_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32*)*, i32 (i32*, i64, i64)*, i32 (i32*)* }
%struct.object_id = type { i32 }
%struct.pack_header = type { i8*, i8*, i8* }

@read_replace_refs = common dso_local global i64 0, align 8
@git_default_config = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@dry_run = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@recover = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"--strict\00", align 1
@strict = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"--strict=\00", align 1
@fsck_options = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"--pack_header=\00", align 1
@buffer = common dso_local global i64 0, align 8
@PACK_SIGNATURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"bad %s\00", align 1
@len = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"--max-input-size=\00", align 1
@max_input_size = common dso_local global i32 0, align 4
@unpack_usage = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@ctx = common dso_local global i32 0, align 4
@offset = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"fsck error in pack objects\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"final sha1 did not match\00", align 1
@has_errors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_unpack_objects(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pack_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* @read_replace_refs, align 8
  %13 = load i32, i32* @git_default_config, align 4
  %14 = call i32 @git_config(i32 %13, i32* null)
  %15 = call i32 @isatty(i32 2)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* @quiet, align 4
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %111, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %108

33:                                               ; preds = %23
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 1, i32* @dry_run, align 4
  br label %111

38:                                               ; preds = %33
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 1, i32* @quiet, align 4
  br label %111

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 1, i32* @recover, align 4
  br label %111

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* @strict, align 4
  br label %111

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 @skip_prefix(i8* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %9)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  store i32 1, i32* @strict, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @fsck_set_msg_types(i32* @fsck_options, i8* %58)
  br label %111

60:                                               ; preds = %53
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @starts_with(i8* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load i64, i64* @buffer, align 8
  %66 = inttoptr i64 %65 to %struct.pack_header*
  store %struct.pack_header* %66, %struct.pack_header** %10, align 8
  %67 = load i32, i32* @PACK_SIGNATURE, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = load %struct.pack_header*, %struct.pack_header** %10, align 8
  %70 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 14
  %73 = call i32 @strtoul(i8* %72, i8** %11, i32 10)
  %74 = call i8* @htonl(i32 %73)
  %75 = load %struct.pack_header*, %struct.pack_header** %10, align 8
  %76 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 44
  br i1 %80, label %81, label %84

81:                                               ; preds = %64
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81, %64
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i32 @strtoul(i8* %86, i8** %11, i32 10)
  %88 = call i8* @htonl(i32 %87)
  %89 = load %struct.pack_header*, %struct.pack_header** %10, align 8
  %90 = getelementptr inbounds %struct.pack_header, %struct.pack_header* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i8, i8* %91, align 1
  %93 = icmp ne i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %84
  store i32 24, i32* @len, align 4
  br label %111

98:                                               ; preds = %60
  %99 = load i8*, i8** %9, align 8
  %100 = call i64 @skip_prefix(i8* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %9)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @strtoumax(i8* %103, i32* null, i32 10)
  store i32 %104, i32* @max_input_size, align 4
  br label %111

105:                                              ; preds = %98
  %106 = load i32, i32* @unpack_usage, align 4
  %107 = call i32 @usage(i32 %106)
  br label %108

108:                                              ; preds = %105, %23
  %109 = load i32, i32* @unpack_usage, align 4
  %110 = call i32 @usage(i32 %109)
  br label %111

111:                                              ; preds = %108, %102, %97, %57, %52, %47, %42, %37
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %19

114:                                              ; preds = %19
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32 (i32*)*, i32 (i32*)** %116, align 8
  %118 = call i32 %117(i32* @ctx)
  %119 = call i32 (...) @unpack_all()
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32 (i32*, i64, i64)*, i32 (i32*, i64, i64)** %121, align 8
  %123 = load i64, i64* @buffer, align 8
  %124 = load i64, i64* @offset, align 8
  %125 = call i32 %122(i32* @ctx, i64 %123, i64 %124)
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32 (i32, i32*)*, i32 (i32, i32*)** %127, align 8
  %129 = getelementptr inbounds %struct.object_id, %struct.object_id* %8, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 %128(i32 %130, i32* @ctx)
  %132 = load i32, i32* @strict, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %114
  %135 = call i32 (...) @write_rest()
  %136 = call i64 @fsck_finish(i32* @fsck_options)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %140 = call i32 (i8*, ...) @die(i8* %139)
  br label %141

141:                                              ; preds = %138, %134
  br label %142

142:                                              ; preds = %141, %114
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @fill(i32 %145)
  %147 = getelementptr inbounds %struct.object_id, %struct.object_id* %8, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @hasheq(i32 %146, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %142
  %152 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %142
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @use(i32 %156)
  br label %158

158:                                              ; preds = %170, %153
  %159 = load i32, i32* @len, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load i64, i64* @buffer, align 8
  %163 = load i64, i64* @offset, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i32, i32* @len, align 4
  %166 = call i32 @xwrite(i32 1, i64 %164, i32 %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %178

170:                                              ; preds = %161
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @len, align 4
  %173 = sub nsw i32 %172, %171
  store i32 %173, i32* @len, align 4
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* @offset, align 8
  %177 = add nsw i64 %176, %175
  store i64 %177, i64* @offset, align 8
  br label %158

178:                                              ; preds = %169, %158
  %179 = load i32, i32* @has_errors, align 4
  ret i32 %179
}

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @fsck_set_msg_types(i32*, i8*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @strtoumax(i8*, i32*, i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @unpack_all(...) #1

declare dso_local i32 @write_rest(...) #1

declare dso_local i64 @fsck_finish(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @hasheq(i32, i32) #1

declare dso_local i32 @fill(i32) #1

declare dso_local i32 @use(i32) #1

declare dso_local i32 @xwrite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
