; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rate_to_pitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rate_to_pitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@emu_rate_to_pitch.logMagTable = internal global [128 x i32] [i32 0, i32 11772, i32 23454, i32 35046, i32 46550, i32 57967, i32 69299, i32 80546, i32 91711, i32 102794, i32 113796, i32 124718, i32 135563, i32 146330, i32 157021, i32 167637, i32 178179, i32 188648, i32 199045, i32 209371, i32 219627, i32 229814, i32 239933, i32 249985, i32 259970, i32 269890, i32 279745, i32 289537, i32 299265, i32 308932, i32 318537, i32 328081, i32 337566, i32 346991, i32 356358, i32 365667, i32 374920, i32 384116, i32 393257, i32 402343, i32 411374, i32 420352, i32 429277, i32 438150, i32 446970, i32 455740, i32 464459, i32 473129, i32 481748, i32 490319, i32 498842, i32 507317, i32 515745, i32 524126, i32 532461, i32 540750, i32 548994, i32 557193, i32 565348, i32 573460, i32 581528, i32 589553, i32 597536, i32 605478, i32 613377, i32 621236, i32 629054, i32 636831, i32 644569, i32 652268, i32 659928, i32 667549, i32 675132, i32 682677, i32 690184, i32 697655, i32 705089, i32 712486, i32 719847, i32 727173, i32 734464, i32 741719, i32 748940, i32 756127, i32 763279, i32 770398, i32 777484, i32 784537, i32 791556, i32 798544, i32 805499, i32 812423, i32 819315, i32 826175, i32 833005, i32 839804, i32 846572, i32 853311, i32 860019, i32 866698, i32 873348, i32 879968, i32 886560, i32 893123, i32 899658, i32 906164, i32 912643, i32 919094, i32 925518, i32 931914, i32 938284, i32 944627, i32 950943, i32 957233, i32 963497, i32 969736, i32 975948, i32 982136, i32 988298, i32 994435, i32 1000547, i32 1006634, i32 1012698, i32 1018737, i32 1024752, i32 1030743, i32 1036711, i32 1042655], align 16
@emu_rate_to_pitch.logSlopeTable = internal global [128 x i8] c"\\\\[ZZYXXWVVUUTSSRRQQPPOONMMMLLKKJJIIHHGGGFFEEEDDCCCBBBAAA@@@???>>>===<<<;;;;:::99998888777766665555444443333222221111100000/////", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @emu_rate_to_pitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_rate_to_pitch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 %9, 11185
  store i32 %10, i32* %3, align 4
  store i32 31, i32* %4, align 4
  br label %11

11:                                               ; preds = %44, %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, -2147483648
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 15
  %21 = shl i32 %20, 20
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 127, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* @emu_rate_to_pitch.logMagTable, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %21, %27
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 17
  %31 = and i32 127, %30
  %32 = load i32, i32* %3, align 4
  %33 = ashr i32 %32, 24
  %34 = and i32 127, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* @emu_rate_to_pitch.logSlopeTable, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = mul nsw i32 %31, %38
  %40 = add nsw i32 %28, %39
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %14
  %42 = load i32, i32* %3, align 4
  %43 = shl i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  br label %11

47:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %18, %7
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
