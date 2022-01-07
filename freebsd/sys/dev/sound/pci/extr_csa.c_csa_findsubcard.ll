; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_findsubcard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_csa.c_csa_findsubcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csa_card = type { i64, i64 }
%struct.card_type = type { %struct.csa_card* }

@nocard = common dso_local global %struct.csa_card zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.csa_card* @csa_findsubcard(i32 %0) #0 {
  %2 = alloca %struct.csa_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.card_type*, align 8
  %6 = alloca %struct.csa_card*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.card_type* @csa_findcard(i32 %7)
  store %struct.card_type* %8, %struct.card_type** %5, align 8
  %9 = load %struct.card_type*, %struct.card_type** %5, align 8
  %10 = icmp eq %struct.card_type* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.csa_card* @nocard, %struct.csa_card** %2, align 8
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.card_type*, %struct.card_type** %5, align 8
  %14 = getelementptr inbounds %struct.card_type, %struct.card_type* %13, i32 0, i32 0
  %15 = load %struct.csa_card*, %struct.csa_card** %14, align 8
  store %struct.csa_card* %15, %struct.csa_card** %6, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %49, %12
  %17 = load %struct.csa_card*, %struct.csa_card** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %17, i64 %19
  %21 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @pci_get_subvendor(i32 %25)
  %27 = load %struct.csa_card*, %struct.csa_card** %6, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %27, i64 %29
  %31 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %26, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = call i64 @pci_get_subdevice(i32 %35)
  %37 = load %struct.csa_card*, %struct.csa_card** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %37, i64 %39
  %41 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.csa_card*, %struct.csa_card** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %45, i64 %47
  store %struct.csa_card* %48, %struct.csa_card** %2, align 8
  br label %57

49:                                               ; preds = %34, %24
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load %struct.csa_card*, %struct.csa_card** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.csa_card, %struct.csa_card* %53, i64 %55
  store %struct.csa_card* %56, %struct.csa_card** %2, align 8
  br label %57

57:                                               ; preds = %52, %44, %11
  %58 = load %struct.csa_card*, %struct.csa_card** %2, align 8
  ret %struct.csa_card* %58
}

declare dso_local %struct.card_type* @csa_findcard(i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
