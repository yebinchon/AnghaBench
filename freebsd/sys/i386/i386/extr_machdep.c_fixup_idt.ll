; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fixup_idt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_fixup_idt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate_descriptor = type { i64, i32, i64 }

@NIDT = common dso_local global i32 0, align 4
@idt = common dso_local global %struct.gate_descriptor* null, align 8
@SDT_SYS386IGT = common dso_local global i64 0, align 8
@SDT_SYS386TGT = common dso_local global i64 0, align 8
@start_exceptions = common dso_local global i64 0, align 8
@end_exceptions = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"IDT[%d] type %d off %#x\00", align 1
@setidt_disp = common dso_local global i64 0, align 8
@PMAP_TRM_MIN_ADDRESS = common dso_local global i64 0, align 8
@PMAP_TRM_MAX_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fixup_idt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_idt() #0 {
  %1 = alloca %struct.gate_descriptor*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %75, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NIDT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %78

8:                                                ; preds = %4
  %9 = load %struct.gate_descriptor*, %struct.gate_descriptor** @idt, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %9, i64 %11
  store %struct.gate_descriptor* %12, %struct.gate_descriptor** %1, align 8
  %13 = load %struct.gate_descriptor*, %struct.gate_descriptor** %1, align 8
  %14 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SDT_SYS386IGT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load %struct.gate_descriptor*, %struct.gate_descriptor** %1, align 8
  %20 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SDT_SYS386TGT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %75

25:                                               ; preds = %18, %8
  %26 = load %struct.gate_descriptor*, %struct.gate_descriptor** %1, align 8
  %27 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.gate_descriptor*, %struct.gate_descriptor** %1, align 8
  %30 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 16
  %34 = add nsw i32 %28, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %2, align 8
  %36 = load i64, i64* %2, align 8
  %37 = load i64, i64* @start_exceptions, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @end_exceptions, align 8
  %42 = icmp ult i64 %40, %41
  br label %43

43:                                               ; preds = %39, %25
  %44 = phi i1 [ false, %25 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.gate_descriptor*, %struct.gate_descriptor** %1, align 8
  %48 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %2, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 %45, i8* %51)
  %53 = load i64, i64* @setidt_disp, align 8
  %54 = load i64, i64* %2, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @PMAP_TRM_MIN_ADDRESS, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* @PMAP_TRM_MAX_ADDRESS, align 8
  %62 = icmp ult i64 %60, %61
  br label %63

63:                                               ; preds = %59, %43
  %64 = phi i1 [ false, %43 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @MPASS(i32 %65)
  %67 = load i64, i64* %2, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.gate_descriptor*, %struct.gate_descriptor** %1, align 8
  %70 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %2, align 8
  %72 = lshr i64 %71, 16
  %73 = load %struct.gate_descriptor*, %struct.gate_descriptor** %1, align 8
  %74 = getelementptr inbounds %struct.gate_descriptor, %struct.gate_descriptor* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %63, %24
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %4

78:                                               ; preds = %4
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
