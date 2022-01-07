; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_print_keymap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/kbdcontrol/extr_kbdcontrol.c_print_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32* }

@GIO_KEYMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"getting keymap\00", align 1
@GIO_DEADKEYMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [269 x i8] c"#                                                         alt\0A# scan                       cntrl          alt    alt   cntrl lock\0A# code  base   shift  cntrl  shift  alt    shift  cntrl  shift state\0A# ------------------------------------------------------------------\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NUM_DEADKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_keymap() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GIO_KEYMAP, align 4
  %5 = call i64 @ioctl(i32 0, i32 %4, %struct.TYPE_5__* %1)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @GIO_DEADKEYMAP, align 4
  %11 = call i64 @ioctl(i32 0, i32 %10, %struct.TYPE_5__* %2)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @memset(%struct.TYPE_5__* %2, i32 0, i32 24)
  br label %15

15:                                               ; preds = %13, %9
  %16 = call i32 @printf(i8* getelementptr inbounds ([269 x i8], [269 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %31, %15
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load i32, i32* @stdout, align 4
  %24 = load i32, i32* %3, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @print_key_definition_line(i32 %23, i32 %24, i32* %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %17

34:                                               ; preds = %17
  %35 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @NUM_DEADKEYS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load i32, i32* @stdout, align 4
  %42 = load i32, i32* %3, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @print_accent_definition_line(i32 %41, i32 %42, i32* %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %36

52:                                               ; preds = %36
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_key_definition_line(i32, i32, i32*) #1

declare dso_local i32 @print_accent_definition_line(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
