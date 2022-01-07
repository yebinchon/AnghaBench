; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_sii.c_sii_meta_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i64 }

@M_MD_SII = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot erase metadata on %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*)* @sii_meta_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii_meta_erase(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_provider*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %7 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 0
  %9 = load %struct.g_provider*, %struct.g_provider** %8, align 8
  store %struct.g_provider* %9, %struct.g_provider** %3, align 8
  %10 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %11 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @M_MD_SII, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @malloc(i32 %12, i32 %13, i32 %16)
  store i8* %17, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %49, %1
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %23 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %24 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %27 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 512, %29
  %31 = add nsw i32 1, %30
  %32 = mul nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %25, %33
  %35 = load i8*, i8** %4, align 8
  %36 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %37 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @g_write_data(%struct.g_consumer* %22, i64 %34, i8* %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %21
  %43 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %44 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %21
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @M_MD_SII, align 4
  %55 = call i32 @free(i8* %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i64, i8*, i32) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
