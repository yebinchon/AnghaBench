; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_disc_optim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_disc_optim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.termios = type { i32 }
%struct.com_s = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CD1400_COR3_SCD34 = common dso_local global i32 0, align 4
@CD1400_SCHR3 = common dso_local global i32 0, align 4
@CD1400_SCHR4 = common dso_local global i32 0, align 4
@CD1400_COR3 = common dso_local global i32 0, align 4
@CD1400_CCR_CMDCORCHG = common dso_local global i32 0, align 4
@CD1400_CCR_COR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.termios*, %struct.com_s*)* @disc_optim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disc_optim(%struct.tty* %0, %struct.termios* %1, %struct.com_s* %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.com_s*, align 8
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  store %struct.com_s* %2, %struct.com_s** %6, align 8
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = call i32 @ttyldoptim(%struct.tty* %8)
  %10 = load %struct.com_s*, %struct.com_s** %6, align 8
  %11 = getelementptr inbounds %struct.com_s, %struct.com_s* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CD1400_COR3_SCD34, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.com_s*, %struct.com_s** %6, align 8
  %19 = getelementptr inbounds %struct.com_s, %struct.com_s* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %3
  %25 = load %struct.com_s*, %struct.com_s** %6, align 8
  %26 = load i32, i32* @CD1400_SCHR3, align 4
  %27 = load %struct.com_s*, %struct.com_s** %6, align 8
  %28 = getelementptr inbounds %struct.com_s, %struct.com_s* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @cd_setreg(%struct.com_s* %25, i32 %26, i32 %32)
  %34 = load %struct.com_s*, %struct.com_s** %6, align 8
  %35 = load i32, i32* @CD1400_SCHR4, align 4
  %36 = load %struct.com_s*, %struct.com_s** %6, align 8
  %37 = getelementptr inbounds %struct.com_s, %struct.com_s* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @cd_setreg(%struct.com_s* %34, i32 %35, i32 %41)
  %43 = load i32, i32* @CD1400_COR3_SCD34, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %24, %3
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.com_s*, %struct.com_s** %6, align 8
  %49 = getelementptr inbounds %struct.com_s, %struct.com_s* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %47, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %46
  %55 = load %struct.com_s*, %struct.com_s** %6, align 8
  %56 = load i32, i32* @CD1400_COR3, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.com_s*, %struct.com_s** %6, align 8
  %59 = getelementptr inbounds %struct.com_s, %struct.com_s* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %57, i32* %61, align 4
  %62 = call i32 @cd_setreg(%struct.com_s* %55, i32 %56, i32 %57)
  %63 = load %struct.com_s*, %struct.com_s** %6, align 8
  %64 = load i32, i32* @CD1400_CCR_CMDCORCHG, align 4
  %65 = load i32, i32* @CD1400_CCR_COR3, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @cd1400_channel_cmd(%struct.com_s* %63, i32 %66)
  br label %68

68:                                               ; preds = %54, %46
  ret void
}

declare dso_local i32 @ttyldoptim(%struct.tty*) #1

declare dso_local i32 @cd_setreg(%struct.com_s*, i32, i32) #1

declare dso_local i32 @cd1400_channel_cmd(%struct.com_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
