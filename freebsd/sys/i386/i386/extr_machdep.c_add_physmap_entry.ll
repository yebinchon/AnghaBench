; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_add_physmap_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_add_physmap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pae_mode = common dso_local global i32 0, align 4
@above4g_allow = common dso_local global i32 0, align 4
@above24g_allow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"%uK of memory above %uGB ignored, pae %d above4g_allow %d above24g_allow %d\0A\00", align 1
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Overlapping memory regions, ignoring second region\0A\00", align 1
@PHYS_AVAIL_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Too many segments in the physical address map, giving up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @add_physmap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_physmap_entry(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %204

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @pae_mode, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* @above4g_allow, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @above24g_allow, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i64 -1, i64 25769803776
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %26, %23, %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %37, 1024
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 30
  %41 = load i32, i32* @pae_mode, align 4
  %42 = load i32, i32* @above4g_allow, align 4
  %43 = load i32, i32* @above24g_allow, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 1, i32* %5, align 4
  br label %204

45:                                               ; preds = %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sdiv i32 %60, 1024
  %62 = load i32, i32* %10, align 4
  %63 = ashr i32 %62, 30
  %64 = load i32, i32* @pae_mode, align 4
  %65 = load i32, i32* @above4g_allow, align 4
  %66 = load i32, i32* @above24g_allow, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %51, %45
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %105, %68
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %76, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sle i32 %87, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %13, align 4
  br label %108

96:                                               ; preds = %84
  %97 = load i32, i32* @boothowto, align 4
  %98 = load i32, i32* @RB_VERBOSE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  store i32 1, i32* %5, align 4
  br label %204

104:                                              ; preds = %75
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 2
  store i32 %107, i32* %12, align 4
  br label %71

108:                                              ; preds = %94, %71
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %115, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load i32, i32* %6, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  store i32 1, i32* %5, align 4
  br label %204

128:                                              ; preds = %112, %108
  %129 = load i32, i32* %13, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %132, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = load i32, i32* %7, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %141
  store i32 %148, i32* %146, align 4
  store i32 1, i32* %5, align 4
  br label %204

149:                                              ; preds = %131, %128
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 2
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32*, i32** %9, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @PHYS_AVAIL_ENTRIES, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %204

159:                                              ; preds = %149
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %187, %159
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %190

165:                                              ; preds = %161
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %171, i32* %175, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store i32 %181, i32* %186, align 4
  br label %187

187:                                              ; preds = %165
  %188 = load i32, i32* %12, align 4
  %189 = sub nsw i32 %188, 2
  store i32 %189, i32* %12, align 4
  br label %161

190:                                              ; preds = %161
  %191 = load i32, i32* %6, align 4
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32*, i32** %8, align 8
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  store i32 %198, i32* %203, align 4
  store i32 1, i32* %5, align 4
  br label %204

204:                                              ; preds = %190, %157, %140, %122, %103, %36, %19
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
