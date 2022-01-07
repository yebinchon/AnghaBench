; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_pio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32*, i32*, i32, %struct.TYPE_2__*, %struct.bio* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.bio = type { i64 }

@BIO_READ = common dso_local global i64 0, align 8
@FD_YE_DATAPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdc_data*)* @fdc_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdc_pio(%struct.fdc_data* %0) #0 {
  %2 = alloca %struct.fdc_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.fdc_data* %0, %struct.fdc_data** %2, align 8
  %6 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %7 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %6, i32 0, i32 4
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %4, align 8
  %9 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %10 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %3, align 8
  %14 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %15 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BIO_READ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %1
  %25 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fdbcdr_wr(%struct.fdc_data* %25, i32 0, i32 %26)
  %28 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %29 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %32 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @FD_YE_DATAPORT, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %38 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @FD_YE_DATAPORT, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @bus_space_read_multi_1(i32 %30, i32 %36, i32 %42, i32* %43, i32 %44)
  br label %68

46:                                               ; preds = %1
  %47 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %48 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %51 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @FD_YE_DATAPORT, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %57 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @FD_YE_DATAPORT, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @bus_space_write_multi_1(i32 %49, i32 %55, i32 %61, i32* %62, i32 %63)
  %65 = load %struct.fdc_data*, %struct.fdc_data** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @fdbcdr_wr(%struct.fdc_data* %65, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %46, %24
  ret void
}

declare dso_local i32 @fdbcdr_wr(%struct.fdc_data*, i32, i32) #1

declare dso_local i32 @bus_space_read_multi_1(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_space_write_multi_1(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
