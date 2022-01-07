; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_compute_layer_order.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_compute_layer_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.object_entry* }
%struct.object_entry = type { i32, i64 }

@to_pack = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@OBJ_TAG = common dso_local global i64 0, align 8
@OBJ_TREE = common dso_local global i64 0, align 8
@write_layer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry**, i32*)* @compute_layer_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_layer_order(%struct.object_entry** %0, i32* %1) #0 {
  %3 = alloca %struct.object_entry**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_entry*, align 8
  store %struct.object_entry** %0, %struct.object_entry*** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.object_entry*, %struct.object_entry** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 1), align 8
  store %struct.object_entry* %8, %struct.object_entry** %7, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %14, i64 %16
  %18 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %33

22:                                               ; preds = %13
  %23 = load %struct.object_entry**, %struct.object_entry*** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %25, i64 %27
  %29 = call i32 @add_to_write_order(%struct.object_entry** %23, i32* %24, %struct.object_entry* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %9

33:                                               ; preds = %21, %9
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %56, %33
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %40, i64 %42
  %44 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.object_entry**, %struct.object_entry*** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %50, i64 %52
  %54 = call i32 @add_to_write_order(%struct.object_entry** %48, i32* %49, %struct.object_entry* %53)
  br label %55

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %90, %59
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  %66 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %66, i64 %68
  %70 = call i64 @oe_type(%struct.object_entry* %69)
  %71 = load i64, i64* @OBJ_COMMIT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %74, i64 %76
  %78 = call i64 @oe_type(%struct.object_entry* %77)
  %79 = load i64, i64* @OBJ_TAG, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %90

82:                                               ; preds = %73, %65
  %83 = load %struct.object_entry**, %struct.object_entry*** %3, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %85, i64 %87
  %89 = call i32 @add_to_write_order(%struct.object_entry** %83, i32* %84, %struct.object_entry* %88)
  br label %90

90:                                               ; preds = %82, %81
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %61

93:                                               ; preds = %61
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %116, %93
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %100, i64 %102
  %104 = call i64 @oe_type(%struct.object_entry* %103)
  %105 = load i64, i64* @OBJ_TREE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %116

108:                                              ; preds = %99
  %109 = load %struct.object_entry**, %struct.object_entry*** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %111, i64 %113
  %115 = call i32 @add_to_write_order(%struct.object_entry** %109, i32* %110, %struct.object_entry* %114)
  br label %116

116:                                              ; preds = %108, %107
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %95

119:                                              ; preds = %95
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %150, %119
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @to_pack, i32 0, i32 0), align 8
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %121
  %126 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %127 = load i32, i32* %5, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %126, i64 %128
  %130 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %125
  %134 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %134, i64 %136
  %138 = call i64 @oe_layer(%struct.TYPE_3__* @to_pack, %struct.object_entry* %137)
  %139 = load i64, i64* @write_layer, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %133
  %142 = load %struct.object_entry**, %struct.object_entry*** %3, align 8
  %143 = load i32*, i32** %4, align 8
  %144 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %145 = load i32, i32* %5, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %144, i64 %146
  %148 = call i32 @add_family_to_write_order(%struct.object_entry** %142, i32* %143, %struct.object_entry* %147)
  br label %149

149:                                              ; preds = %141, %133, %125
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %121

153:                                              ; preds = %121
  ret void
}

declare dso_local i32 @add_to_write_order(%struct.object_entry**, i32*, %struct.object_entry*) #1

declare dso_local i64 @oe_type(%struct.object_entry*) #1

declare dso_local i64 @oe_layer(%struct.TYPE_3__*, %struct.object_entry*) #1

declare dso_local i32 @add_family_to_write_order(%struct.object_entry**, i32*, %struct.object_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
