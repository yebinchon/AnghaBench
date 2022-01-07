; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_show_memmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyvectl/extr_bhyvectl.c_show_memmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@SPECNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Address     Length      Segment     Offset      \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Prot  Flags\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%-12lX\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%-12s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sysmem\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%c%c%c   \00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@VM_MEMMAP_F_WIRED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%cwired\00", align 1
@VM_MEMMAP_F_IOMMU = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"%ciommu\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmctx*)* @show_memmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_memmap(%struct.vmctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %3, align 8
  %17 = load i32, i32* @SPECNAMELEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %4, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %103, %1
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %27 = call i32 @vm_mmap_getnext(%struct.vmctx* %26, i64* %8, i32* %14, i32* %7, i64* %9, i32* %13, i32* %12)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOENT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 0, %34 ], [ %36, %35 ]
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %108

39:                                               ; preds = %25
  %40 = load %struct.vmctx*, %struct.vmctx** %3, align 8
  %41 = load i32, i32* %14, align 4
  %42 = trunc i64 %19 to i32
  %43 = call i32 @vm_get_memseg(%struct.vmctx* %40, i32 %41, i64* %10, i8* %21, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %108

48:                                               ; preds = %39
  %49 = load i64, i64* %8, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @HN_AUTOSCALE, align 4
  %54 = load i32, i32* @HN_NOSPACE, align 4
  %55 = call i32 @humanize_number(i8* %51, i32 8, i64 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %54)
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds i8, i8* %21, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %64

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %63, %62
  %65 = phi i8* [ %21, %62 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %63 ]
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @PROT_READ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 82, i32 45
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @PROT_WRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 87, i32 45
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @PROT_EXEC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 88, i32 45
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %74, i32 %80, i32 %86)
  store i32 0, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @VM_MEMMAP_F_WIRED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %64
  %93 = load i32, i32* %15, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  store i32 47, i32* %15, align 4
  br label %95

95:                                               ; preds = %92, %64
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @VM_MEMMAP_F_IOMMU, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %15, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  store i32 47, i32* %15, align 4
  br label %103

103:                                              ; preds = %100, %95
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %8, align 8
  br label %24

108:                                              ; preds = %46, %37
  %109 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @vm_mmap_getnext(%struct.vmctx*, i64*, i32*, i32*, i64*, i32*, i32*) #2

declare dso_local i32 @vm_get_memseg(%struct.vmctx*, i32, i64*, i8*, i32) #2

declare dso_local i32 @humanize_number(i8*, i32, i64, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
