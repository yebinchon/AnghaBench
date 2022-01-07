; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_e820.c_nvdimm_e820_dump_prams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_e820.c_nvdimm_e820_dump_prams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }
%struct.sbuf = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@sbuf_printf_drain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Found BIOS PRAM regions: \00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Remaining unallocated PRAM regions after hint %d: \00", align 1
@pram_nreg = common dso_local global i32 0, align 4
@pram_segments = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"0x%jx-0x%jx\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @nvdimm_e820_dump_prams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvdimm_e820_dump_prams(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.sbuf, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %13 = call i32 @sbuf_new(%struct.sbuf* %8, i8* %11, i32 256, i32 %12)
  %14 = load i32, i32* @sbuf_printf_drain, align 4
  %15 = call i32 @sbuf_set_drain(%struct.sbuf* %8, i32 %14, i32* null)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_get_nameunit(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 @sbuf_cat(%struct.sbuf* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %22
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @pram_nreg, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pram_segments, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %72

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @sbuf_putc(%struct.sbuf* %8, i8 signext 44)
  br label %47

46:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pram_segments, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pram_segments, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pram_segments, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = sext i32 %61 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 -1
  %71 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %54, i8* %70)
  br label %72

72:                                               ; preds = %47, %40
  %73 = load i32, i32* %10, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %28

75:                                               ; preds = %28
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 @sbuf_cat(%struct.sbuf* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  %81 = call i32 @sbuf_putc(%struct.sbuf* %8, i8 signext 10)
  %82 = call i32 @sbuf_finish(%struct.sbuf* %8)
  %83 = call i32 @sbuf_delete(%struct.sbuf* %8)
  ret void
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_set_drain(%struct.sbuf*, i32, i32*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
