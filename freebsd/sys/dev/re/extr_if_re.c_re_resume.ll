; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@RL_FLAG_MACSLEEP = common dso_local global i32 0, align 4
@RL_MACDBG = common dso_local global i32 0, align 4
@RL_GPIO = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @re_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rl_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.rl_softc* @device_get_softc(i32 %5)
  store %struct.rl_softc* %6, %struct.rl_softc** %3, align 8
  %7 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %8 = call i32 @RL_LOCK(%struct.rl_softc* %7)
  %9 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 2
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %4, align 8
  %12 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RL_FLAG_MACSLEEP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %20 = load i32, i32* @RL_MACDBG, align 4
  %21 = call i32 @CSR_READ_1(%struct.rl_softc* %19, i32 %20)
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 128
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %26 = load i32, i32* @RL_GPIO, align 4
  %27 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %28 = load i32, i32* @RL_GPIO, align 4
  %29 = call i32 @CSR_READ_1(%struct.rl_softc* %27, i32 %28)
  %30 = or i32 %29, 1
  %31 = call i32 @CSR_WRITE_1(%struct.rl_softc* %25, i32 %26, i32 %30)
  br label %32

32:                                               ; preds = %24, %18
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %35 = call i32 @re_clrwol(%struct.rl_softc* %34)
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_UP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %44 = call i32 @re_init_locked(%struct.rl_softc* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %47 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.rl_softc*, %struct.rl_softc** %3, align 8
  %49 = call i32 @RL_UNLOCK(%struct.rl_softc* %48)
  ret i32 0
}

declare dso_local %struct.rl_softc* @device_get_softc(i32) #1

declare dso_local i32 @RL_LOCK(%struct.rl_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @re_clrwol(%struct.rl_softc*) #1

declare dso_local i32 @re_init_locked(%struct.rl_softc*) #1

declare dso_local i32 @RL_UNLOCK(%struct.rl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
