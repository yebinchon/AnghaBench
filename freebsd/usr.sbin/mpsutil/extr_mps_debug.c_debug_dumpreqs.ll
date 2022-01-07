; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_debug.c_debug_dumpreqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mpsutil/extr_mps_debug.c_debug_dumpreqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_dumpreq_hdr = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"dev.%s.%d.dump_reqs\00", align 1
@is_mps = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"mps\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mpr\00", align 1
@mps_unit = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"len= %zd, error= %d errno= %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MPS_FRAME_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [65 x i8] c"SMID= %d state= %#x numframes= %d desc.hi= %#08x desc.lo= %#08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @debug_dumpreqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_dumpreqs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.mps_dumpreq_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  store i8* null, i8** %7, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %14 = load i64, i64* @is_mps, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %18 = load i32, i32* @mps_unit, align 4
  %19 = call i32 @snprintf(i8* %13, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %21 = call i32 @sysctlbyname(i8* %20, i8* null, i64* %9, i32* null, i32 0)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %104

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* %3, align 4
  br label %104

37:                                               ; preds = %30
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @sysctlbyname(i8* %38, i8* %39, i64* %9, i32* null, i32 0)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %104

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %89, %50
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @MPS_FRAME_LEN, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = bitcast i8* %56 to %struct.mps_dumpreq_hdr*
  store %struct.mps_dumpreq_hdr* %57, %struct.mps_dumpreq_hdr** %6, align 8
  %58 = load %struct.mps_dumpreq_hdr*, %struct.mps_dumpreq_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.mps_dumpreq_hdr, %struct.mps_dumpreq_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load %struct.mps_dumpreq_hdr*, %struct.mps_dumpreq_hdr** %6, align 8
  %62 = getelementptr inbounds %struct.mps_dumpreq_hdr, %struct.mps_dumpreq_hdr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mps_dumpreq_hdr*, %struct.mps_dumpreq_hdr** %6, align 8
  %65 = getelementptr inbounds %struct.mps_dumpreq_hdr, %struct.mps_dumpreq_hdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mps_dumpreq_hdr*, %struct.mps_dumpreq_hdr** %6, align 8
  %68 = getelementptr inbounds %struct.mps_dumpreq_hdr, %struct.mps_dumpreq_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mps_dumpreq_hdr*, %struct.mps_dumpreq_hdr** %6, align 8
  %71 = getelementptr inbounds %struct.mps_dumpreq_hdr, %struct.mps_dumpreq_hdr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mps_dumpreq_hdr*, %struct.mps_dumpreq_hdr** %6, align 8
  %74 = getelementptr inbounds %struct.mps_dumpreq_hdr, %struct.mps_dumpreq_hdr* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 20
  store i8* %78, i8** %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, 20
  store i64 %80, i64* %9, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @find_sgl(i8* %81)
  store i32 %82, i32* %12, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %89

84:                                               ; preds = %55
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @print_sgl(i8* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %55
  %90 = load i64, i64* @MPS_FRAME_LEN, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %90, %92
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %7, align 8
  %96 = load i64, i64* @MPS_FRAME_LEN, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %96, %98
  %100 = load i64, i64* %9, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %51

102:                                              ; preds = %51
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %43, %35, %29, %24
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @find_sgl(i8*) #1

declare dso_local i32 @print_sgl(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
