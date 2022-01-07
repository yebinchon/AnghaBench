; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_addefxmixer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10kx.c_emu_addefxmixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu_sc_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"_%s\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_emu_mixer_control = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu_sc_info*, i8*, i32, i32)* @emu_addefxmixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_addefxmixer(%struct.emu_sc_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.emu_sc_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  store %struct.emu_sc_info* %0, %struct.emu_sc_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %12 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @emu_rm_gpr_alloc(i32 %13, i32 1)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @emumix_set_fxvol(%struct.emu_sc_info* %15, i32 %16, i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %4
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @snprintf(i8* %22, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %26 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %29 = getelementptr inbounds %struct.emu_sc_info, %struct.emu_sc_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SYSCTL_CHILDREN(i32 %30)
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %34 = load i32, i32* @CTLTYPE_INT, align 4
  %35 = load i32, i32* @CTLFLAG_RW, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.emu_sc_info*, %struct.emu_sc_info** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @sysctl_emu_mixer_control, align 4
  %40 = call i32 @SYSCTL_ADD_PROC(i32 %27, i32 %31, i32 %32, i8* %33, i32 %36, %struct.emu_sc_info* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %21, %4
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @emu_rm_gpr_alloc(i32, i32) #1

declare dso_local i32 @emumix_set_fxvol(%struct.emu_sc_info*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.emu_sc_info*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
