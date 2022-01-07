; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_flash.c_opalflash_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opalflash_softc = type { i32, i32, i32 }
%struct.bio = type { i32, i32, i32, i32, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"opalflash\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @opalflash_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opalflash_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.opalflash_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.opalflash_softc*
  store %struct.opalflash_softc* %7, %struct.opalflash_softc** %3, align 8
  br label %8

8:                                                ; preds = %83, %1
  %9 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %10 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %13 = call i32 @OPALFLASH_LOCK(%struct.opalflash_softc* %12)
  br label %14

14:                                               ; preds = %27, %8
  %15 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %16 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %15, i32 0, i32 0
  %17 = call %struct.bio* @bioq_first(i32* %16)
  store %struct.bio* %17, %struct.bio** %4, align 8
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = icmp eq %struct.bio* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %22 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %23 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %22, i32 0, i32 1
  %24 = load i32, i32* @PRIBIO, align 4
  %25 = call i32 @msleep(%struct.opalflash_softc* %21, i32* %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %26

26:                                               ; preds = %20, %14
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = icmp eq %struct.bio* %28, null
  br i1 %29, label %14, label %30

30:                                               ; preds = %27
  %31 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %32 = getelementptr inbounds %struct.opalflash_softc, %struct.opalflash_softc* %31, i32 0, i32 0
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = call i32 @bioq_remove(i32* %32, %struct.bio* %33)
  %35 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %36 = call i32 @OPALFLASH_UNLOCK(%struct.opalflash_softc* %35)
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %79 [
    i32 130, label %40
    i32 129, label %51
    i32 128, label %65
  ]

40:                                               ; preds = %30
  %41 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %42 = load %struct.bio*, %struct.bio** %4, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bio*, %struct.bio** %4, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @opalflash_erase(%struct.opalflash_softc* %41, i32 %44, i32 %47)
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %83

51:                                               ; preds = %30
  %52 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @opalflash_read(%struct.opalflash_softc* %52, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %83

65:                                               ; preds = %30
  %66 = load %struct.opalflash_softc*, %struct.opalflash_softc** %3, align 8
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.bio*, %struct.bio** %4, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @opalflash_write(%struct.opalflash_softc* %66, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %83

79:                                               ; preds = %30
  %80 = load i32, i32* @EINVAL, align 4
  %81 = load %struct.bio*, %struct.bio** %4, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %65, %51, %40
  %84 = load %struct.bio*, %struct.bio** %4, align 8
  %85 = call i32 @biodone(%struct.bio* %84)
  br label %8
}

declare dso_local i32 @OPALFLASH_LOCK(%struct.opalflash_softc*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local i32 @msleep(%struct.opalflash_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @OPALFLASH_UNLOCK(%struct.opalflash_softc*) #1

declare dso_local i32 @opalflash_erase(%struct.opalflash_softc*, i32, i32) #1

declare dso_local i32 @opalflash_read(%struct.opalflash_softc*, i32, i32, i32) #1

declare dso_local i32 @opalflash_write(%struct.opalflash_softc*, i32, i32, i32) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
