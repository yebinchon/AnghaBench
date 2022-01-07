; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_peek32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_peek32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32, i32 }

@BCMA_EROM_TABLE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"BCMA EROM table missing terminating EOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, i32*)* @bcma_erom_peek32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_peek32(%struct.bcma_erom* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_erom*, align 8
  %5 = alloca i32*, align 8
  store %struct.bcma_erom* %0, %struct.bcma_erom** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %7 = getelementptr inbounds %struct.bcma_erom, %struct.bcma_erom* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @BCMA_EROM_TABLE_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 4
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %16 = call i32 @EROM_LOG(%struct.bcma_erom* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %20 = getelementptr inbounds %struct.bcma_erom, %struct.bcma_erom* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %23 = getelementptr inbounds %struct.bcma_erom, %struct.bcma_erom* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bhnd_erom_io_read(i32 %21, i32 %24, i32 4)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @EROM_LOG(%struct.bcma_erom*, i8*) #1

declare dso_local i32 @bhnd_erom_io_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
