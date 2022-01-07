; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_append_obj_to_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_append_obj_to_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.hashfile = type { i32 }

@objects = common dso_local global %struct.object_entry* null, align 8
@nr_objects = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_entry* (%struct.hashfile*, i8*, i8*, i64, i32)* @append_obj_to_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_entry* @append_obj_to_pack(%struct.hashfile* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.hashfile*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.object_entry*, align 8
  %12 = alloca [10 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.hashfile* %0, %struct.hashfile** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.object_entry*, %struct.object_entry** @objects, align 8
  %17 = load i32, i32* @nr_objects, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @nr_objects, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %16, i64 %19
  store %struct.object_entry* %20, %struct.object_entry** %11, align 8
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %13, align 8
  %26 = and i64 %25, 15
  %27 = or i64 %24, %26
  %28 = trunc i64 %27 to i8
  store i8 %28, i8* %15, align 1
  %29 = load i64, i64* %13, align 8
  %30 = lshr i64 %29, 4
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %34, %5
  %32 = load i64, i64* %13, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i8, i8* %15, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, 128
  %38 = trunc i32 %37 to i8
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load i64, i64* %13, align 8
  %44 = and i64 %43, 127
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %15, align 1
  %46 = load i64, i64* %13, align 8
  %47 = lshr i64 %46, 7
  store i64 %47, i64* %13, align 8
  br label %31

48:                                               ; preds = %31
  %49 = load i8, i8* %15, align 1
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 %52
  store i8 %49, i8* %53, align 1
  %54 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %55 = call i32 @crc32_begin(%struct.hashfile* %54)
  %56 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %12, i64 0, i64 0
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @hashwrite(%struct.hashfile* %56, i8* %57, i32 %58)
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %62 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %61, i64 0
  %63 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %66 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %65, i64 0
  %67 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %70 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %69, i64 0
  %71 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %74 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %73, i64 0
  %75 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %77 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %76, i64 0
  %78 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %85 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %84, i64 1
  %86 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i64 %83, i64* %87, align 8
  %88 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @write_compressed(%struct.hashfile* %88, i8* %89, i64 %90)
  %92 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %93 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %92, i64 1
  %94 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %91
  store i64 %97, i64* %95, align 8
  %98 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %99 = call i32 @crc32_end(%struct.hashfile* %98)
  %100 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %101 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %100, i64 0
  %102 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %99, i32* %103, align 4
  %104 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %105 = call i32 @hashflush(%struct.hashfile* %104)
  %106 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  %107 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @hashcpy(i32 %110, i8* %111)
  %113 = load %struct.object_entry*, %struct.object_entry** %11, align 8
  ret %struct.object_entry* %113
}

declare dso_local i32 @crc32_begin(%struct.hashfile*) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i32) #1

declare dso_local i64 @write_compressed(%struct.hashfile*, i8*, i64) #1

declare dso_local i32 @crc32_end(%struct.hashfile*) #1

declare dso_local i32 @hashflush(%struct.hashfile*) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
