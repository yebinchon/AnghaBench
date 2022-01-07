; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"PCI ID %04x:%04x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"efx_family fail %d\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EFX_FAMILY_SIENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Solarflare SFC9000 family\00", align 1
@EFX_FAMILY_HUNTINGTON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Solarflare SFC9100 family\00", align 1
@EFX_FAMILY_MEDFORD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Solarflare SFC9200 family\00", align 1
@EFX_FAMILY_MEDFORD2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Solarflare SFC9250 family\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"impossible controller family %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sfxge_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @pci_get_vendor(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @pci_get_device(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, i32, ...) @DBGPRINT(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @efx_family(i32 %17, i32 %18, i32* %6, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i32, i8*, i32, ...) @DBGPRINT(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %60

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EFX_FAMILY_SIENA, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_set_desc(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %60

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EFX_FAMILY_HUNTINGTON, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_set_desc(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EFX_FAMILY_MEDFORD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_set_desc(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %60

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EFX_FAMILY_MEDFORD2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_set_desc(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, i32, ...) @DBGPRINT(i32 %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %52, %45, %38, %31, %22
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*, i32, ...) #1

declare dso_local i32 @efx_family(i32, i32, i32*, i32*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
