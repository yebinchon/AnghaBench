; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_clear_config_entry_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_query.c_clear_config_entry_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configuration_entry = type { i32*, i32* }

@CELT_POSITIVE = common dso_local global i32 0, align 4
@CTT_CLEAR = common dso_local global i32 0, align 4
@KPPT_LEFT = common dso_local global i32 0, align 4
@CELT_NEGATIVE = common dso_local global i32 0, align 4
@CELT_MULTIPART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.configuration_entry*, i8*, i64)* @clear_config_entry_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_config_entry_part(%struct.configuration_entry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.configuration_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.configuration_entry* %0, %struct.configuration_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @TRACE_IN(void (%struct.configuration_entry*, i8*, i64)* @clear_config_entry_part)
  %11 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %12 = load i32, i32* @CELT_POSITIVE, align 4
  %13 = call i32 @configuration_lock_entry(%struct.configuration_entry* %11, i32 %12)
  %14 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %15 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %20 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* @CTT_CLEAR, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @KPPT_LEFT, align 4
  %26 = call i32 @transform_cache_entry_part(i32* %21, i32 %22, i8* %23, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %3
  %28 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %29 = load i32, i32* @CELT_POSITIVE, align 4
  %30 = call i32 @configuration_unlock_entry(%struct.configuration_entry* %28, i32 %29)
  %31 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %32 = load i32, i32* @CELT_NEGATIVE, align 4
  %33 = call i32 @configuration_lock_entry(%struct.configuration_entry* %31, i32 %32)
  %34 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %35 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %27
  %39 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %40 = getelementptr inbounds %struct.configuration_entry, %struct.configuration_entry* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @CTT_CLEAR, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @KPPT_LEFT, align 4
  %46 = call i32 @transform_cache_entry_part(i32* %41, i32 %42, i8* %43, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %38, %27
  %48 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %49 = load i32, i32* @CELT_NEGATIVE, align 4
  %50 = call i32 @configuration_unlock_entry(%struct.configuration_entry* %48, i32 %49)
  %51 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %52 = load i32, i32* @CELT_MULTIPART, align 4
  %53 = call i32 @configuration_lock_entry(%struct.configuration_entry* %51, i32 %52)
  %54 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @configuration_entry_find_mp_cache_entries(%struct.configuration_entry* %54, i8* %55, i32** %7, i32** %8)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %47
  %59 = load i32*, i32** %7, align 8
  store i32* %59, i32** %9, align 8
  br label %60

60:                                               ; preds = %69, %58
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CTT_CLEAR, align 4
  %68 = call i32 @transform_cache_entry(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %9, align 8
  br label %60

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %47
  %74 = load %struct.configuration_entry*, %struct.configuration_entry** %4, align 8
  %75 = load i32, i32* @CELT_MULTIPART, align 4
  %76 = call i32 @configuration_unlock_entry(%struct.configuration_entry* %74, i32 %75)
  %77 = call i32 @TRACE_OUT(void (%struct.configuration_entry*, i8*, i64)* @clear_config_entry_part)
  ret void
}

declare dso_local i32 @TRACE_IN(void (%struct.configuration_entry*, i8*, i64)*) #1

declare dso_local i32 @configuration_lock_entry(%struct.configuration_entry*, i32) #1

declare dso_local i32 @transform_cache_entry_part(i32*, i32, i8*, i64, i32) #1

declare dso_local i32 @configuration_unlock_entry(%struct.configuration_entry*, i32) #1

declare dso_local i64 @configuration_entry_find_mp_cache_entries(%struct.configuration_entry*, i8*, i32**, i32**) #1

declare dso_local i32 @transform_cache_entry(i32, i32) #1

declare dso_local i32 @TRACE_OUT(void (%struct.configuration_entry*, i8*, i64)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
