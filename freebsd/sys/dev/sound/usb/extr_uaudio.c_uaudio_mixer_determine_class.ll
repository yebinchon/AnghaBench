; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_determine_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_determine_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_terminal_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.uaudio_mixer_node = type { i32 }

@UAT_UNDEFINED = common dso_local global i32 0, align 4
@UAC_RECORD = common dso_local global i32 0, align 4
@UAC_INPUT = common dso_local global i32 0, align 4
@UAC_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uaudio_terminal_node*, %struct.uaudio_mixer_node*)* @uaudio_mixer_determine_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaudio_mixer_determine_class(%struct.uaudio_terminal_node* %0, %struct.uaudio_mixer_node* %1) #0 {
  %3 = alloca %struct.uaudio_terminal_node*, align 8
  %4 = alloca %struct.uaudio_mixer_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x %struct.uaudio_terminal_node*], align 16
  %7 = alloca [2 x %struct.uaudio_terminal_node*], align 16
  store %struct.uaudio_terminal_node* %0, %struct.uaudio_terminal_node** %3, align 8
  store %struct.uaudio_mixer_node* %1, %struct.uaudio_mixer_node** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %3, align 8
  %9 = call %struct.uaudio_terminal_node* @uaudio_mixer_get_input(%struct.uaudio_terminal_node* %8, i32 0)
  %10 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 0
  store %struct.uaudio_terminal_node* %9, %struct.uaudio_terminal_node** %10, align 16
  %11 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %3, align 8
  %12 = call %struct.uaudio_terminal_node* @uaudio_mixer_get_input(%struct.uaudio_terminal_node* %11, i32 1)
  %13 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 1
  store %struct.uaudio_terminal_node* %12, %struct.uaudio_terminal_node** %13, align 8
  %14 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %3, align 8
  %15 = call %struct.uaudio_terminal_node* @uaudio_mixer_get_output(%struct.uaudio_terminal_node* %14, i32 0)
  %16 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %7, i64 0, i64 0
  store %struct.uaudio_terminal_node* %15, %struct.uaudio_terminal_node** %16, align 16
  %17 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %3, align 8
  %18 = call %struct.uaudio_terminal_node* @uaudio_mixer_get_output(%struct.uaudio_terminal_node* %17, i32 1)
  %19 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %7, i64 0, i64 1
  store %struct.uaudio_terminal_node* %18, %struct.uaudio_terminal_node** %19, align 8
  %20 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %7, i64 0, i64 0
  %21 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %20, align 16
  %22 = icmp ne %struct.uaudio_terminal_node* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %7, i64 0, i64 1
  %25 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %24, align 8
  %26 = icmp ne %struct.uaudio_terminal_node* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %7, i64 0, i64 0
  %29 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %28, align 16
  %30 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @UGETW(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %27, %23, %2
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 65280
  %39 = load i32, i32* @UAT_UNDEFINED, align 4
  %40 = and i32 %39, 65280
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i32, i32* @UAC_RECORD, align 4
  %44 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %45 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 0
  %47 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %46, align 16
  %48 = icmp ne %struct.uaudio_terminal_node* %47, null
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 1
  %51 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %50, align 8
  %52 = icmp ne %struct.uaudio_terminal_node* %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 0
  %55 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %54, align 16
  %56 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @UGETW(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %63

62:                                               ; preds = %49, %42
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %53
  br label %88

64:                                               ; preds = %36
  %65 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 0
  %66 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %65, align 16
  %67 = icmp ne %struct.uaudio_terminal_node* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 1
  %70 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %69, align 8
  %71 = icmp ne %struct.uaudio_terminal_node* %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @UAC_INPUT, align 4
  %74 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %75 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = getelementptr inbounds [2 x %struct.uaudio_terminal_node*], [2 x %struct.uaudio_terminal_node*]* %6, i64 0, i64 0
  %77 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %76, align 16
  %78 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @UGETW(i32 %82)
  store i32 %83, i32* %5, align 4
  br label %88

84:                                               ; preds = %68, %64
  %85 = load i32, i32* @UAC_OUTPUT, align 4
  %86 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %87 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %72, %63
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.uaudio_terminal_node* @uaudio_mixer_get_input(%struct.uaudio_terminal_node*, i32) #1

declare dso_local %struct.uaudio_terminal_node* @uaudio_mixer_get_output(%struct.uaudio_terminal_node*, i32) #1

declare dso_local i32 @UGETW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
