; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.object_entry = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@pack_to_stdout = common dso_local global i32 0, align 4
@pack_size_limit = common dso_local global i64 0, align 8
@nr_written = common dso_local global i32 0, align 4
@reuse_object = common dso_local global i32 0, align 4
@OBJ_REF_DELTA = common dso_local global i64 0, align 8
@OBJ_OFS_DELTA = common dso_local global i64 0, align 8
@written_delta = common dso_local global i32 0, align 4
@written = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hashfile*, %struct.object_entry*, i64)* @write_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_object(%struct.hashfile* %0, %struct.object_entry* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hashfile*, align 8
  %6 = alloca %struct.object_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %5, align 8
  store %struct.object_entry* %1, %struct.object_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @pack_to_stdout, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %16 = call i32 @crc32_begin(%struct.hashfile* %15)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i64, i64* @pack_size_limit, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @nr_written, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %17
  store i64 0, i64* %8, align 8
  br label %34

24:                                               ; preds = %20
  %25 = load i64, i64* @pack_size_limit, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 1, i64* %8, align 8
  br label %33

29:                                               ; preds = %24
  %30 = load i64, i64* @pack_size_limit, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %29, %28
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %36 = call %struct.TYPE_6__* @DELTA(%struct.object_entry* %35)
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %63

39:                                               ; preds = %34
  %40 = load i64, i64* @pack_size_limit, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 1, i32* %10, align 4
  br label %62

43:                                               ; preds = %39
  %44 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %45 = call %struct.TYPE_6__* @DELTA(%struct.object_entry* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %61

51:                                               ; preds = %43
  %52 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %53 = call %struct.TYPE_6__* @DELTA(%struct.object_entry* %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %60

59:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %38
  %64 = load i32, i32* @reuse_object, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %102

67:                                               ; preds = %63
  %68 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %69 = call i32 @IN_PACK(%struct.object_entry* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %101

72:                                               ; preds = %67
  %73 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %74 = call i64 @oe_type(%struct.object_entry* %73)
  %75 = load i64, i64* @OBJ_REF_DELTA, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %79 = call i64 @oe_type(%struct.object_entry* %78)
  %80 = load i64, i64* @OBJ_OFS_DELTA, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %11, align 4
  br label %100

84:                                               ; preds = %77
  %85 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %86 = call i64 @oe_type(%struct.object_entry* %85)
  %87 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %88 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %99

92:                                               ; preds = %84
  %93 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %94 = call %struct.TYPE_6__* @DELTA(%struct.object_entry* %93)
  %95 = icmp ne %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  br label %98

97:                                               ; preds = %92
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %99

99:                                               ; preds = %98, %91
  br label %100

100:                                              ; preds = %99, %82
  br label %101

101:                                              ; preds = %100, %71
  br label %102

102:                                              ; preds = %101, %66
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %107 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i64 @write_no_reuse_object(%struct.hashfile* %106, %struct.object_entry* %107, i64 %108, i32 %109)
  store i64 %110, i64* %9, align 8
  br label %117

111:                                              ; preds = %102
  %112 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %113 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @write_reuse_object(%struct.hashfile* %112, %struct.object_entry* %113, i64 %114, i32 %115)
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %111, %105
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store i64 0, i64* %4, align 8
  br label %140

121:                                              ; preds = %117
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @written_delta, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* @written_delta, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* @written, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @written, align 4
  %130 = load i32, i32* @pack_to_stdout, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.hashfile*, %struct.hashfile** %5, align 8
  %134 = call i32 @crc32_end(%struct.hashfile* %133)
  %135 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %136 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %132, %127
  %139 = load i64, i64* %9, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %138, %120
  %141 = load i64, i64* %4, align 8
  ret i64 %141
}

declare dso_local i32 @crc32_begin(%struct.hashfile*) #1

declare dso_local %struct.TYPE_6__* @DELTA(%struct.object_entry*) #1

declare dso_local i32 @IN_PACK(%struct.object_entry*) #1

declare dso_local i64 @oe_type(%struct.object_entry*) #1

declare dso_local i64 @write_no_reuse_object(%struct.hashfile*, %struct.object_entry*, i64, i32) #1

declare dso_local i64 @write_reuse_object(%struct.hashfile*, %struct.object_entry*, i64, i32) #1

declare dso_local i32 @crc32_end(%struct.hashfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
