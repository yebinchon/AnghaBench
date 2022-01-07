; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_enquire_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_enquire_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i32 }
%struct.mlx_command = type { i64, i32*, i32, i32, %struct.mlx_softc* }

@MLX_STATE_INTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ENQUIRY failed - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @mlx_enquire_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_enquire_cb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx_softc*, align 8
  %10 = alloca %struct.mlx_command*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.mlx_command*
  store %struct.mlx_command* %12, %struct.mlx_command** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %72

16:                                               ; preds = %4
  %17 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @mlx_setup_dmamap(%struct.mlx_command* %17, i32* %18, i32 %19, i32 %20)
  %22 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %23 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %22, i32 0, i32 4
  %24 = load %struct.mlx_softc*, %struct.mlx_softc** %23, align 8
  store %struct.mlx_softc* %24, %struct.mlx_softc** %9, align 8
  %25 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %26 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %27 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %30 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlx_make_type2(%struct.mlx_command* %25, i32 %28, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %31, i32 0)
  %33 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %34 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %16
  %38 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %39 = call i32 @mlx_start(%struct.mlx_command* %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %72

42:                                               ; preds = %37
  br label %72

43:                                               ; preds = %16
  %44 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %45 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MLX_STATE_INTEN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %52 = call i64 @mlx_wait_command(%struct.mlx_command* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %59

54:                                               ; preds = %43
  %55 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %56 = call i64 @mlx_poll_command(%struct.mlx_command* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50
  br label %72

59:                                               ; preds = %54, %50
  %60 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %61 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %66 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx_command*, %struct.mlx_command** %10, align 8
  %69 = call i32 @mlx_diagnose_command(%struct.mlx_command* %68)
  %70 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %15, %41, %58, %64, %71, %42
  ret void
}

declare dso_local i32 @mlx_setup_dmamap(%struct.mlx_command*, i32*, i32, i32) #1

declare dso_local i32 @mlx_make_type2(%struct.mlx_command*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx_start(%struct.mlx_command*) #1

declare dso_local i64 @mlx_wait_command(%struct.mlx_command*) #1

declare dso_local i64 @mlx_poll_command(%struct.mlx_command*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mlx_diagnose_command(%struct.mlx_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
