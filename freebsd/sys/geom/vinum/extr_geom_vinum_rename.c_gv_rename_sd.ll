; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rename.c_gv_rename_sd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_rename.c_gv_rename_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_softc = type { i32 }
%struct.gv_sd = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"gv_rename_sd: NULL s\00", align 1
@GV_ERR_NOTFOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"subdisk name %s already in use\00", align 1
@GV_ERR_NAMETAKEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"proposed sd name '%s' is not a valid sd name\00", align 1
@GV_ERR_INVNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv_rename_sd(%struct.gv_softc* %0, %struct.gv_sd* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gv_softc*, align 8
  %7 = alloca %struct.gv_sd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.gv_softc* %0, %struct.gv_softc** %6, align 8
  store %struct.gv_sd* %1, %struct.gv_sd** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.gv_sd*, %struct.gv_sd** %7, align 8
  %13 = icmp ne %struct.gv_sd* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.gv_softc*, %struct.gv_softc** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @gv_object_type(%struct.gv_softc* %16, i8* %17)
  %19 = load i64, i64* @GV_ERR_NOTFOUND, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @G_VINUM_DEBUG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @GV_ERR_NAMETAKEN, align 4
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 46)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i8* @strchr(i8* %32, i8 signext 46)
  store i8* %33, i8** %11, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %25
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @G_VINUM_DEBUG(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @GV_ERR_INVNAME, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.gv_sd*, %struct.gv_sd** %7, align 8
  %41 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strlcpy(i32 %42, i8* %43, i32 4)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %35, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @gv_object_type(%struct.gv_softc*, i8*) #1

declare dso_local i32 @G_VINUM_DEBUG(i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
