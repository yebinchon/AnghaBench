; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_e3_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_e3_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i32, i64*, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_e3_timer(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  br label %211

14:                                               ; preds = %12
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 9
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = call i32 @l(%struct.TYPE_7__* %17, i32 11, i32 0)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 9
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @u(%struct.TYPE_7__* %21, i32 11)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 9
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i32 @u(%struct.TYPE_7__* %26, i32 12)
  %28 = shl i32 %27, 8
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %4, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 9
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @u(%struct.TYPE_7__* %34, i32 13)
  %36 = shl i32 %35, 16
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %4, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 9
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = call i32 @u(%struct.TYPE_7__* %42, i32 9)
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %3, align 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 1
  %52 = call i32 @l(%struct.TYPE_7__* %47, i32 9, i32 %51)
  %53 = load i8, i8* %3, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %14
  br label %83

58:                                               ; preds = %14
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %63, %58
  br label %80

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = call i32 @l68(%struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %75, %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 2, i32* %82, align 4
  br label %108

83:                                               ; preds = %57
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94, %88, %83
  br label %105

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %104 = call i32 @l68(%struct.TYPE_6__* %103)
  br label %105

105:                                              ; preds = %100, %99
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %80
  %109 = load i8, i8* %3, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %119

114:                                              ; preds = %108
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, 4
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %113
  %120 = load i8, i8* %3, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i8, i8* %3, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 2
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %119
  br label %135

130:                                              ; preds = %124
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, 8
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %130, %129
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 2
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %148

142:                                              ; preds = %135
  %143 = load i64, i64* %4, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, %143
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %142, %141
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 4500
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  br label %211

158:                                              ; preds = %148
  store i32 47, i32* %5, align 4
  br label %159

159:                                              ; preds = %164, %158
  %160 = load i32, i32* %5, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %182

163:                                              ; preds = %159
  br label %167

164:                                              ; preds = %167
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %5, align 4
  br label %159

167:                                              ; preds = %163
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 7
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 7
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  store i64 %175, i64* %181, align 8
  br label %164

182:                                              ; preds = %162
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 7
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 0
  store i64 %185, i64* %189, align 8
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %192
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = sdiv i32 %201, 5
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 5
  store i64 0, i64* %208, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  store i32 0, i32* %210, align 4
  br label %211

211:                                              ; preds = %13, %182, %157
  ret void
}

declare dso_local i32 @l(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @u(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @l68(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
