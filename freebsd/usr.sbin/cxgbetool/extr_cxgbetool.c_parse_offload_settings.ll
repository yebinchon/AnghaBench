; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_offload_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_parse_offload_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.offload_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c" \0C\0A\0D\0B\09\00", align 1
@parse_offload_settings.default_settings = internal constant %struct.offload_settings { i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0 }, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no settings provided\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"%d stray negation(s) at end of offload settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.offload_settings*)* @parse_offload_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_offload_settings(i8* %0, %struct.offload_settings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.offload_settings*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.offload_settings* %1, %struct.offload_settings** %5, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %13 = load %struct.offload_settings*, %struct.offload_settings** %5, align 8
  %14 = bitcast %struct.offload_settings* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.offload_settings* @parse_offload_settings.default_settings to i8*), i64 52, i1 false)
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strdup(i8* %15)
  store i8* %16, i8** %7, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 @warn(i32* null)
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %43, %32, %22
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strsep(i8** %9, i8* %24)
  store i8* %25, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %23

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.offload_settings*, %struct.offload_settings** %5, align 8
  %39 = call i32 @parse_offload_settings_word(i8* %36, i8** %9, i8* %37, i32* %12, %struct.offload_settings* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %58

43:                                               ; preds = %33
  br label %23

44:                                               ; preds = %23
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %10, align 4
  br label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %10, align 4
  br label %58

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %53, %47, %42
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @warn(i32*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @parse_offload_settings_word(i8*, i8**, i8*, i32*, %struct.offload_settings*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
