; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_keyfiles_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_keyfiles_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hmac_ctx = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s:geli_keyfile%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s:geli_keyfile\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Cannot find key file data for %s.\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Cannot find key file size for %s.\00", align 1
@MODINFO_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Cannot find key file name for %s.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Loaded keyfile %s for %s (type: %s).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hmac_ctx*, i8*)* @g_eli_keyfiles_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_eli_keyfiles_load(%struct.hmac_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hmac_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.hmac_ctx* %0, %struct.hmac_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %69, %2
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %11, align 4
  %16 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %18 = call i32* @preload_search_by_type(i8* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %29 = call i32* @preload_search_by_type(i8* %28)
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %24, %21, %12
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %72

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @preload_fetch_addr(i32* %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %42 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  store i32 0, i32* %3, align 4
  br label %72

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @preload_fetch_size(i32* %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %50 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  store i32 0, i32* %3, align 4
  br label %72

51:                                               ; preds = %43
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @MODINFO_NAME, align 4
  %54 = call i8* @preload_search_info(i32* %52, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %59 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  store i32 0, i32* %3, align 4
  br label %72

60:                                               ; preds = %51
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %64 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %61, i8* %62, i8* %63)
  %65 = load %struct.hmac_ctx*, %struct.hmac_ctx** %4, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @g_eli_crypto_hmac_update(%struct.hmac_ctx* %65, i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %12

72:                                               ; preds = %57, %48, %40, %33
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32* @preload_search_by_type(i8*) #1

declare dso_local i32* @preload_fetch_addr(i32*) #1

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i8*, ...) #1

declare dso_local i64 @preload_fetch_size(i32*) #1

declare dso_local i8* @preload_search_info(i32*, i32) #1

declare dso_local i32 @g_eli_crypto_hmac_update(%struct.hmac_ctx*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
