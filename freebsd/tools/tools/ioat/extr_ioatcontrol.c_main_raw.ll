; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_main_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_main_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_test = type { i32, i32, i32, i64, i32 }

@IOAT_TEST_RAW_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Target shoudln't be NULL\0A\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Buffer size must be greater than zero\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/dev/ioat_test\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot open /dev/ioat_test\0A\00", align 1
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@IOAT_DMATEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioat_test*, i32, i8**)* @main_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_raw(%struct.ioat_test* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.ioat_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.ioat_test* %0, %struct.ioat_test** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %8 = load i32, i32* @IOAT_TEST_RAW_DMA, align 4
  %9 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %10 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %12 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %14 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %16 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %15, i32 0, i32 2
  store i32 4096, i32* %16, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strtoull(i8* %19, i32* null, i32 0)
  %21 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %22 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %21, i32 0, i32 3
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %24 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EX_USAGE, align 4
  %30 = call i32 @exit(i32 %29) #3
  unreachable

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 3
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @atoi(i8* %37)
  %39 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %40 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %42 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EX_USAGE, align 4
  %48 = call i32 @exit(i32 %47) #3
  unreachable

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* @O_RDWR, align 4
  %52 = call i32 @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EX_UNAVAILABLE, align 4
  %58 = call i32 @exit(i32 %57) #3
  unreachable

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @IOAT_DMATEST, align 4
  %62 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %63 = call i32 @ioctl(i32 %60, i32 %61, %struct.ioat_test* %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load %struct.ioat_test*, %struct.ioat_test** %4, align 8
  %67 = call i32 @prettyprint(%struct.ioat_test* %66)
  %68 = call i32 @exit(i32 %67) #3
  unreachable
}

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ioat_test*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @prettyprint(%struct.ioat_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
