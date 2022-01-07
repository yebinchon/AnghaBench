; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_cat-file.c_print_object_or_die.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_cat-file.c_print_object_or_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batch_options = type { i8, i64 }
%struct.expand_data = type { i64, i64, %struct.TYPE_2__, i32, %struct.object_id }
%struct.TYPE_2__ = type { i64, i32 }
%struct.object_id = type { i32 }

@OBJ_BLOB = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"missing path for '%s'\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"could not convert '%s' %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid cmdmode: %c\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"object %s disappeared\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"object %s changed type!?\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"object %s changed size!?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batch_options*, %struct.expand_data*)* @print_object_or_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_object_or_die(%struct.batch_options* %0, %struct.expand_data* %1) #0 {
  %3 = alloca %struct.batch_options*, align 8
  %4 = alloca %struct.expand_data*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.batch_options* %0, %struct.batch_options** %3, align 8
  store %struct.expand_data* %1, %struct.expand_data** %4, align 8
  %12 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %13 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %12, i32 0, i32 4
  store %struct.object_id* %13, %struct.object_id** %5, align 8
  %14 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %15 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %20 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OBJ_BLOB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %112

24:                                               ; preds = %2
  %25 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %26 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @fflush(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %34 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %33, i32 0, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %108

37:                                               ; preds = %32
  %38 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %39 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.object_id*, %struct.object_id** %5, align 8
  %44 = call i32 @oid_to_hex(%struct.object_id* %43)
  %45 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %48 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 8
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 119
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %54 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.object_id*, %struct.object_id** %5, align 8
  %57 = call i64 @filter_object(i32 %55, i32 33188, %struct.object_id* %56, i8** %6, i64* %7)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.object_id*, %struct.object_id** %5, align 8
  %61 = call i32 @oid_to_hex(%struct.object_id* %60)
  %62 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %63 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  br label %101

67:                                               ; preds = %46
  %68 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %69 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %68, i32 0, i32 0
  %70 = load i8, i8* %69, align 8
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 99
  br i1 %72, label %73, label %95

73:                                               ; preds = %67
  %74 = load i32, i32* @the_repository, align 4
  %75 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %76 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.object_id*, %struct.object_id** %5, align 8
  %79 = call i32 @textconv_object(i32 %74, i32 %77, i32 33188, %struct.object_id* %78, i32 1, i8** %6, i64* %7)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load %struct.object_id*, %struct.object_id** %5, align 8
  %83 = call i8* @read_object_file(%struct.object_id* %82, i32* %8, i64* %7)
  store i8* %83, i8** %6, align 8
  br label %84

84:                                               ; preds = %81, %73
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load %struct.object_id*, %struct.object_id** %5, align 8
  %89 = call i32 @oid_to_hex(%struct.object_id* %88)
  %90 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %91 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %87, %84
  br label %100

95:                                               ; preds = %67
  %96 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %97 = getelementptr inbounds %struct.batch_options, %struct.batch_options* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 8
  %99 = call i32 @BUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8 signext %98)
  br label %100

100:                                              ; preds = %95, %94
  br label %101

101:                                              ; preds = %100, %66
  %102 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @batch_write(%struct.batch_options* %102, i8* %103, i64 %104)
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @free(i8* %106)
  br label %111

108:                                              ; preds = %32
  %109 = load %struct.object_id*, %struct.object_id** %5, align 8
  %110 = call i32 @stream_blob(%struct.object_id* %109)
  br label %111

111:                                              ; preds = %108, %101
  br label %155

112:                                              ; preds = %2
  %113 = load %struct.object_id*, %struct.object_id** %5, align 8
  %114 = call i8* @read_object_file(%struct.object_id* %113, i32* %9, i64* %10)
  store i8* %114, i8** %11, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load %struct.object_id*, %struct.object_id** %5, align 8
  %119 = call i32 @oid_to_hex(%struct.object_id* %118)
  %120 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %125 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.object_id*, %struct.object_id** %5, align 8
  %130 = call i32 @oid_to_hex(%struct.object_id* %129)
  %131 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %128, %121
  %133 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %134 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %132
  %139 = load i64, i64* %10, align 8
  %140 = load %struct.expand_data*, %struct.expand_data** %4, align 8
  %141 = getelementptr inbounds %struct.expand_data, %struct.expand_data* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load %struct.object_id*, %struct.object_id** %5, align 8
  %146 = call i32 @oid_to_hex(%struct.object_id* %145)
  %147 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %138, %132
  %149 = load %struct.batch_options*, %struct.batch_options** %3, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @batch_write(%struct.batch_options* %149, i8* %150, i64 %151)
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %148, %111
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @filter_object(i32, i32, %struct.object_id*, i8**, i64*) #1

declare dso_local i32 @textconv_object(i32, i32, i32, %struct.object_id*, i32, i8**, i64*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @BUG(i8*, i8 signext) #1

declare dso_local i32 @batch_write(%struct.batch_options*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @stream_blob(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
