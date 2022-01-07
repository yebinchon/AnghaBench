; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_getcard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_getcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_SUBDEV_0 = common dso_local global i32 0, align 4
@emu_cards = common dso_local global %struct.TYPE_4__* null, align 8
@emu_bad_cards = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_getcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_getcard(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @PCIR_DEVICE, align 4
  %9 = call i64 @pci_read_config(i32 %7, i32 %8, i32 2)
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @PCIR_SUBDEV_0, align 4
  %12 = call i64 @pci_read_config(i32 %10, i32 %11, i32 2)
  store i64 %12, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %50, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_cards, align 8
  %16 = call i32 @nitems(%struct.TYPE_4__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_cards, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %18
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_cards, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %28, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %5, align 4
  br label %53

38:                                               ; preds = %27
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_cards, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 0, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %38
  br label %49

49:                                               ; preds = %48, %18
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %13

53:                                               ; preds = %36, %13
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %89, %53
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_bad_cards, align 8
  %57 = call i32 @nitems(%struct.TYPE_4__* %56)
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_bad_cards, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %60, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %59
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_bad_cards, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %69, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @emu_bad_cards, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 0, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %92

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %54

92:                                               ; preds = %86, %77, %54
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @nitems(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
