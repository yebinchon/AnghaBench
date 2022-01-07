; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_allocate_keyboard.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_allocate_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"kbdmux\00", align 1
@sckbdevent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@KBADDKBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @sc_allocate_keyboard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_allocate_keyboard(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to i8*
  %13 = load i32, i32* @sckbdevent, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @kbd_allocate(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1, i8* %12, i32 %13, %struct.TYPE_10__* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %57

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.TYPE_11__* @kbd_get_keyboard(i32 %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = call i32 @kbd_find_keyboard2(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 0)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %52, %18
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %56

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.TYPE_11__* @kbd_get_keyboard(i32 %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = call i64 @KBD_IS_BUSY(%struct.TYPE_11__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %25
  br label %52

36:                                               ; preds = %31
  %37 = call i32 @bzero(%struct.TYPE_12__* %9, i32 8)
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcpy(i32 %39, i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = load i32, i32* @KBADDKBD, align 4
  %50 = ptrtoint %struct.TYPE_12__* %9 to i32
  %51 = call i32 @kbdd_ioctl(%struct.TYPE_11__* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %36, %35
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @kbd_find_keyboard2(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %22

56:                                               ; preds = %22
  br label %65

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = bitcast i32* %60 to i8*
  %62 = load i32, i32* @sckbdevent, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = call i32 @kbd_allocate(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %61, i32 %62, %struct.TYPE_10__* %63)
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %56
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @kbd_allocate(i8*, i32, i8*, i32, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @kbd_get_keyboard(i32) #1

declare dso_local i32 @kbd_find_keyboard2(i8*, i32, i32) #1

declare dso_local i64 @KBD_IS_BUSY(%struct.TYPE_11__*) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @kbdd_ioctl(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
