; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_detect_msik9.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_detect_msik9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i32 }

@nfe_detect_msik9.maker = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@nfe_detect_msik9.product = internal global i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"K9N6PGM2-V2 (MS-7309)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"smbios.planar.maker\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"smbios.planar.product\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfe_softc*)* @nfe_detect_msik9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfe_detect_msik9(%struct.nfe_softc* %0) #0 {
  %2 = alloca %struct.nfe_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i8* @kern_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = call i8* @kern_getenv(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** @nfe_detect_msik9.maker, align 8
  %16 = call i64 @strcmp(i8* %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** @nfe_detect_msik9.product, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %18, %13
  br label %25

25:                                               ; preds = %24, %10, %1
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @freeenv(i8* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @freeenv(i8* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freeenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
