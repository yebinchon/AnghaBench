; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_parse_mport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_parse_mport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }
%struct.bcma_erom_mport = type { i8*, i8* }

@MPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPORT_ID = common dso_local global i32 0, align 4
@MPORT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, %struct.bcma_erom_mport*)* @bcma_erom_parse_mport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_parse_mport(%struct.bcma_erom* %0, %struct.bcma_erom_mport* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_erom*, align 8
  %5 = alloca %struct.bcma_erom_mport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcma_erom* %0, %struct.bcma_erom** %4, align 8
  store %struct.bcma_erom_mport* %1, %struct.bcma_erom_mport** %5, align 8
  %8 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %9 = call i32 @bcma_erom_read32(%struct.bcma_erom* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MPORT, align 4
  %16 = call i32 @BCMA_EROM_ENTRY_IS(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %31

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MPORT_ID, align 4
  %23 = call i8* @BCMA_EROM_GET_ATTR(i32 %21, i32 %22)
  %24 = load %struct.bcma_erom_mport*, %struct.bcma_erom_mport** %5, align 8
  %25 = getelementptr inbounds %struct.bcma_erom_mport, %struct.bcma_erom_mport* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MPORT_NUM, align 4
  %28 = call i8* @BCMA_EROM_GET_ATTR(i32 %26, i32 %27)
  %29 = load %struct.bcma_erom_mport*, %struct.bcma_erom_mport** %5, align 8
  %30 = getelementptr inbounds %struct.bcma_erom_mport, %struct.bcma_erom_mport* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %20, %18, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bcma_erom_read32(%struct.bcma_erom*, i32*) #1

declare dso_local i32 @BCMA_EROM_ENTRY_IS(i32, i32) #1

declare dso_local i8* @BCMA_EROM_GET_ATTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
