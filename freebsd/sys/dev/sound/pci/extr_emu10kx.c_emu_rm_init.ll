; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_rm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, %struct.emu_rm* }
%struct.emu_rm = type { i32, i32*, i32, i32, i64, %struct.emu_sc_info* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gpr alloc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@EMU_MAX_GPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emu_rm_init(%struct.emu_sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emu_sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.emu_rm*, align 8
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %3, align 8
  %7 = load i32, i32* @M_DEVBUF, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call %struct.emu_rm* @malloc(i32 40, i32 %7, i32 %10)
  store %struct.emu_rm* %11, %struct.emu_rm** %6, align 8
  %12 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %13 = icmp eq %struct.emu_rm* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %18 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %19 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %18, i32 0, i32 2
  store %struct.emu_rm* %17, %struct.emu_rm** %19, align 8
  %20 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %21 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %22 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %21, i32 0, i32 5
  store %struct.emu_sc_info* %20, %struct.emu_sc_info** %22, align 8
  %23 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %24 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %27 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %29 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %28, i32 0, i32 3
  %30 = load %struct.emu_sc_info*, %struct.emu_sc_info** %3, align 8
  %31 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_get_nameunit(i32 %32)
  %34 = load i32, i32* @MTX_DEF, align 4
  %35 = call i32 @mtx_init(i32* %29, i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @EMU_MAX_GPR, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %16
  %40 = load i32, i32* %5, align 4
  br label %43

41:                                               ; preds = %16
  %42 = load i32, i32* @EMU_MAX_GPR, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %46 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %60, %43
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %50 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %55 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %47

63:                                               ; preds = %47
  %64 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %65 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 1, i32* %67, align 4
  %68 = load %struct.emu_rm*, %struct.emu_rm** %6, align 8
  %69 = getelementptr inbounds %struct.emu_rm, %struct.emu_rm* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %63, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.emu_rm* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
