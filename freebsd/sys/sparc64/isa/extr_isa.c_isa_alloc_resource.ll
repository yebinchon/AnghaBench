; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_isa.c_isa_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/isa/extr_isa.c_isa_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_list = type { i32 }
%struct.resource_list_entry = type { i32, i32 }

@ISA_NIRQ = common dso_local global i32 0, align 4
@ISA_NDRQ = common dso_local global i32 0, align 4
@ISA_NMEM = common dso_local global i32 0, align 4
@ISA_NPORT = common dso_local global i32 0, align 4
@isa_mem_base = common dso_local global i64 0, align 8
@isa_mem_limit = common dso_local global i64 0, align 8
@isa_io_base = common dso_local global i64 0, align 8
@isa_io_limit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @isa_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.resource_list*, align 8
  %21 = alloca %struct.resource_list_entry*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @device_get_parent(i32 %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @RMAN_IS_DEFAULT_RANGE(i32 %29, i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32 %32, i32 %33)
  store %struct.resource_list* %34, %struct.resource_list** %20, align 8
  %35 = load i32, i32* %18, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %94, label %37

37:                                               ; preds = %8
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %94, label %40

40:                                               ; preds = %37
  %41 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %41, i32 %42, i32 %44)
  store %struct.resource_list_entry* %45, %struct.resource_list_entry** %21, align 8
  %46 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %47 = icmp ne %struct.resource_list_entry* %46, null
  br i1 %47, label %93, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  switch i32 %54, label %83 [
    i32 129, label %55
    i32 131, label %62
    i32 128, label %69
    i32 130, label %76
  ]

55:                                               ; preds = %53
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ISA_NIRQ, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

61:                                               ; preds = %55
  br label %84

62:                                               ; preds = %53
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ISA_NDRQ, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

68:                                               ; preds = %62
  br label %84

69:                                               ; preds = %53
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ISA_NMEM, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

75:                                               ; preds = %69
  br label %84

76:                                               ; preds = %53
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ISA_NPORT, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

82:                                               ; preds = %76
  br label %84

83:                                               ; preds = %53
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

84:                                               ; preds = %82, %75, %68, %61
  %85 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @resource_list_add(%struct.resource_list* %85, i32 %86, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %40
  br label %94

94:                                               ; preds = %93, %37, %8
  %95 = load i32, i32* %18, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %159, label %97

97:                                               ; preds = %94
  %98 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.resource_list_entry* @resource_list_find(%struct.resource_list* %98, i32 %99, i32 %101)
  store %struct.resource_list_entry* %102, %struct.resource_list_entry** %21, align 8
  %103 = icmp eq %struct.resource_list_entry* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

105:                                              ; preds = %97
  store i64 0, i64* %23, align 8
  store i64 0, i64* %22, align 8
  %106 = load i32, i32* %12, align 4
  switch i32 %106, label %133 [
    i32 128, label %107
    i32 130, label %112
    i32 129, label %117
    i32 131, label %132
  ]

107:                                              ; preds = %105
  %108 = load i64, i64* @isa_mem_base, align 8
  store i64 %108, i64* %22, align 8
  %109 = load i64, i64* %22, align 8
  %110 = load i64, i64* @isa_mem_limit, align 8
  %111 = add nsw i64 %109, %110
  store i64 %111, i64* %23, align 8
  br label %134

112:                                              ; preds = %105
  %113 = load i64, i64* @isa_io_base, align 8
  store i64 %113, i64* %22, align 8
  %114 = load i64, i64* %22, align 8
  %115 = load i64, i64* @isa_io_limit, align 8
  %116 = add nsw i64 %114, %115
  store i64 %116, i64* %23, align 8
  br label %134

117:                                              ; preds = %105
  %118 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %119 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %122 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %117
  %126 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %127 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sle i32 %128, 7
  br i1 %129, label %130, label %131

130:                                              ; preds = %125, %117
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

131:                                              ; preds = %125
  br label %134

132:                                              ; preds = %105
  br label %134

133:                                              ; preds = %105
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

134:                                              ; preds = %132, %131, %112, %107
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 128
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %138, 130
  br i1 %139, label %140, label %158

140:                                              ; preds = %137, %134
  %141 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %142 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* %22, align 8
  %145 = load i64, i64* %23, align 8
  %146 = call i32 @INRANGE(i32 %143, i64 %144, i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load %struct.resource_list_entry*, %struct.resource_list_entry** %21, align 8
  %150 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %22, align 8
  %153 = load i64, i64* %23, align 8
  %154 = call i32 @INRANGE(i32 %151, i64 %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %148, %140
  store %struct.resource* null, %struct.resource** %9, align 8
  br label %170

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %137
  br label %159

159:                                              ; preds = %158, %94
  %160 = load %struct.resource_list*, %struct.resource_list** %20, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32*, i32** %13, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %17, align 4
  %169 = call %struct.resource* @resource_list_alloc(%struct.resource_list* %160, i32 %161, i32 %162, i32 %163, i32* %164, i32 %165, i32 %166, i32 %167, i32 %168)
  store %struct.resource* %169, %struct.resource** %9, align 8
  br label %170

170:                                              ; preds = %159, %156, %133, %130, %104, %83, %81, %74, %67, %60, %52
  %171 = load %struct.resource*, %struct.resource** %9, align 8
  ret %struct.resource* %171
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @RMAN_IS_DEFAULT_RANGE(i32, i32) #1

declare dso_local %struct.resource_list* @BUS_GET_RESOURCE_LIST(i32, i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(%struct.resource_list*, i32, i32) #1

declare dso_local i32 @resource_list_add(%struct.resource_list*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INRANGE(i32, i64, i64) #1

declare dso_local %struct.resource* @resource_list_alloc(%struct.resource_list*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
