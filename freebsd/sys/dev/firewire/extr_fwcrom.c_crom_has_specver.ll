; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_has_specver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwcrom.c_crom_has_specver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csrreg = type { i64, i64 }
%struct.crom_context = type { i64 }

@CSRKEY_SPEC = common dso_local global i64 0, align 8
@CSRKEY_VER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crom_has_specver(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.csrreg*, align 8
  %9 = alloca %struct.crom_context, align 8
  %10 = alloca %struct.crom_context*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  store %struct.crom_context* %9, %struct.crom_context** %10, align 8
  %12 = load %struct.crom_context*, %struct.crom_context** %10, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 @crom_init_context(%struct.crom_context* %12, i64* %13)
  br label %15

15:                                               ; preds = %55, %3
  %16 = load %struct.crom_context*, %struct.crom_context** %10, align 8
  %17 = getelementptr inbounds %struct.crom_context, %struct.crom_context* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %15
  %21 = load %struct.crom_context*, %struct.crom_context** %10, align 8
  %22 = call %struct.csrreg* @crom_get(%struct.crom_context* %21)
  store %struct.csrreg* %22, %struct.csrreg** %8, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.csrreg*, %struct.csrreg** %8, align 8
  %27 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CSRKEY_SPEC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.csrreg*, %struct.csrreg** %8, align 8
  %33 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %11, align 4
  br label %39

38:                                               ; preds = %31, %25
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %55

40:                                               ; preds = %20
  %41 = load %struct.csrreg*, %struct.csrreg** %8, align 8
  %42 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CSRKEY_VER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.csrreg*, %struct.csrreg** %8, align 8
  %48 = getelementptr inbounds %struct.csrreg, %struct.csrreg* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %59

53:                                               ; preds = %46, %40
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.crom_context*, %struct.crom_context** %10, align 8
  %57 = call i32 @crom_next(%struct.crom_context* %56)
  br label %15

58:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @crom_init_context(%struct.crom_context*, i64*) #1

declare dso_local %struct.csrreg* @crom_get(%struct.crom_context*) #1

declare dso_local i32 @crom_next(%struct.crom_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
