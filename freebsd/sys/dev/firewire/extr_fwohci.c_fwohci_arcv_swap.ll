; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_arcv_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_arcv_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.fw_pkt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Unknown tcode %d\0A\00", align 1
@tinfo = common dso_local global %struct.TYPE_6__* null, align 8
@firewire_debug = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"splitted header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_pkt*, i32)* @fwohci_arcv_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwohci_arcv_swap(%struct.fw_pkt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_pkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_pkt* %0, %struct.fw_pkt** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.fw_pkt*, %struct.fw_pkt** %4, align 8
  %12 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @FWOHCI_DMA_READ(i8* %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = bitcast i32* %7 to %struct.fw_pkt*
  store %struct.fw_pkt* %19, %struct.fw_pkt** %6, align 8
  %20 = load %struct.fw_pkt*, %struct.fw_pkt** %6, align 8
  %21 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %27 [
    i32 133, label %25
    i32 128, label %25
    i32 129, label %25
    i32 131, label %25
    i32 137, label %25
    i32 134, label %26
    i32 130, label %26
    i32 136, label %26
    i32 132, label %26
    i32 135, label %26
  ]

25:                                               ; preds = %2, %2, %2, %2, %2
  store i32 12, i32* %8, align 4
  br label %34

26:                                               ; preds = %2, %2, %2, %2, %2
  store i32 16, i32* %8, align 4
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.fw_pkt*, %struct.fw_pkt** %6, align 8
  %29 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %3, align 4
  br label %84

34:                                               ; preds = %26, %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tinfo, align 8
  %36 = load %struct.fw_pkt*, %struct.fw_pkt** %6, align 8
  %37 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %34
  %49 = load i64, i64* @firewire_debug, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %84

56:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %59, 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load %struct.fw_pkt*, %struct.fw_pkt** %4, align 8
  %64 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @FWOHCI_DMA_READ(i8* %70)
  %72 = load %struct.fw_pkt*, %struct.fw_pkt** %4, align 8
  %73 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %71, i8** %78, align 8
  br label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %57

82:                                               ; preds = %57
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %53, %27
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i8* @FWOHCI_DMA_READ(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
