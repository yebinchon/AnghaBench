; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rm_gpr_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rm_gpr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_rm = type { i32, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu_rm*, i32)* @emu_rm_gpr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_rm_gpr_alloc(%struct.emu_rm* %0, i32 %1) #0 {
  %3 = alloca %struct.emu_rm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.emu_rm* %0, %struct.emu_rm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %9 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %12 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %11, i32 0, i32 4
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %15 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  %19 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %20 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %2
  %24 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %25 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %29 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %34 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %56, %23
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sub nsw i32 0, %46
  %48 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %49 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  store i32 %47, i32* %55, align 4
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %39

59:                                               ; preds = %39
  br label %161

60:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %61 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %62 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %122, %60
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %67 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %68, %69
  %71 = icmp slt i32 %65, %70
  br i1 %71, label %72, label %123

72:                                               ; preds = %64
  %73 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %74 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %83 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %122

91:                                               ; preds = %72
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %93

93:                                               ; preds = %113, %91
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %99 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %110 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %108, %97
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %93

116:                                              ; preds = %93
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %123

121:                                              ; preds = %116
  br label %122

122:                                              ; preds = %121, %81
  br label %64

123:                                              ; preds = %120, %64
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %124, %125
  %127 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %128 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %160

131:                                              ; preds = %123
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %134 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  store i32 1, i32* %5, align 4
  br label %139

139:                                              ; preds = %156, %131
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %159

143:                                              ; preds = %139
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %5, align 4
  %146 = sub nsw i32 %144, %145
  %147 = sub nsw i32 0, %146
  %148 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %149 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  store i32 %147, i32* %155, align 4
  br label %156

156:                                              ; preds = %143
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %139

159:                                              ; preds = %139
  br label %160

160:                                              ; preds = %159, %123
  br label %161

161:                                              ; preds = %160, %59
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %164 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 -1, i32* %7, align 4
  br label %168

168:                                              ; preds = %167, %161
  %169 = load i32, i32* %7, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, i32* %4, align 4
  %173 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %174 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %168
  %178 = load %struct.emu_rm*, %struct.emu_rm** %3, align 8
  %179 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %178, i32 0, i32 4
  %180 = call i32 @mtx_unlock(i32* %179)
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
