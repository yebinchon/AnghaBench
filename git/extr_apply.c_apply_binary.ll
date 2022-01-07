; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_apply_binary.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_apply_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.apply_state = type { i32 }
%struct.image = type { i8*, i64 }
%struct.patch = type { i8*, i8*, i8*, i8* }
%struct.object_id = type { i32 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"cannot apply binary patch to '%s' without full index line\00", align 1
@blob_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"the patch applies to '%s' (%s), which does not match the current contents.\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"the patch applies to an empty '%s' but it is not empty\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"the necessary postimage %s for '%s' cannot be read\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"binary patch does not apply to '%s'\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"binary patch to '%s' creates incorrect result (expecting %s, got %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.image*, %struct.patch*)* @apply_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_binary(%struct.apply_state* %0, %struct.image* %1, %struct.patch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.image*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.image* %1, %struct.image** %6, align 8
  store %struct.patch* %2, %struct.patch** %7, align 8
  %14 = load %struct.patch*, %struct.patch** %7, align 8
  %15 = getelementptr inbounds %struct.patch, %struct.patch* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.patch*, %struct.patch** %7, align 8
  %20 = getelementptr inbounds %struct.patch, %struct.patch* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.patch*, %struct.patch** %7, align 8
  %24 = getelementptr inbounds %struct.patch, %struct.patch* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i8* [ %21, %18 ], [ %25, %22 ]
  store i8* %27, i8** %8, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.patch*, %struct.patch** %7, align 8
  %32 = getelementptr inbounds %struct.patch, %struct.patch* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %56, label %37

37:                                               ; preds = %26
  %38 = load %struct.patch*, %struct.patch** %7, align 8
  %39 = getelementptr inbounds %struct.patch, %struct.patch* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.patch*, %struct.patch** %7, align 8
  %46 = getelementptr inbounds %struct.patch, %struct.patch* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @get_oid_hex(i8* %47, %struct.object_id* %9)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.patch*, %struct.patch** %7, align 8
  %52 = getelementptr inbounds %struct.patch, %struct.patch* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @get_oid_hex(i8* %53, %struct.object_id* %9)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50, %44, %37, %26
  %57 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (i32, i8*, ...) @error(i32 %57, i8* %58)
  store i32 %59, i32* %4, align 4
  br label %164

60:                                               ; preds = %50
  %61 = load %struct.patch*, %struct.patch** %7, align 8
  %62 = getelementptr inbounds %struct.patch, %struct.patch* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %86

65:                                               ; preds = %60
  %66 = load %struct.image*, %struct.image** %6, align 8
  %67 = getelementptr inbounds %struct.image, %struct.image* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.image*, %struct.image** %6, align 8
  %70 = getelementptr inbounds %struct.image, %struct.image* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @blob_type, align 4
  %73 = call i32 @hash_object_file(i8* %68, i64 %71, i32 %72, %struct.object_id* %9)
  %74 = call i8* @oid_to_hex(%struct.object_id* %9)
  %75 = load %struct.patch*, %struct.patch** %7, align 8
  %76 = getelementptr inbounds %struct.patch, %struct.patch* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %74, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %8, align 8
  %83 = call i8* @oid_to_hex(%struct.object_id* %9)
  %84 = call i32 (i32, i8*, ...) @error(i32 %81, i8* %82, i8* %83)
  store i32 %84, i32* %4, align 4
  br label %164

85:                                               ; preds = %65
  br label %96

86:                                               ; preds = %60
  %87 = load %struct.image*, %struct.image** %6, align 8
  %88 = getelementptr inbounds %struct.image, %struct.image* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 (i32, i8*, ...) @error(i32 %92, i8* %93)
  store i32 %94, i32* %4, align 4
  br label %164

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %85
  %97 = load %struct.patch*, %struct.patch** %7, align 8
  %98 = getelementptr inbounds %struct.patch, %struct.patch* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @get_oid_hex(i8* %99, %struct.object_id* %9)
  %101 = call i64 @is_null_oid(%struct.object_id* %9)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.image*, %struct.image** %6, align 8
  %105 = call i32 @clear_image(%struct.image* %104)
  store i32 0, i32* %4, align 4
  br label %164

106:                                              ; preds = %96
  %107 = call i64 @has_object_file(%struct.object_id* %9)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = call i8* @read_object_file(%struct.object_id* %9, i32* %11, i64* %12)
  store i8* %110, i8** %13, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %115 = load %struct.patch*, %struct.patch** %7, align 8
  %116 = getelementptr inbounds %struct.patch, %struct.patch* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 (i32, i8*, ...) @error(i32 %114, i8* %117, i8* %118)
  store i32 %119, i32* %4, align 4
  br label %164

120:                                              ; preds = %109
  %121 = load %struct.image*, %struct.image** %6, align 8
  %122 = call i32 @clear_image(%struct.image* %121)
  %123 = load i8*, i8** %13, align 8
  %124 = load %struct.image*, %struct.image** %6, align 8
  %125 = getelementptr inbounds %struct.image, %struct.image* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load %struct.image*, %struct.image** %6, align 8
  %128 = getelementptr inbounds %struct.image, %struct.image* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  br label %163

129:                                              ; preds = %106
  %130 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %131 = load %struct.image*, %struct.image** %6, align 8
  %132 = load %struct.patch*, %struct.patch** %7, align 8
  %133 = call i64 @apply_binary_fragment(%struct.apply_state* %130, %struct.image* %131, %struct.patch* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 (i32, i8*, ...) @error(i32 %136, i8* %137)
  store i32 %138, i32* %4, align 4
  br label %164

139:                                              ; preds = %129
  %140 = load %struct.image*, %struct.image** %6, align 8
  %141 = getelementptr inbounds %struct.image, %struct.image* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.image*, %struct.image** %6, align 8
  %144 = getelementptr inbounds %struct.image, %struct.image* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @blob_type, align 4
  %147 = call i32 @hash_object_file(i8* %142, i64 %145, i32 %146, %struct.object_id* %9)
  %148 = call i8* @oid_to_hex(%struct.object_id* %9)
  %149 = load %struct.patch*, %struct.patch** %7, align 8
  %150 = getelementptr inbounds %struct.patch, %struct.patch* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @strcmp(i8* %148, i8* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %139
  %155 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i8*, i8** %8, align 8
  %157 = load %struct.patch*, %struct.patch** %7, align 8
  %158 = getelementptr inbounds %struct.patch, %struct.patch* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @oid_to_hex(%struct.object_id* %9)
  %161 = call i32 (i32, i8*, ...) @error(i32 %155, i8* %156, i8* %159, i8* %160)
  store i32 %161, i32* %4, align 4
  br label %164

162:                                              ; preds = %139
  br label %163

163:                                              ; preds = %162, %120
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %163, %154, %135, %113, %103, %91, %80, %56
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @hash_object_file(i8*, i64, i32, %struct.object_id*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @clear_image(%struct.image*) #1

declare dso_local i64 @has_object_file(%struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i64 @apply_binary_fragment(%struct.apply_state*, %struct.image*, %struct.patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
