; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_find_outputs_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_find_outputs_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_terminal_node = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.uaudio_search_result = type { i32 }

@UDESCSUB_AC_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_terminal_node*, i32, i32, %struct.uaudio_search_result*)* @uaudio_mixer_find_outputs_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_find_outputs_sub(%struct.uaudio_terminal_node* %0, i32 %1, i32 %2, %struct.uaudio_search_result* %3) #0 {
  %5 = alloca %struct.uaudio_terminal_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uaudio_search_result*, align 8
  %9 = alloca %struct.uaudio_terminal_node*, align 8
  %10 = alloca i32, align 4
  store %struct.uaudio_terminal_node* %0, %struct.uaudio_terminal_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.uaudio_search_result* %3, %struct.uaudio_search_result** %8, align 8
  %11 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %11, i64 %13
  store %struct.uaudio_terminal_node* %14, %struct.uaudio_terminal_node** %9, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %75, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %21, i64 %23
  %25 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %74

29:                                               ; preds = %20
  %30 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %30, i64 %32
  %34 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UDESCSUB_AC_OUTPUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %29
  %42 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %42, i64 %44
  %46 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sdiv i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = srem i32 %54, 8
  %56 = shl i32 1, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %41
  %60 = load i32, i32* %10, align 4
  %61 = srem i32 %60, 8
  %62 = shl i32 1, %61
  %63 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %64 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sdiv i32 %67, 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %62
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %59, %41
  br label %74

74:                                               ; preds = %73, %29, %20, %16
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %16, label %79

79:                                               ; preds = %75
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
