; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_parse_drconf_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_parse_drconf_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"/ibm,dynamic-reconfiguration-memory\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ibm,lmb-size\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Logical Memory Block size: %d MB\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ibm,dynamic-memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_region*, i32*, %struct.mem_region*, i32*)* @parse_drconf_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_drconf_memory(%struct.mem_region* %0, i32* %1, %struct.mem_region* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_region*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mem_region*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.mem_region* %0, %struct.mem_region** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.mem_region* %2, %struct.mem_region** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = call i32 @OF_finddevice(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %143

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %35 = call i32 @OF_getencprop(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %34, i32 8)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %143

39:                                               ; preds = %32
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 20
  %43 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @OF_getproplen(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %138

48:                                               ; preds = %39
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %21, align 8
  %53 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %22, align 8
  %54 = load i32, i32* %10, align 4
  %55 = mul nuw i64 4, %51
  %56 = trunc i64 %55 to i32
  %57 = call i32 @OF_getencprop(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %53, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  store i32 1, i32* %23, align 4
  br label %134

61:                                               ; preds = %48
  %62 = getelementptr inbounds i32, i32* %53, i64 0
  %63 = load i32, i32* %62, align 16
  store i32 %63, i32* %13, align 4
  %64 = getelementptr inbounds i32, i32* %53, i64 1
  store i32* %64, i32** %20, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %130, %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %133

69:                                               ; preds = %65
  %70 = load i32*, i32** %20, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 32
  %74 = load i32*, i32** %20, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %11, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32* %81, i32** %20, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = and i32 %85, 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %69
  %89 = load i32, i32* %18, align 4
  %90 = and i32 %89, 128
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %127, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %94, i64 %96
  %98 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %97, i32 0, i32 1
  store i8* %93, i8** %98, align 8
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %103, i64 %105
  %107 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %106, i32 0, i32 0
  store i8* %102, i8** %107, align 8
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %109, i64 %111
  %113 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %112, i32 0, i32 1
  store i8* %108, i8** %113, align 8
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.mem_region*, %struct.mem_region** %8, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %118, i64 %120
  %122 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %121, i32 0, i32 0
  store i8* %117, i8** %122, align 8
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %92, %88, %69
  %128 = load i32*, i32** %20, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32* %129, i32** %20, align 8
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %65

133:                                              ; preds = %65
  store i32 0, i32* %23, align 4
  br label %134

134:                                              ; preds = %133, %60
  %135 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %23, align 4
  switch i32 %136, label %145 [
    i32 0, label %137
    i32 1, label %143
  ]

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137, %39
  %139 = load i32, i32* %16, align 4
  %140 = load i32*, i32** %7, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  store i32 1, i32* %5, align 4
  br label %143

143:                                              ; preds = %138, %134, %38, %31
  %144 = load i32, i32* %5, align 4
  ret i32 %144

145:                                              ; preds = %134
  unreachable
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
