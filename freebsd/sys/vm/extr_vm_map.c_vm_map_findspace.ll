; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_findspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_findspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_26__, i32* }
%struct.TYPE_26__ = type { i64, i64, i64, %struct.TYPE_26__*, %struct.TYPE_26__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_findspace(%struct.TYPE_25__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = call i32 @vm_map_min(%struct.TYPE_25__* %15)
  %17 = call i8* @MAX(i64 %14, i32 %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = call i64 @vm_map_max(%struct.TYPE_25__* %20)
  %22 = icmp sge i64 %19, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = call i64 @vm_map_max(%struct.TYPE_25__* %25)
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp sgt i64 %24, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23, %3
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = call i64 @vm_map_max(%struct.TYPE_25__* %31)
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %32, %33
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %206

36:                                               ; preds = %23
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  store i64 %42, i64* %4, align 8
  br label %206

43:                                               ; preds = %36
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call %struct.TYPE_26__* @vm_map_splay_split(%struct.TYPE_25__* %44, i64 %45, i64 %46, %struct.TYPE_26__** %8, %struct.TYPE_26__** %9)
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %10, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %52 = icmp ne %struct.TYPE_26__* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %43
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %6, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %58, align 8
  %60 = icmp ne %struct.TYPE_26__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %61, %53
  br label %84

64:                                               ; preds = %43
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = icmp ne %struct.TYPE_26__* %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %70, %struct.TYPE_26__** %10, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  store %struct.TYPE_26__* %73, %struct.TYPE_26__** %9, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %75, align 8
  br label %83

76:                                               ; preds = %64
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %77, %struct.TYPE_26__** %10, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %79, align 8
  store %struct.TYPE_26__* %80, %struct.TYPE_26__** %8, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 3
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %82, align 8
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %89 = call i32 @vm_map_splay_merge(%struct.TYPE_25__* %85, %struct.TYPE_26__* %86, %struct.TYPE_26__* %87, %struct.TYPE_26__* %88)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %91 = call i32 @VM_MAP_ASSERT_CONSISTENT(%struct.TYPE_25__* %90)
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub nsw i64 %93, %94
  %96 = icmp sle i64 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i64, i64* %6, align 8
  store i64 %98, i64* %4, align 8
  br label %206

99:                                               ; preds = %84
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = icmp eq %struct.TYPE_26__* %102, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %105, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %104, %99
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %114 = call i64 @vm_map_max(%struct.TYPE_25__* %113)
  %115 = load i64, i64* %7, align 8
  %116 = sub nsw i64 %114, %115
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %4, align 8
  br label %206

118:                                              ; preds = %104
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** %8, align 8
  store i64 0, i64* %12, align 8
  br label %121

121:                                              ; preds = %152, %118
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp sle i64 %122, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %121
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %132 = call i64 @vm_map_entry_max_free_left(%struct.TYPE_26__* %130, %struct.TYPE_26__* %131)
  %133 = icmp sle i64 %129, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @SPLAY_LEFT_STEP(%struct.TYPE_26__* %126, %struct.TYPE_26__* %127, %struct.TYPE_26__* %128, i32 %134)
  br label %147

136:                                              ; preds = %121
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %140 = load i64, i64* %7, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %143 = call i64 @vm_map_entry_max_free_left(%struct.TYPE_26__* %141, %struct.TYPE_26__* %142)
  %144 = icmp sgt i64 %140, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @SPLAY_RIGHT_STEP(%struct.TYPE_26__* %137, %struct.TYPE_26__* %138, %struct.TYPE_26__* %139, i32 %145)
  br label %147

147:                                              ; preds = %136, %125
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %149 = icmp eq %struct.TYPE_26__* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %156

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %155 = call i64 @vm_map_entry_max_free_left(%struct.TYPE_26__* %153, %struct.TYPE_26__* %154)
  store i64 %155, i64* %12, align 8
  br label %121

156:                                              ; preds = %150
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %157, %struct.TYPE_26__** %10, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  store %struct.TYPE_26__* %160, %struct.TYPE_26__** %8, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 3
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %162, align 8
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  %166 = icmp ne %struct.TYPE_26__* %163, %165
  br i1 %166, label %167, label %194

167:                                              ; preds = %156
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %168, %struct.TYPE_26__** %11, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %170, align 8
  store %struct.TYPE_26__* %171, %struct.TYPE_26__** %9, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %173, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %179 = call i32 @vm_map_splay_merge(%struct.TYPE_25__* %174, %struct.TYPE_26__* %175, %struct.TYPE_26__* %177, %struct.TYPE_26__* %178)
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %182 = call i64 @vm_map_entry_max_free_left(%struct.TYPE_26__* %180, %struct.TYPE_26__* %181)
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = call i32 @vm_map_entry_max_free_right(%struct.TYPE_26__* %183, %struct.TYPE_26__* %185)
  %187 = call i8* @MAX(i64 %182, i32 %186)
  %188 = ptrtoint i8* %187 to i64
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 3
  store %struct.TYPE_26__* %191, %struct.TYPE_26__** %193, align 8
  br label %194

194:                                              ; preds = %167, %156
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 0
  %200 = call i32 @vm_map_splay_merge(%struct.TYPE_25__* %195, %struct.TYPE_26__* %196, %struct.TYPE_26__* %197, %struct.TYPE_26__* %199)
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %202 = call i32 @VM_MAP_ASSERT_CONSISTENT(%struct.TYPE_25__* %201)
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %4, align 8
  br label %206

206:                                              ; preds = %194, %112, %97, %41, %30
  %207 = load i64, i64* %4, align 8
  ret i64 %207
}

declare dso_local i8* @MAX(i64, i32) #1

declare dso_local i32 @vm_map_min(%struct.TYPE_25__*) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @vm_map_splay_split(%struct.TYPE_25__*, i64, i64, %struct.TYPE_26__**, %struct.TYPE_26__**) #1

declare dso_local i32 @vm_map_splay_merge(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @VM_MAP_ASSERT_CONSISTENT(%struct.TYPE_25__*) #1

declare dso_local i32 @SPLAY_LEFT_STEP(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i64 @vm_map_entry_max_free_left(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @SPLAY_RIGHT_STEP(%struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @vm_map_entry_max_free_right(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
