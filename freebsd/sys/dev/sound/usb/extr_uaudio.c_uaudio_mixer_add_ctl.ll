; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_add_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_add_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, i32 }
%struct.uaudio_mixer_node = type { i64, i64, i32, i32, i32, i64, i32, i32, i32* }

@UAC_NCLASSES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"adding %s.%d\0A\00", align 1
@uac_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"adding %d\0A\00", align 1
@MIX_ON_OFF = common dso_local global i64 0, align 8
@MIX_SELECTOR = common dso_local global i64 0, align 8
@GET_MIN = common dso_local global i32 0, align 4
@GET_MAX = common dso_local global i32 0, align 4
@GET_RES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Resolution = %d\0A\00", align 1
@uaudio_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*, %struct.uaudio_mixer_node*)* @uaudio_mixer_add_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_add_ctl(%struct.uaudio_softc* %0, %struct.uaudio_mixer_node* %1) #0 {
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca %struct.uaudio_mixer_node*, align 8
  %5 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %3, align 8
  store %struct.uaudio_mixer_node* %1, %struct.uaudio_mixer_node** %4, align 8
  %6 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %7 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UAC_NCLASSES, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32*, i32** @uac_names, align 8
  %13 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %14 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %19 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  br label %27

22:                                               ; preds = %2
  %23 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %24 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %11
  %28 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %29 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MIX_ON_OFF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %35 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %37 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  br label %120

38:                                               ; preds = %27
  %39 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %40 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MIX_SELECTOR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %119

45:                                               ; preds = %38
  %46 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %47 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %50 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GET_MIN, align 4
  %53 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %54 = call i8* @uaudio_mixer_get(i32 %48, i32 %51, i32 %52, %struct.uaudio_mixer_node* %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %57 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %59 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %62 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GET_MAX, align 4
  %65 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %66 = call i8* @uaudio_mixer_get(i32 %60, i32 %63, i32 %64, %struct.uaudio_mixer_node* %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %69 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %71 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %74 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %45
  %78 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %79 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  %81 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %82 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %85 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %88 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %77, %45
  %90 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %91 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %94 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %92, %95
  %97 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %98 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %100 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %89
  %104 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %105 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %104, i32 0, i32 4
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %89
  %107 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %108 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %111 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @GET_RES, align 4
  %114 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %115 = call i8* @uaudio_mixer_get(i32 %109, i32 %112, i32 %113, %struct.uaudio_mixer_node* %114)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %106, %44
  br label %120

120:                                              ; preds = %119, %33
  %121 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %122 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %4, align 8
  %123 = call i32 @uaudio_mixer_add_ctl_sub(%struct.uaudio_softc* %121, %struct.uaudio_mixer_node* %122)
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i8* @uaudio_mixer_get(i32, i32, i32, %struct.uaudio_mixer_node*) #1

declare dso_local i32 @uaudio_mixer_add_ctl_sub(%struct.uaudio_softc*, %struct.uaudio_mixer_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
