; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_enquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_enquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i64 (%struct.amr_command*)* }
%struct.amr_command = type opaque
%struct.amr_command.0 = type { i32, i64, i32, i32, i8* }

@M_AMR = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@AMR_CMD_PRIORITY = common dso_local global i32 0, align 4
@AMR_CMD_DATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.amr_softc*, i64, i32, i32, i32, i32*)* @amr_enquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @amr_enquiry(%struct.amr_softc* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.amr_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.amr_command.0*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = call i32 @debug_called(i32 1)
  store i32 1, i32* %16, align 4
  store i8* null, i8** %14, align 8
  %18 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  %19 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  %22 = call %struct.amr_command.0* @amr_alloccmd(%struct.amr_softc* %21)
  store %struct.amr_command.0* %22, %struct.amr_command.0** %13, align 8
  %23 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  %24 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %23, i32 0, i32 0
  %25 = call i32 @mtx_unlock(i32* %24)
  %26 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %27 = icmp eq %struct.amr_command.0* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %80

29:                                               ; preds = %6
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @M_AMR, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @malloc(i64 %30, i32 %31, i32 %34)
  store i8* %35, i8** %14, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %80

38:                                               ; preds = %29
  %39 = load i32, i32* @AMR_CMD_PRIORITY, align 4
  %40 = load i32, i32* @AMR_CMD_DATAIN, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %43 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %48 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %51 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %53 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %52, i32 0, i32 3
  store i32* %53, i32** %15, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 0, i32* %63, align 4
  %64 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  %65 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %64, i32 0, i32 1
  %66 = load i64 (%struct.amr_command*)*, i64 (%struct.amr_command*)** %65, align 8
  %67 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %68 = bitcast %struct.amr_command.0* %67 to %struct.amr_command*
  %69 = call i64 %66(%struct.amr_command* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %38
  br label %80

72:                                               ; preds = %38
  %73 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %74 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %16, align 4
  %76 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %77 = getelementptr inbounds %struct.amr_command.0, %struct.amr_command.0* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %71, %37, %28
  %81 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  %82 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %81, i32 0, i32 0
  %83 = call i32 @mtx_lock(i32* %82)
  %84 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %85 = icmp ne %struct.amr_command.0* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.amr_command.0*, %struct.amr_command.0** %13, align 8
  %88 = call i32 @amr_releasecmd(%struct.amr_command.0* %87)
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.amr_softc*, %struct.amr_softc** %7, align 8
  %91 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %90, i32 0, i32 0
  %92 = call i32 @mtx_unlock(i32* %91)
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* @M_AMR, align 4
  %101 = call i32 @free(i8* %99, i32 %100)
  store i8* null, i8** %14, align 8
  br label %102

102:                                              ; preds = %98, %95, %89
  %103 = load i8*, i8** %14, align 8
  ret i8* %103
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.amr_command.0* @amr_alloccmd(%struct.amr_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @amr_releasecmd(%struct.amr_command.0*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
