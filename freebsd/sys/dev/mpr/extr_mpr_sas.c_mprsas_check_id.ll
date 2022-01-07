; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_check_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_sas.c_mprsas_check_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mprsas_softc = type { %struct.mpr_softc* }
%struct.mpr_softc = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mprsas_check_id(%struct.mprsas_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mprsas_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpr_softc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.mprsas_softc* %0, %struct.mprsas_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mprsas_softc*, %struct.mprsas_softc** %4, align 8
  %10 = getelementptr inbounds %struct.mprsas_softc, %struct.mprsas_softc* %9, i32 0, i32 0
  %11 = load %struct.mpr_softc*, %struct.mpr_softc** %10, align 8
  store %struct.mpr_softc* %11, %struct.mpr_softc** %6, align 8
  %12 = load %struct.mpr_softc*, %struct.mpr_softc** %6, align 8
  %13 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8* %15, i8** %7, align 8
  br label %16

16:                                               ; preds = %33, %25, %2
  %17 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %16

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strtol(i8* %27, i32* null, i32 0)
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %35

33:                                               ; preds = %26
  br label %16

34:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
