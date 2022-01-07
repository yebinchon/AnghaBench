; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_add_physmap_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_machdep.c_add_physmap_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Overlapping memory regions, ignoring second region\0A\00", align 1
@PHYS_AVAIL_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Too many segments in the physical address map, giving up\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"physmap[%d] = 0x%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*, i32*)* @add_physmap_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_physmap_entry(i64 %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %162

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %54, %18
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %25, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %36, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %11, align 4
  br label %57

45:                                               ; preds = %33
  %46 = load i32, i32* @boothowto, align 4
  %47 = load i32, i32* @RB_VERBOSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  store i32 1, i32* %5, align 4
  br label %162

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %10, align 4
  br label %20

57:                                               ; preds = %43, %20
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64*, i64** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %64, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = load i64, i64* %6, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  store i32 1, i32* %5, align 4
  br label %162

77:                                               ; preds = %61, %57
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i64, i64* %6, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %81, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i64, i64* %7, align 8
  %91 = load i64*, i64** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %90
  store i64 %97, i64* %95, align 8
  store i32 1, i32* %5, align 4
  br label %162

98:                                               ; preds = %80, %77
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @PHYS_AVAIL_ENTRIES, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %162

108:                                              ; preds = %98
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %136, %108
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %110
  %115 = load i64*, i64** %8, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %8, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 %120, i64* %124, align 8
  %125 = load i64*, i64** %8, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  store i64 %130, i64* %135, align 8
  br label %136

136:                                              ; preds = %114
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %137, 2
  store i32 %138, i32* %10, align 4
  br label %110

139:                                              ; preds = %110
  %140 = load i64, i64* %6, align 8
  %141 = load i64*, i64** %8, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 %140, i64* %144, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = add nsw i64 %145, %146
  %148 = load i64*, i64** %8, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  store i64 %147, i64* %152, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i64, i64* %6, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %153, i64 %154)
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %7, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %157, i64 %160)
  store i32 1, i32* %5, align 4
  br label %162

162:                                              ; preds = %139, %106, %89, %71, %52, %17
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
