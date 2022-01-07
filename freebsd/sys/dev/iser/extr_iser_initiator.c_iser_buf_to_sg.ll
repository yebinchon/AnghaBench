; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_buf_to_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_initiator.c_iser_buf_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_data_buf = type { i64, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.iser_data_buf*)* @iser_buf_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_buf_to_sg(i8* %0, %struct.iser_data_buf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iser_data_buf*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %4, align 8
  %10 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %11 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %44, %2
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 0, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %18 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %17, i32 0, i32 2
  %19 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 %21
  store %struct.scatterlist* %22, %struct.scatterlist** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @min(i64 %32, i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @sg_set_buf(%struct.scatterlist* %35, i8* %36, i64 %37)
  %39 = load i8*, i8** %3, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load i64, i64* %7, align 8
  %42 = add nsw i64 %40, %41
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %16
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.iser_data_buf*, %struct.iser_data_buf** %4, align 8
  %53 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %55 = call i32 @sg_mark_end(%struct.scatterlist* %54)
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i64) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
