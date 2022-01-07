; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_auchan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_aureal.c_auchan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au_chinfo = type { i64, %struct.au_info* }
%struct.au_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@PCMTRIG_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @auchan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auchan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.au_chinfo*, align 8
  %9 = alloca %struct.au_info*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.au_chinfo*
  store %struct.au_chinfo* %11, %struct.au_chinfo** %8, align 8
  %12 = load %struct.au_chinfo*, %struct.au_chinfo** %8, align 8
  %13 = getelementptr inbounds %struct.au_chinfo, %struct.au_chinfo* %12, i32 0, i32 1
  %14 = load %struct.au_info*, %struct.au_info** %13, align 8
  store %struct.au_info* %14, %struct.au_info** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PCMTRIG_COMMON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.au_chinfo*, %struct.au_chinfo** %8, align 8
  %21 = getelementptr inbounds %struct.au_chinfo, %struct.au_chinfo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCMDIR_PLAY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.au_info*, %struct.au_info** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = call i32 @au_setadb(%struct.au_info* %26, i32 17, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCMTRIG_START, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.au_info*, %struct.au_info** %9, align 8
  %37 = call i32 @au_wr(%struct.au_info* %36, i32 0, i32 63488, i32 0, i32 4)
  %38 = load %struct.au_info*, %struct.au_info** %9, align 8
  %39 = call i32 @au_wr(%struct.au_info* %38, i32 0, i32 63492, i32 0, i32 4)
  %40 = load %struct.au_info*, %struct.au_info** %9, align 8
  %41 = call i32 @au_delroute(%struct.au_info* %40, i32 88)
  %42 = load %struct.au_info*, %struct.au_info** %9, align 8
  %43 = call i32 @au_delroute(%struct.au_info* %42, i32 89)
  br label %44

44:                                               ; preds = %35, %25
  br label %46

45:                                               ; preds = %19
  br label %46

46:                                               ; preds = %45, %44
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @au_setadb(%struct.au_info*, i32, i32) #1

declare dso_local i32 @au_wr(%struct.au_info*, i32, i32, i32, i32) #1

declare dso_local i32 @au_delroute(%struct.au_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
