; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_register_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_register_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { %struct.uaudio_mixer_node* }
%struct.uaudio_mixer_node = type { i32, i8*, i32, i32, i32, i32*, %struct.uaudio_mixer_node* }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s_%d_%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Mixer control nodes\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@uaudio_mixer_sysctl_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Current value\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Minimum value\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Maximum value\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Description\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_softc*, i32)* @uaudio_mixer_register_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_register_sysctl(%struct.uaudio_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uaudio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uaudio_mixer_node*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_sysctl_ctx(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %13)
  %15 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLFLAG_RD, align 4
  %18 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32 %12, i32 %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %18, %struct.sysctl_oid** %6, align 8
  %19 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %20 = icmp eq %struct.sysctl_oid* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %127

22:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %23 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %24 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %23, i32 0, i32 0
  %25 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %24, align 8
  store %struct.uaudio_mixer_node* %25, %struct.uaudio_mixer_node** %5, align 8
  br label %26

26:                                               ; preds = %121, %22
  %27 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %28 = icmp ne %struct.uaudio_mixer_node* %27, null
  br i1 %28, label %29, label %127

29:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %117, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %33 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %120

36:                                               ; preds = %30
  %37 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %38 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %43 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %44 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %42, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %45, i32 %46, i32 %47)
  br label %56

49:                                               ; preds = %36
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %51 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %52 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i8*, i32, i8*, i8*, i32, ...) @snprintf(i8* %50, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %41
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @device_get_sysctl_ctx(i32 %57)
  %59 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %60 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %59)
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %63 = load i32, i32* @CTLFLAG_RD, align 4
  %64 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32 %58, i32 %60, i32 %61, i8* %62, i32 %63, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %64, %struct.sysctl_oid** %7, align 8
  %65 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %66 = icmp eq %struct.sysctl_oid* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %117

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @device_get_sysctl_ctx(i32 %69)
  %71 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %72 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %71)
  %73 = load i32, i32* @OID_AUTO, align 4
  %74 = load i32, i32* @CTLTYPE_INT, align 4
  %75 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.uaudio_softc*, %struct.uaudio_softc** %3, align 8
  %78 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %79 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @uaudio_mixer_sysctl_handler, align 4
  %86 = call i32 @SYSCTL_ADD_PROC(i32 %70, i32 %72, i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %76, %struct.uaudio_softc* %77, i32 %84, i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @device_get_sysctl_ctx(i32 %87)
  %89 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %90 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %89)
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %94 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @SYSCTL_ADD_INT(i32 %88, i32 %90, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %92, i32 0, i32 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @device_get_sysctl_ctx(i32 %97)
  %99 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %100 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %99)
  %101 = load i32, i32* @OID_AUTO, align 4
  %102 = load i32, i32* @CTLFLAG_RD, align 4
  %103 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %104 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SYSCTL_ADD_INT(i32 %98, i32 %100, i32 %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %102, i32 0, i32 %105, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @device_get_sysctl_ctx(i32 %107)
  %109 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %110 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %109)
  %111 = load i32, i32* @OID_AUTO, align 4
  %112 = load i32, i32* @CTLFLAG_RD, align 4
  %113 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %114 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @SYSCTL_ADD_STRING(i32 %108, i32 %110, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %112, i32 %115, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %117

117:                                              ; preds = %68, %67
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %30

120:                                              ; preds = %30
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %5, align 8
  %123 = getelementptr inbounds %struct.uaudio_mixer_node, %struct.uaudio_mixer_node* %122, i32 0, i32 6
  %124 = load %struct.uaudio_mixer_node*, %struct.uaudio_mixer_node** %123, align 8
  store %struct.uaudio_mixer_node* %124, %struct.uaudio_mixer_node** %5, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %26

127:                                              ; preds = %21, %26
  ret void
}

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, %struct.uaudio_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32, i32, i32, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
