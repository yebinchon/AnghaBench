; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_ofw_numa_mem_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_machdep.c_ofw_numa_mem_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.numa_mem_region = type { i64, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"memory@\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ibm,associativity\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"%s %#jx-%#jx domain(%ju)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ofw_numa_mem_regions(%struct.numa_mem_region* %0, i32* %1) #0 {
  %3 = alloca %struct.numa_mem_region*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [31 x i8], align 16
  %10 = alloca [5 x i64], align 16
  %11 = alloca %struct.numa_mem_region*, align 8
  store %struct.numa_mem_region* %0, %struct.numa_mem_region** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = call i64 @OF_peer(i64 0)
  %13 = call i64 @OF_child(i64 %12)
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %84, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 0
  %20 = call i64 @OF_getprop(i64 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19, i32 31)
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %84

23:                                               ; preds = %17
  %24 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 0
  %25 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %84

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.numa_mem_region*, %struct.numa_mem_region** %3, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %31, i64 %33
  %35 = call i32 @parse_numa_ofw_memory(i64 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.numa_mem_region* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %84

39:                                               ; preds = %29
  %40 = load %struct.numa_mem_region*, %struct.numa_mem_region** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %40, i64 %42
  store %struct.numa_mem_region* %43, %struct.numa_mem_region** %11, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @OF_getproplen(i64 %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %84

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = call i32 @MPASS(i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @OF_getencprop(i64 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64* %55, i32 %56)
  %58 = getelementptr inbounds [5 x i64], [5 x i64]* %10, i64 0, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.numa_mem_region*, %struct.numa_mem_region** %11, align 8
  %61 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* @bootverbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %49
  %65 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 0
  %66 = load %struct.numa_mem_region*, %struct.numa_mem_region** %11, align 8
  %67 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.numa_mem_region*, %struct.numa_mem_region** %11, align 8
  %70 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.numa_mem_region*, %struct.numa_mem_region** %11, align 8
  %73 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.numa_mem_region*, %struct.numa_mem_region** %11, align 8
  %77 = getelementptr inbounds %struct.numa_mem_region, %struct.numa_mem_region* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %65, i64 %68, i64 %75, i64 %78)
  br label %80

80:                                               ; preds = %64, %49
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %48, %38, %28, %22
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @OF_peer(i64 %85)
  store i64 %86, i64* %5, align 8
  br label %14

87:                                               ; preds = %14
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  ret void
}

declare dso_local i64 @OF_child(i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i64 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_numa_ofw_memory(i64, i8*, %struct.numa_mem_region*) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
