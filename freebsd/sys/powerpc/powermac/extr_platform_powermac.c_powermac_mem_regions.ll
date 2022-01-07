; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_platform_powermac.c_powermac_mem_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_platform_powermac.c_powermac_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, i32 }

@PHYS_AVAIL_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"/memory@0\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @powermac_mem_regions(i32 %0, %struct.mem_region* %1, i32* %2, %struct.mem_region* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_region*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mem_region*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.mem_region* %1, %struct.mem_region** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mem_region* %3, %struct.mem_region** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @PHYS_AVAIL_SZ, align 4
  %19 = mul nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 1, i32* %17, align 4
  %23 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = call i32 @OF_finddevice(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %26, %5
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @OF_parent(i32 %29)
  %31 = call i32 @OF_getprop(i32 %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %17, i32 4)
  %32 = load i32, i32* %11, align 4
  %33 = mul nuw i64 4, %20
  %34 = trunc i64 %33 to i32
  %35 = call i32 @OF_getprop(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %22, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %90, %28
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %22, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %49, i64 %51
  %53 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %78

56:                                               ; preds = %44
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %22, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %16, align 4
  br label %90

65:                                               ; preds = %56
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %22, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %71, i64 %73
  %75 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %70
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %65, %44
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %22, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %85, i64 %87
  %89 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %78, %62
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  br label %40

97:                                               ; preds = %40
  %98 = load i32, i32* %16, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  %101 = mul nuw i64 4, %20
  %102 = trunc i64 %101 to i32
  %103 = call i32 @OF_getprop(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %22, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %142

106:                                              ; preds = %97
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %135, %106
  %108 = load i32, i32* %15, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %107
  %113 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %113, i64 %115
  %117 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %119, i64 %121
  %123 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %122, i32 0, i32 0
  store i32 %118, i32* %123, align 4
  %124 = load %struct.mem_region*, %struct.mem_region** %7, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %124, i64 %126
  %128 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %130, i64 %132
  %134 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %133, i32 0, i32 1
  store i32 %129, i32* %134, align 4
  br label %135

135:                                              ; preds = %112
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %107

138:                                              ; preds = %107
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  store i32 %140, i32* %141, align 4
  br label %179

142:                                              ; preds = %97
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = udiv i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %171, %142
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %22, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %156, i64 %158
  %160 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %159, i32 0, i32 0
  store i32 %155, i32* %160, align 4
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %22, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mem_region*, %struct.mem_region** %9, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %166, i64 %168
  %170 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %169, i32 0, i32 1
  store i32 %165, i32* %170, align 4
  br label %171

171:                                              ; preds = %151
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %16, align 4
  br label %147

176:                                              ; preds = %147
  %177 = load i32, i32* %16, align 4
  %178 = load i32*, i32** %10, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %138
  %180 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %180)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OF_finddevice(i8*) #2

declare dso_local i32 @OF_getprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @OF_parent(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
