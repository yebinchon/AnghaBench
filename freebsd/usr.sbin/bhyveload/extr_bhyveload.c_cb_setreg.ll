; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_setreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyveload/extr_bhyveload.c_cb_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_REG_LAST = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@rsp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"test_setreg(%d): not implemented\0A\00", align 1
@USERBOOT_EXIT_QUIT = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@BSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"vm_set_register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @cb_setreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_setreg(i8* %0, i32 %1, i32 %2) #0 {
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
  switch i32 %10, label %14 [
    i32 4, label %11
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* @rsp, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @VM_REG_LAST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @USERBOOT_EXIT_QUIT, align 4
  %23 = call i32 @cb_exit(i32* null, i32 %22)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load i32, i32* @ctx, align 4
  %26 = load i32, i32* @BSP, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @vm_set_register(i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @USERBOOT_EXIT_QUIT, align 4
  %35 = call i32 @cb_exit(i32* null, i32 %34)
  br label %36

36:                                               ; preds = %32, %24
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
