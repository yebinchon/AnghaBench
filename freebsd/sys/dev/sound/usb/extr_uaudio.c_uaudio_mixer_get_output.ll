; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_get_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_get_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_terminal_node = type { %struct.TYPE_2__, %struct.uaudio_terminal_node* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uaudio_terminal_node* (%struct.uaudio_terminal_node*, i32)* @uaudio_mixer_get_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uaudio_terminal_node* @uaudio_mixer_get_output(%struct.uaudio_terminal_node* %0, i32 %1) #0 {
  %3 = alloca %struct.uaudio_terminal_node*, align 8
  %4 = alloca %struct.uaudio_terminal_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uaudio_terminal_node*, align 8
  %7 = alloca i32, align 4
  store %struct.uaudio_terminal_node* %0, %struct.uaudio_terminal_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %4, align 8
  %9 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %8, i32 0, i32 1
  %10 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  store %struct.uaudio_terminal_node* %10, %struct.uaudio_terminal_node** %6, align 8
  %11 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %4, align 8
  %12 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %41, %2
  %16 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %4, align 8
  %17 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = srem i32 %25, 8
  %27 = shl i32 1, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %15
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %35, i64 %37
  store %struct.uaudio_terminal_node* %38, %struct.uaudio_terminal_node** %3, align 8
  br label %46

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %15
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %15, label %45

45:                                               ; preds = %41
  store %struct.uaudio_terminal_node* null, %struct.uaudio_terminal_node** %3, align 8
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %3, align 8
  ret %struct.uaudio_terminal_node* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
