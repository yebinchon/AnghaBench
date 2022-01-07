; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_file.c_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64 }
%struct.bwstring = type { i32 }
%struct.file_reader = type { i32 }
%struct.keys_array = type { i32 }

@debug_sort = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"s1=<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"s2=<\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"; cmp1=%d\00", align 1
@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"; cmp2=%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bwstring*, align 8
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca %struct.bwstring*, align 8
  %7 = alloca %struct.file_reader*, align 8
  %8 = alloca %struct.keys_array*, align 8
  %9 = alloca %struct.keys_array*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.bwstring* null, %struct.bwstring** %6, align 8
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  store %struct.bwstring* null, %struct.bwstring** %4, align 8
  store %struct.bwstring* null, %struct.bwstring** %3, align 8
  store %struct.keys_array* null, %struct.keys_array** %9, align 8
  store %struct.keys_array* null, %struct.keys_array** %8, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call %struct.file_reader* @file_reader_init(i8* %14)
  store %struct.file_reader* %15, %struct.file_reader** %7, align 8
  store i32 0, i32* %10, align 4
  store i64 1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  %16 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %17 = icmp eq %struct.file_reader* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @err(i32 2, i32* null)
  br label %132

20:                                               ; preds = %1
  %21 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %22 = call %struct.bwstring* @file_reader_readline(%struct.file_reader* %21)
  store %struct.bwstring* %22, %struct.bwstring** %3, align 8
  %23 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %24 = icmp eq %struct.bwstring* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %132

26:                                               ; preds = %20
  %27 = call %struct.keys_array* (...) @keys_array_alloc()
  store %struct.keys_array* %27, %struct.keys_array** %8, align 8
  %28 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %29 = load %struct.keys_array*, %struct.keys_array** %8, align 8
  %30 = call i32 @preproc(%struct.bwstring* %28, %struct.keys_array* %29)
  %31 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %32 = call %struct.bwstring* @file_reader_readline(%struct.file_reader* %31)
  store %struct.bwstring* %32, %struct.bwstring** %4, align 8
  %33 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %34 = icmp eq %struct.bwstring* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %132

36:                                               ; preds = %26
  %37 = call %struct.keys_array* (...) @keys_array_alloc()
  store %struct.keys_array* %37, %struct.keys_array** %9, align 8
  %38 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %39 = load %struct.keys_array*, %struct.keys_array** %9, align 8
  %40 = call i32 @preproc(%struct.bwstring* %38, %struct.keys_array* %39)
  br label %41

41:                                               ; preds = %127, %36
  %42 = load i64, i64* @debug_sort, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @stdout, align 4
  %46 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %47 = call i32 @bwsprintf(i32 %45, %struct.bwstring* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @stdout, align 4
  %49 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %50 = call i32 @bwsprintf(i32 %48, %struct.bwstring* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %44, %41
  %52 = load %struct.keys_array*, %struct.keys_array** %9, align 8
  %53 = load %struct.keys_array*, %struct.keys_array** %8, align 8
  %54 = call i32 @key_coll(%struct.keys_array* %52, %struct.keys_array* %53, i32 0)
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* @debug_sort, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 3), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 1), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 2), align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %74 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %75 = call i32 @top_level_str_coll(%struct.bwstring* %73, %struct.bwstring* %74)
  store i32 %75, i32* %13, align 4
  %76 = load i64, i64* @debug_sort, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %13, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %72
  br label %82

82:                                               ; preds = %81, %69, %66, %63, %60
  %83 = load i64, i64* @debug_sort, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 1), align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %93, %90
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %101 = call %struct.bwstring* @bwsdup(%struct.bwstring* %100)
  store %struct.bwstring* %101, %struct.bwstring** %6, align 8
  %102 = load i64, i64* %11, align 8
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* @debug_sort, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %107 = call %struct.bwstring* @bwsdup(%struct.bwstring* %106)
  store %struct.bwstring* %107, %struct.bwstring** %5, align 8
  br label %108

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108, %96
  store i32 1, i32* %10, align 4
  br label %132

110:                                              ; preds = %93
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %11, align 8
  %113 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %114 = load %struct.keys_array*, %struct.keys_array** %8, align 8
  %115 = call i32 @clean_keys_array(%struct.bwstring* %113, %struct.keys_array* %114)
  %116 = load %struct.keys_array*, %struct.keys_array** %8, align 8
  %117 = call i32 @sort_free(%struct.keys_array* %116)
  %118 = load %struct.keys_array*, %struct.keys_array** %9, align 8
  store %struct.keys_array* %118, %struct.keys_array** %8, align 8
  store %struct.keys_array* null, %struct.keys_array** %9, align 8
  %119 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %120 = call i32 @bwsfree(%struct.bwstring* %119)
  %121 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  store %struct.bwstring* %121, %struct.bwstring** %3, align 8
  %122 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %123 = call %struct.bwstring* @file_reader_readline(%struct.file_reader* %122)
  store %struct.bwstring* %123, %struct.bwstring** %4, align 8
  %124 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %125 = icmp eq %struct.bwstring* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %110
  br label %132

127:                                              ; preds = %110
  %128 = call %struct.keys_array* (...) @keys_array_alloc()
  store %struct.keys_array* %128, %struct.keys_array** %9, align 8
  %129 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %130 = load %struct.keys_array*, %struct.keys_array** %9, align 8
  %131 = call i32 @preproc(%struct.bwstring* %129, %struct.keys_array* %130)
  br label %41

132:                                              ; preds = %126, %109, %35, %25, %18
  %133 = load %struct.keys_array*, %struct.keys_array** %8, align 8
  %134 = icmp ne %struct.keys_array* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %137 = load %struct.keys_array*, %struct.keys_array** %8, align 8
  %138 = call i32 @clean_keys_array(%struct.bwstring* %136, %struct.keys_array* %137)
  %139 = load %struct.keys_array*, %struct.keys_array** %8, align 8
  %140 = call i32 @sort_free(%struct.keys_array* %139)
  br label %141

141:                                              ; preds = %135, %132
  %142 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %143 = icmp ne %struct.bwstring* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.bwstring*, %struct.bwstring** %3, align 8
  %146 = call i32 @bwsfree(%struct.bwstring* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.keys_array*, %struct.keys_array** %9, align 8
  %149 = icmp ne %struct.keys_array* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %152 = load %struct.keys_array*, %struct.keys_array** %9, align 8
  %153 = call i32 @clean_keys_array(%struct.bwstring* %151, %struct.keys_array* %152)
  %154 = load %struct.keys_array*, %struct.keys_array** %9, align 8
  %155 = call i32 @sort_free(%struct.keys_array* %154)
  br label %156

156:                                              ; preds = %150, %147
  %157 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %158 = icmp ne %struct.bwstring* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %161 = call i32 @bwsfree(%struct.bwstring* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i8*, i8** %2, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %162
  %166 = load i8*, i8** %2, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %2, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %170, %165, %162
  br label %175

175:                                              ; preds = %181, %174
  %176 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %177 = call %struct.bwstring* @file_reader_readline(%struct.file_reader* %176)
  store %struct.bwstring* %177, %struct.bwstring** %4, align 8
  %178 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %179 = icmp eq %struct.bwstring* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %184

181:                                              ; preds = %175
  %182 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %183 = call i32 @bwsfree(%struct.bwstring* %182)
  br label %175

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %184, %170
  %186 = load %struct.file_reader*, %struct.file_reader** %7, align 8
  %187 = call i32 @file_reader_free(%struct.file_reader* %186)
  %188 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %189 = icmp ne %struct.bwstring* %188, null
  br i1 %189, label %190, label %212

190:                                              ; preds = %185
  %191 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %192 = load i8*, i8** %2, align 8
  %193 = load i64, i64* %12, align 8
  %194 = call i32 @bws_disorder_warnx(%struct.bwstring* %191, i8* %192, i64 %193)
  %195 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %196 = icmp ne %struct.bwstring* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %190
  %198 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %199 = load i8*, i8** %2, align 8
  %200 = load i64, i64* %12, align 8
  %201 = call i32 @bws_disorder_warnx(%struct.bwstring* %198, i8* %199, i64 %200)
  %202 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %203 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %204 = icmp ne %struct.bwstring* %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %197
  %206 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %207 = call i32 @bwsfree(%struct.bwstring* %206)
  br label %208

208:                                              ; preds = %205, %197
  br label %209

209:                                              ; preds = %208, %190
  %210 = load %struct.bwstring*, %struct.bwstring** %6, align 8
  %211 = call i32 @bwsfree(%struct.bwstring* %210)
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  store %struct.bwstring* null, %struct.bwstring** %6, align 8
  br label %212

212:                                              ; preds = %209, %185
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @exit(i32 %216) #3
  unreachable

218:                                              ; preds = %212
  ret i32 0
}

declare dso_local %struct.file_reader* @file_reader_init(i8*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local %struct.bwstring* @file_reader_readline(%struct.file_reader*) #1

declare dso_local %struct.keys_array* @keys_array_alloc(...) #1

declare dso_local i32 @preproc(%struct.bwstring*, %struct.keys_array*) #1

declare dso_local i32 @bwsprintf(i32, %struct.bwstring*, i8*, i8*) #1

declare dso_local i32 @key_coll(%struct.keys_array*, %struct.keys_array*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @top_level_str_coll(%struct.bwstring*, %struct.bwstring*) #1

declare dso_local %struct.bwstring* @bwsdup(%struct.bwstring*) #1

declare dso_local i32 @clean_keys_array(%struct.bwstring*, %struct.keys_array*) #1

declare dso_local i32 @sort_free(%struct.keys_array*) #1

declare dso_local i32 @bwsfree(%struct.bwstring*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @file_reader_free(%struct.file_reader*) #1

declare dso_local i32 @bws_disorder_warnx(%struct.bwstring*, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
