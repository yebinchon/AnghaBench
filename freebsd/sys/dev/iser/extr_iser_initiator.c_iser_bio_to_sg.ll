; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_bio_to_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_bio_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i32, i32* }
%struct.iser_data_buf = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, %struct.iser_data_buf*)* @iser_bio_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_bio_to_sg(%struct.bio* %0, %struct.iser_data_buf* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.iser_data_buf*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.bio*, %struct.bio** %3, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %43, %2
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 0, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %21 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %20, i32 0, i32 1
  %22 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %22, i64 %24
  store %struct.scatterlist* %25, %struct.scatterlist** %5, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @min(i64 %29, i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %33 = load %struct.bio*, %struct.bio** %3, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @sg_set_page(%struct.scatterlist* %32, i32 %39, i64 %40, i32 %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %19
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %52 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %54 = call i32 @sg_mark_end(%struct.scatterlist* %53)
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
