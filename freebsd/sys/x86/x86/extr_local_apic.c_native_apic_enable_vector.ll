; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_enable_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_native_apic_enable_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDT_SYSCALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Attempt to overwrite syscall entry\00", align 1
@ioint_handlers = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"No ISR handler for vector %u\00", align 1
@pti = common dso_local global i64 0, align 8
@ioint_pti_handlers = common dso_local global i32** null, align 8
@SDT_APIC = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@GSEL_APIC = common dso_local global i32 0, align 4
@IDT_DTRACE_RET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @native_apic_enable_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_apic_enable_vector(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IDT_SYSCALL, align 4
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = load i32**, i32*** @ioint_handlers, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sdiv i32 %11, 32
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %10, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %17, i8* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i64, i64* @pti, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32**, i32*** @ioint_pti_handlers, align 8
  br label %29

27:                                               ; preds = %2
  %28 = load i32**, i32*** @ioint_handlers, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32** [ %26, %25 ], [ %28, %27 ]
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %30, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @SDT_APIC, align 4
  %37 = load i32, i32* @SEL_KPL, align 4
  %38 = load i32, i32* @GSEL_APIC, align 4
  %39 = call i32 @setidt(i32 %22, i32* %35, i32 %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @setidt(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
