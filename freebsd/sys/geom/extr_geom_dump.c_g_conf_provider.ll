; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dump.c_g_conf_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dump.c_g_conf_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.g_provider = type { i32, %struct.g_provider*, i32 (%struct.sbuf*, i8*, %struct.g_provider*, i32*, %struct.g_provider*)*, i64, i64, %struct.g_provider*, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"\09<provider id=\22%p\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09  <geom ref=\22%p\22/>\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\09  <mode>r%dw%de%d</mode>\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\09  <name>\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"</name>\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\09  <mediasize>%jd</mediasize>\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\09  <sectorsize>%u</sectorsize>\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"\09  <stripesize>%ju</stripesize>\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\09  <stripeoffset>%ju</stripeoffset>\0A\00", align 1
@G_PF_WITHER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"\09  <wither/>\0A\00", align 1
@G_GEOM_WITHER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"\09  <config>\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\09    \00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\09  </config>\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"\09</provider>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbuf*, %struct.g_provider*)* @g_conf_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_conf_provider(%struct.sbuf* %0, %struct.g_provider* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.g_provider*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.g_provider* %1, %struct.g_provider** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %7 = call i32 (%struct.sbuf*, i8*, %struct.g_provider*, ...) @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.g_provider* %6)
  %8 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %9 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %10 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %9, i32 0, i32 1
  %11 = load %struct.g_provider*, %struct.g_provider** %10, align 8
  %12 = call i32 (%struct.sbuf*, i8*, %struct.g_provider*, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.g_provider* %11)
  %13 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %14 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.g_provider*
  %19 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %20 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.sbuf*, i8*, %struct.g_provider*, ...) @sbuf_printf(%struct.sbuf* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), %struct.g_provider* %18, i32 %21, i32 %24)
  %26 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %27 = call i32 @sbuf_cat(%struct.sbuf* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %29 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @g_conf_cat_escaped(%struct.sbuf* %28, i32 %31)
  %33 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %34 = call i32 @sbuf_cat(%struct.sbuf* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %35 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %36 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.g_provider*
  %40 = call i32 (%struct.sbuf*, i8*, %struct.g_provider*, ...) @sbuf_printf(%struct.sbuf* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), %struct.g_provider* %39)
  %41 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %42 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %43 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %42, i32 0, i32 5
  %44 = load %struct.g_provider*, %struct.g_provider** %43, align 8
  %45 = call i32 (%struct.sbuf*, i8*, %struct.g_provider*, ...) @sbuf_printf(%struct.sbuf* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), %struct.g_provider* %44)
  %46 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %47 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.g_provider*
  %51 = call i32 (%struct.sbuf*, i8*, %struct.g_provider*, ...) @sbuf_printf(%struct.sbuf* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), %struct.g_provider* %50)
  %52 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %53 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %54 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.g_provider*
  %57 = call i32 (%struct.sbuf*, i8*, %struct.g_provider*, ...) @sbuf_printf(%struct.sbuf* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), %struct.g_provider* %56)
  %58 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %59 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @G_PF_WITHER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %2
  %65 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %66 = call i32 @sbuf_cat(%struct.sbuf* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %102

67:                                               ; preds = %2
  %68 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %69 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %68, i32 0, i32 1
  %70 = load %struct.g_provider*, %struct.g_provider** %69, align 8
  %71 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @G_GEOM_WITHER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %101

77:                                               ; preds = %67
  %78 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %79 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %78, i32 0, i32 1
  %80 = load %struct.g_provider*, %struct.g_provider** %79, align 8
  %81 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %80, i32 0, i32 2
  %82 = load i32 (%struct.sbuf*, i8*, %struct.g_provider*, i32*, %struct.g_provider*)*, i32 (%struct.sbuf*, i8*, %struct.g_provider*, i32*, %struct.g_provider*)** %81, align 8
  %83 = icmp ne i32 (%struct.sbuf*, i8*, %struct.g_provider*, i32*, %struct.g_provider*)* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %77
  %85 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %86 = call i32 @sbuf_cat(%struct.sbuf* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %87 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %88 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %87, i32 0, i32 1
  %89 = load %struct.g_provider*, %struct.g_provider** %88, align 8
  %90 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %89, i32 0, i32 2
  %91 = load i32 (%struct.sbuf*, i8*, %struct.g_provider*, i32*, %struct.g_provider*)*, i32 (%struct.sbuf*, i8*, %struct.g_provider*, i32*, %struct.g_provider*)** %90, align 8
  %92 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %93 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %94 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %93, i32 0, i32 1
  %95 = load %struct.g_provider*, %struct.g_provider** %94, align 8
  %96 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %97 = call i32 %91(%struct.sbuf* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.g_provider* %95, i32* null, %struct.g_provider* %96)
  %98 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %99 = call i32 @sbuf_cat(%struct.sbuf* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %100

100:                                              ; preds = %84, %77
  br label %101

101:                                              ; preds = %100, %76
  br label %102

102:                                              ; preds = %101, %64
  %103 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %104 = call i32 @sbuf_cat(%struct.sbuf* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, %struct.g_provider*, ...) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @g_conf_cat_escaped(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
