; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i64 }

@M_MD_PROMISE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PROMISE_MAX_SUBDISKS = common dso_local global i32 0, align 4
@PROMISE_META_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot erase metadata on %s (error=%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*)* @promise_meta_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @promise_meta_erase(%struct.g_consumer* %0) #0 {
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
  %13 = mul nsw i32 4, %12
  %14 = load i32, i32* @M_MD_PROMISE, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @malloc(i32 %13, i32 %14, i32 %17)
  store i8* %18, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %53, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PROMISE_MAX_SUBDISKS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %25 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %26 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PROMISE_META_OFFSET, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sub nsw i32 63, %33
  %35 = mul nsw i32 %30, %34
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %27, %36
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %40 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 4, %41
  %43 = call i32 @g_write_data(%struct.g_consumer* %24, i64 %37, i8* %38, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %23
  %47 = load %struct.g_provider*, %struct.g_provider** %3, align 8
  %48 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %19

56:                                               ; preds = %19
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* @M_MD_PROMISE, align 4
  %59 = call i32 @free(i8* %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
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
