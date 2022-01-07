; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_parse_ofw_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_parse_ofw_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_region = type { i32, i32 }

@PHYS_AVAIL_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Physical memory map not found\00", align 1
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.mem_region*)* @parse_ofw_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ofw_memory(i32 %0, i8* %1, %struct.mem_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mem_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.mem_region* %2, %struct.mem_region** %6, align 8
  %15 = load i32, i32* @PHYS_AVAIL_SZ, align 4
  %16 = mul nsw i32 4, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @OF_getencprop(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32 4)
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @OF_getencprop(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32 4)
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = mul nuw i64 4, %17
  %37 = trunc i64 %36 to i32
  %38 = call i32 @OF_getencprop(i32 %34, i8* %35, i32* %19, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %30
  %41 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %33
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %158, %125, %42
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %161

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %19, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %56, i64 %58
  %60 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %83

63:                                               ; preds = %50
  %64 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %64, i64 %66
  %68 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 32
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %19, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %76, i64 %78
  %80 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %75
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %63, %50
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %19, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %89, i64 %91
  %93 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %116

96:                                               ; preds = %83
  %97 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %97, i64 %99
  %101 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 32
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %19, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %109, i64 %111
  %113 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %108
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %96, %83
  %117 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %117, i64 %119
  %121 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %43

126:                                              ; preds = %116
  %127 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %127, i64 %129
  %131 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %133, i64 %135
  %137 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %132, %138
  %140 = sub nsw i32 %139, 1
  %141 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %126
  %144 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %145 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %145, i64 %147
  %149 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sub nsw i32 %144, %150
  %152 = add nsw i32 %151, 1
  %153 = load %struct.mem_region*, %struct.mem_region** %6, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %153, i64 %155
  %157 = getelementptr inbounds %struct.mem_region, %struct.mem_region* %156, i32 0, i32 1
  store i32 %152, i32* %157, align 4
  br label %158

158:                                              ; preds = %143, %126
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %43

161:                                              ; preds = %43
  %162 = load i32, i32* %13, align 4
  %163 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %163)
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OF_finddevice(i8*) #2

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #2

declare dso_local i32 @panic(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
