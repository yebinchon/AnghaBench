; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_get_lq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_get_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@cp_get_lq.l114 = internal global [4 x i32] [i32 0, i32 95, i32 195, i32 285], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_get_lq(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %186

14:                                               ; preds = %12
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @u(i32 %17, i32 %20)
  %22 = and i32 %21, 12
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @u(i32 %26, i32 %29)
  %31 = and i32 %30, 12
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %5, align 1
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %38, %14
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %51

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %41
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %33

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @u(i32 %44, i32 %47)
  %49 = and i32 %48, 12
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %5, align 1
  br label %38

51:                                               ; preds = %36
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @u(i32 %54, i32 %57)
  %59 = and i32 %58, 12
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %6, align 1
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %66, %51
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 20
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %79

65:                                               ; preds = %61
  br label %69

66:                                               ; preds = %69
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %61

69:                                               ; preds = %65
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @u(i32 %72, i32 %75)
  %77 = and i32 %76, 12
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %6, align 1
  br label %66

79:                                               ; preds = %64
  %80 = load i8, i8* %4, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %5, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sle i32 %81, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i8, i8* %5, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %6, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sle i32 %87, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %85, %79
  br label %99

92:                                               ; preds = %85
  %93 = load i8, i8* %5, align 1
  %94 = zext i8 %93 to i32
  %95 = ashr i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* @cp_get_lq.l114, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %2, align 4
  br label %186

99:                                               ; preds = %91
  %100 = load i8, i8* %5, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %6, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sle i32 %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i8, i8* %6, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %4, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sle i32 %107, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %105, %99
  br label %119

112:                                              ; preds = %105
  %113 = load i8, i8* %6, align 1
  %114 = zext i8 %113 to i32
  %115 = ashr i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* @cp_get_lq.l114, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %2, align 4
  br label %186

119:                                              ; preds = %111
  %120 = load i8, i8* %6, align 1
  %121 = zext i8 %120 to i32
  %122 = load i8, i8* %4, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sle i32 %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i8, i8* %4, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* %5, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp sle i32 %127, %129
  br i1 %130, label %132, label %131

131:                                              ; preds = %125, %119
  br label %139

132:                                              ; preds = %125
  %133 = load i8, i8* %4, align 1
  %134 = zext i8 %133 to i32
  %135 = ashr i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* @cp_get_lq.l114, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %2, align 4
  br label %186

139:                                              ; preds = %131
  %140 = load i8, i8* %4, align 1
  %141 = zext i8 %140 to i32
  %142 = load i8, i8* %6, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp sle i32 %141, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139
  %146 = load i8, i8* %6, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* %5, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp sle i32 %147, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %145, %139
  br label %159

152:                                              ; preds = %145
  %153 = load i8, i8* %6, align 1
  %154 = zext i8 %153 to i32
  %155 = ashr i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* @cp_get_lq.l114, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %2, align 4
  br label %186

159:                                              ; preds = %151
  %160 = load i8, i8* %6, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* %5, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp sle i32 %161, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i8, i8* %5, align 1
  %167 = zext i8 %166 to i32
  %168 = load i8, i8* %4, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp sle i32 %167, %169
  br i1 %170, label %172, label %171

171:                                              ; preds = %165, %159
  br label %179

172:                                              ; preds = %165
  %173 = load i8, i8* %5, align 1
  %174 = zext i8 %173 to i32
  %175 = ashr i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* @cp_get_lq.l114, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %2, align 4
  br label %186

179:                                              ; preds = %171
  %180 = load i8, i8* %4, align 1
  %181 = zext i8 %180 to i32
  %182 = ashr i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* @cp_get_lq.l114, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %179, %172, %152, %132, %112, %92, %13
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @u(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
