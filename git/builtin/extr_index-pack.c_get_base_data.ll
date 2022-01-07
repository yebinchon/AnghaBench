; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_get_base_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_get_base_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base_data = type { i8*, i64, %struct.base_data*, %struct.object_entry* }
%struct.object_entry = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"failed to apply delta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.base_data*)* @get_base_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_base_data(%struct.base_data* %0) #0 {
  %2 = alloca %struct.base_data*, align 8
  %3 = alloca %struct.object_entry*, align 8
  %4 = alloca %struct.base_data**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.base_data* %0, %struct.base_data** %2, align 8
  %9 = load %struct.base_data*, %struct.base_data** %2, align 8
  %10 = getelementptr inbounds %struct.base_data, %struct.base_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %139, label %13

13:                                               ; preds = %1
  %14 = load %struct.base_data*, %struct.base_data** %2, align 8
  %15 = getelementptr inbounds %struct.base_data, %struct.base_data* %14, i32 0, i32 3
  %16 = load %struct.object_entry*, %struct.object_entry** %15, align 8
  store %struct.object_entry* %16, %struct.object_entry** %3, align 8
  store %struct.base_data** null, %struct.base_data*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %33, %13
  %18 = load %struct.base_data*, %struct.base_data** %2, align 8
  %19 = getelementptr inbounds %struct.base_data, %struct.base_data* %18, i32 0, i32 3
  %20 = load %struct.object_entry*, %struct.object_entry** %19, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @is_delta_type(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.base_data*, %struct.base_data** %2, align 8
  %27 = getelementptr inbounds %struct.base_data, %struct.base_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i1 [ false, %17 ], [ %30, %25 ]
  br i1 %32, label %33, label %48

33:                                               ; preds = %31
  %34 = load %struct.base_data**, %struct.base_data*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ALLOC_GROW(%struct.base_data** %34, i32 %36, i32 %37)
  %39 = load %struct.base_data*, %struct.base_data** %2, align 8
  %40 = load %struct.base_data**, %struct.base_data*** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.base_data*, %struct.base_data** %40, i64 %43
  store %struct.base_data* %39, %struct.base_data** %44, align 8
  %45 = load %struct.base_data*, %struct.base_data** %2, align 8
  %46 = getelementptr inbounds %struct.base_data, %struct.base_data* %45, i32 0, i32 2
  %47 = load %struct.base_data*, %struct.base_data** %46, align 8
  store %struct.base_data* %47, %struct.base_data** %2, align 8
  br label %17

48:                                               ; preds = %31
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %48
  %52 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %53 = call i8* @get_data_from_pack(%struct.object_entry* %52)
  %54 = load %struct.base_data*, %struct.base_data** %2, align 8
  %55 = getelementptr inbounds %struct.base_data, %struct.base_data* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %57 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.base_data*, %struct.base_data** %2, align 8
  %60 = getelementptr inbounds %struct.base_data, %struct.base_data* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.base_data*, %struct.base_data** %2, align 8
  %62 = getelementptr inbounds %struct.base_data, %struct.base_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.TYPE_4__* (...) @get_thread_data()
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.base_data*, %struct.base_data** %2, align 8
  %71 = call i32 @prune_base_data(%struct.base_data* %70)
  br label %72

72:                                               ; preds = %51, %48
  br label %73

73:                                               ; preds = %133, %72
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %136

76:                                               ; preds = %73
  %77 = load %struct.base_data**, %struct.base_data*** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.base_data*, %struct.base_data** %77, i64 %80
  %82 = load %struct.base_data*, %struct.base_data** %81, align 8
  store %struct.base_data* %82, %struct.base_data** %2, align 8
  %83 = load %struct.base_data*, %struct.base_data** %2, align 8
  %84 = getelementptr inbounds %struct.base_data, %struct.base_data* %83, i32 0, i32 3
  %85 = load %struct.object_entry*, %struct.object_entry** %84, align 8
  store %struct.object_entry* %85, %struct.object_entry** %3, align 8
  %86 = load %struct.base_data*, %struct.base_data** %2, align 8
  %87 = getelementptr inbounds %struct.base_data, %struct.base_data* %86, i32 0, i32 2
  %88 = load %struct.base_data*, %struct.base_data** %87, align 8
  %89 = call i8* @get_base_data(%struct.base_data* %88)
  store i8* %89, i8** %7, align 8
  %90 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %91 = call i8* @get_data_from_pack(%struct.object_entry* %90)
  store i8* %91, i8** %8, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.base_data*, %struct.base_data** %2, align 8
  %94 = getelementptr inbounds %struct.base_data, %struct.base_data* %93, i32 0, i32 2
  %95 = load %struct.base_data*, %struct.base_data** %94, align 8
  %96 = getelementptr inbounds %struct.base_data, %struct.base_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %100 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.base_data*, %struct.base_data** %2, align 8
  %103 = getelementptr inbounds %struct.base_data, %struct.base_data* %102, i32 0, i32 1
  %104 = call i8* @patch_delta(i8* %92, i64 %97, i8* %98, i64 %101, i64* %103)
  %105 = load %struct.base_data*, %struct.base_data** %2, align 8
  %106 = getelementptr inbounds %struct.base_data, %struct.base_data* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = bitcast i8* %107 to %struct.base_data**
  %109 = call i32 @free(%struct.base_data** %108)
  %110 = load %struct.base_data*, %struct.base_data** %2, align 8
  %111 = getelementptr inbounds %struct.base_data, %struct.base_data* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %76
  %115 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %116 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %120 = call i32 @bad_object(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %114, %76
  %122 = load %struct.base_data*, %struct.base_data** %2, align 8
  %123 = getelementptr inbounds %struct.base_data, %struct.base_data* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call %struct.TYPE_4__* (...) @get_thread_data()
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load %struct.base_data*, %struct.base_data** %2, align 8
  %132 = call i32 @prune_base_data(%struct.base_data* %131)
  br label %133

133:                                              ; preds = %121
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %5, align 4
  br label %73

136:                                              ; preds = %73
  %137 = load %struct.base_data**, %struct.base_data*** %4, align 8
  %138 = call i32 @free(%struct.base_data** %137)
  br label %139

139:                                              ; preds = %136, %1
  %140 = load %struct.base_data*, %struct.base_data** %2, align 8
  %141 = getelementptr inbounds %struct.base_data, %struct.base_data* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  ret i8* %142
}

declare dso_local i64 @is_delta_type(i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.base_data**, i32, i32) #1

declare dso_local i8* @get_data_from_pack(%struct.object_entry*) #1

declare dso_local %struct.TYPE_4__* @get_thread_data(...) #1

declare dso_local i32 @prune_base_data(%struct.base_data*) #1

declare dso_local i8* @patch_delta(i8*, i64, i8*, i64, i64*) #1

declare dso_local i32 @free(%struct.base_data**) #1

declare dso_local i32 @bad_object(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
