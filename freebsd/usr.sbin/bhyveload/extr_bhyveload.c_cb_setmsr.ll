; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_setmsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_setmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_REG_LAST = common dso_local global i32 0, align 4
@VM_REG_GUEST_EFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"test_setmsr(%d): not implemented\0A\00", align 1
@USERBOOT_EXIT_QUIT = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@BSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"vm_set_msr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @cb_setmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_setmsr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @VM_REG_LAST, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %13 [
    i32 128, label %11
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @VM_REG_GUEST_EFER, align 4
  store i32 %12, i32* %8, align 4
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @VM_REG_LAST, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @USERBOOT_EXIT_QUIT, align 4
  %22 = call i32 @cb_exit(i32* null, i32 %21)
  br label %23

23:                                               ; preds = %18, %14
  %24 = load i32, i32* @ctx, align 4
  %25 = load i32, i32* @BSP, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vm_set_register(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @USERBOOT_EXIT_QUIT, align 4
  %34 = call i32 @cb_exit(i32* null, i32 %33)
  br label %35

35:                                               ; preds = %31, %23
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @cb_exit(i32*, i32) #1

declare dso_local i32 @vm_set_register(i32, i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
