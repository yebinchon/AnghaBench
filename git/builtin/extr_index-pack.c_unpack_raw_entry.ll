; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_unpack_raw_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_unpack_raw_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.object_entry = type { i64, i64, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.object_id = type { i32 }

@consumed_bytes = common dso_local global i8* null, align 8
@input_crc32 = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"offset value overflow for delta base object\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"delta base offset is out of bound\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"unknown object type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.object_entry*, i32*, %struct.object_id*, %struct.object_id*)* @unpack_raw_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unpack_raw_entry(%struct.object_entry* %0, i32* %1, %struct.object_id* %2, %struct.object_id* %3) #0 {
  %5 = alloca %struct.object_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.object_entry* %0, %struct.object_entry** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store %struct.object_id* %3, %struct.object_id** %8, align 8
  %15 = load i8*, i8** @consumed_bytes, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %18 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = call i32 @crc32(i32 0, i32* null, i32 0)
  store i32 %20, i32* @input_crc32, align 4
  %21 = call i8* @fill(i32 1)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  store i64 %24, i64* %11, align 8
  %25 = call i32 @use(i32 1)
  %26 = load i64, i64* %11, align 8
  %27 = lshr i64 %26, 4
  %28 = and i64 %27, 7
  %29 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %30 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %11, align 8
  %32 = and i64 %31, 15
  store i64 %32, i64* %10, align 8
  store i32 4, i32* %13, align 4
  br label %33

33:                                               ; preds = %37, %4
  %34 = load i64, i64* %11, align 8
  %35 = and i64 %34, 128
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = call i8* @fill(i32 1)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  store i64 %41, i64* %11, align 8
  %42 = call i32 @use(i32 1)
  %43 = load i64, i64* %11, align 8
  %44 = and i64 %43, 127
  %45 = load i32, i32* %13, align 4
  %46 = zext i32 %45 to i64
  %47 = shl i64 %44, %46
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* %13, align 4
  %51 = add i32 %50, 7
  store i32 %51, i32* %13, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %55 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %57 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  switch i64 %58, label %142 [
    i64 130, label %59
    i64 131, label %72
    i64 132, label %141
    i64 128, label %141
    i64 133, label %141
    i64 129, label %141
  ]

59:                                               ; preds = %52
  %60 = load %struct.object_id*, %struct.object_id** %7, align 8
  %61 = getelementptr inbounds %struct.object_id, %struct.object_id* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @fill(i32 %65)
  %67 = call i32 @hashcpy(i32 %62, i8* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @use(i32 %70)
  br label %152

72:                                               ; preds = %52
  %73 = call i8* @fill(i32 1)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i64
  store i64 %76, i64* %11, align 8
  %77 = call i32 @use(i32 1)
  %78 = load i64, i64* %11, align 8
  %79 = and i64 %78, 127
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %101, %72
  %82 = load i64, i64* %11, align 8
  %83 = and i64 %82, 128
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @MSB(i32 %91, i32 7)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90, %85
  %95 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %96 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %100 = call i32 (i32, i32, ...) @bad_object(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %90
  %102 = call i8* @fill(i32 1)
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  store i64 %105, i64* %11, align 8
  %106 = call i32 @use(i32 1)
  %107 = load i32, i32* %12, align 4
  %108 = shl i32 %107, 7
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = and i64 %110, 127
  %112 = add i64 %109, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  br label %81

114:                                              ; preds = %81
  %115 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %116 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %114
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %129 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %127, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %125, %114
  %134 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %135 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %139 = call i32 (i32, i32, ...) @bad_object(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %133, %125
  br label %152

141:                                              ; preds = %52, %52, %52, %52
  br label %152

142:                                              ; preds = %52
  %143 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %144 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %148 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %149 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32, i32, ...) @bad_object(i32 %146, i32 %147, i64 %150)
  br label %152

152:                                              ; preds = %142, %141, %140, %59
  %153 = load i8*, i8** @consumed_bytes, align 8
  %154 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %155 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = sub i64 0, %158
  %160 = getelementptr i8, i8* %153, i64 %159
  %161 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %162 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %161, i32 0, i32 3
  store i8* %160, i8** %162, align 8
  %163 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %164 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8*
  %169 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %170 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %173 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.object_id*, %struct.object_id** %8, align 8
  %176 = call i8* @unpack_entry_data(i8* %168, i64 %171, i64 %174, %struct.object_id* %175)
  store i8* %176, i8** %14, align 8
  %177 = load i32, i32* @input_crc32, align 4
  %178 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %179 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  %181 = load i8*, i8** %14, align 8
  ret i8* %181
}

declare dso_local i32 @crc32(i32, i32*, i32) #1

declare dso_local i8* @fill(i32) #1

declare dso_local i32 @use(i32) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i32 @MSB(i32, i32) #1

declare dso_local i32 @bad_object(i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @unpack_entry_data(i8*, i64, i64, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
