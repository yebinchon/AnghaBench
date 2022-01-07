; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_privhdr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_ldm.c_ldm_privhdr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }

@LDM_PH_SIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: invalid LDM private header signature\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.g_consumer*, i32, i32*)* @ldm_privhdr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ldm_privhdr_read(%struct.g_consumer* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.g_provider*, align 8
  %9 = alloca i32*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %11 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %10, i32 0, i32 0
  %12 = load %struct.g_provider*, %struct.g_provider** %11, align 8
  store %struct.g_provider* %12, %struct.g_provider** %8, align 8
  %13 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %16 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @g_read_data(%struct.g_consumer* %13, i32 %14, i32 %17, i32* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %41

23:                                               ; preds = %3
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @LDM_PH_SIGN, align 4
  %26 = load i32, i32* @LDM_PH_SIGN, align 4
  %27 = call i32 @strlen(i32 %26)
  %28 = call i64 @memcmp(i32* %24, i32 %25, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  %32 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @LDM_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @g_free(i32* %35)
  store i32* null, i32** %9, align 8
  %37 = load i32, i32* @EINVAL, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %23
  %40 = load i32*, i32** %9, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %39, %22
  %42 = load i32*, i32** %4, align 8
  ret i32* %42
}

declare dso_local i32* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @LDM_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
