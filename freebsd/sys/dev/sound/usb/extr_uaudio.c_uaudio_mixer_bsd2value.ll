; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_bsd2value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_bsd2value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_mixer_node = type { i64, i32, i32, i32 }

@MIX_ON_OFF = common dso_local global i64 0, align 8
@MIX_SELECTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"type=0x%03x val=%d min=%d max=%d val=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uaudio_mixer_node*, i32)* @uaudio_mixer_bsd2value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uaudio_mixer_bsd2value(%struct.uaudio_mixer_node* %0, i32 %1) #0 {
  %3 = alloca %struct.uaudio_mixer_node*, align 8
  %4 = alloca i32, align 4
  store %struct.uaudio_mixer_node* %0, %struct.uaudio_mixer_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %6 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MIX_ON_OFF, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %4, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %16 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MIX_SELECTOR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %23 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %29 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %20
  %33 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %34 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %26
  br label %70

37:                                               ; preds = %14
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %40 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %38, %41
  %43 = sdiv i32 %42, 255
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %46 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %51 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %37
  %55 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %56 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  br label %69

58:                                               ; preds = %37
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %61 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %66 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %36
  br label %71

71:                                               ; preds = %70, %10
  %72 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %73 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %77 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %3, align 8
  %80 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @DPRINTFN(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %75, i32 %78, i32 %81, i32 %82)
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @DPRINTFN(i32, i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
