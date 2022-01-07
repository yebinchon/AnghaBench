; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_init_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_init_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@STDOUT_FILENO = common dso_local global i32 0, align 4
@old_settings = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@new_settings = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@TAB3 = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSADRAIN = common dso_local global i32 0, align 4
@VERASE = common dso_local global i64 0, align 8
@ch_erase = common dso_local global i32 0, align 4
@VKILL = common dso_local global i64 0, align 8
@ch_kill = common dso_local global i32 0, align 4
@is_a_terminal = common dso_local global i32 0, align 4
@terminal_init = common dso_local global i32 0, align 4
@smart_terminal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_screen() #0 {
  %1 = load i32, i32* @STDOUT_FILENO, align 4
  %2 = call i32 @tcgetattr(i32 %1, %struct.TYPE_5__* @old_settings)
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %34

4:                                                ; preds = %0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_5__* @new_settings to i8*), i8* align 8 bitcast (%struct.TYPE_5__* @old_settings to i8*), i64 24, i1 false)
  %5 = load i32, i32* @ICANON, align 4
  %6 = load i32, i32* @ECHO, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @new_settings, i32 0, i32 0), align 8
  %10 = and i32 %9, %8
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @new_settings, i32 0, i32 0), align 8
  %11 = load i32, i32* @TAB3, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @new_settings, i32 0, i32 2), align 8
  %14 = and i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @new_settings, i32 0, i32 2), align 8
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @new_settings, i32 0, i32 1), align 8
  %16 = load i64, i64* @VMIN, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 1, i32* %17, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @new_settings, i32 0, i32 1), align 8
  %19 = load i64, i64* @VTIME, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @STDOUT_FILENO, align 4
  %22 = load i32, i32* @TCSADRAIN, align 4
  %23 = call i32 @tcsetattr(i32 %21, i32 %22, %struct.TYPE_5__* @new_settings)
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @old_settings, i32 0, i32 1), align 8
  %25 = load i64, i64* @VERASE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @ch_erase, align 4
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @old_settings, i32 0, i32 1), align 8
  %29 = load i64, i64* @VKILL, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* @ch_kill, align 4
  store i32 1, i32* @is_a_terminal, align 4
  %32 = load i32, i32* @terminal_init, align 4
  %33 = call i32 @putcap(i32 %32)
  br label %34

34:                                               ; preds = %4, %0
  %35 = load i32, i32* @is_a_terminal, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* @smart_terminal, align 4
  br label %38

38:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @putcap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
