; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_alloc_hftid_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_alloc_hftid_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, i32*, i32, i32*, i32 }

@M_CXGBE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"T4 hashfilters\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"t4hfcv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_info*, i32)* @alloc_hftid_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_hftid_hash(%struct.tid_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tid_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %8 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %20 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %26 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sdiv i32 %27, 1024
  %29 = call i32 @max(i32 %28, i32 16)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @M_CXGBE, align 4
  %32 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %33 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %32, i32 0, i32 4
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @hashinit_flags(i32 %30, i32 %31, i32* %33, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %38 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %40 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %3, align 4
  br label %79

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @M_CXGBE, align 4
  %48 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %49 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %48, i32 0, i32 6
  %50 = load i32, i32* %5, align 4
  %51 = call i8* @hashinit_flags(i32 %46, i32 %47, i32* %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %54 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  %55 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %56 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %71

59:                                               ; preds = %45
  %60 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %61 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @M_CXGBE, align 4
  %64 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %65 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @hashdestroy(i32* %62, i32 %63, i32 %66)
  %68 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %69 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %68, i32 0, i32 3
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %3, align 4
  br label %79

71:                                               ; preds = %45
  %72 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %73 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %72, i32 0, i32 2
  %74 = load i32, i32* @MTX_DEF, align 4
  %75 = call i32 @mtx_init(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i32 %74)
  %76 = load %struct.tid_info*, %struct.tid_info** %4, align 8
  %77 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %76, i32 0, i32 1
  %78 = call i32 @cv_init(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %59, %43
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @hashinit_flags(i32, i32, i32*, i32) #1

declare dso_local i32 @hashdestroy(i32*, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
